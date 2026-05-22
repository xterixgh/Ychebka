using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public static class SpecNeedHelper
{
    public class NeedRow
    {
        public string ItemType = "";
        public int ItemId;
        public string Article = "";
        public string Name = "";
        public decimal RequiredQty;
        public decimal StockQty;
        public decimal MissingQty;
        public decimal UnitPrice;
        public decimal TotalCost;
        public int DeliveryDays;
        public string WarehouseName = "";
    }

    public static void CollectNeeds(
        AppDbContext db,
        int productId,
        decimal quantity,
        Dictionary<int, decimal> materialNeed,
        Dictionary<int, decimal> componentNeed)
    {
        var specMaterials = db.SpecMaterials.Where(s => s.IdProduct == productId).ToList();
        foreach (var spec in specMaterials)
        {
            var needQty = quantity * spec.Quantity;
            if (materialNeed.ContainsKey(spec.IdMaterial))
                materialNeed[spec.IdMaterial] = materialNeed[spec.IdMaterial] + needQty;
            else
                materialNeed[spec.IdMaterial] = needQty;
        }

        var specComponents = db.SpecComponents.Where(s => s.IdProduct == productId).ToList();
        foreach (var spec in specComponents)
        {
            var needQty = quantity * spec.Quantity;
            if (componentNeed.ContainsKey(spec.IdComponent))
                componentNeed[spec.IdComponent] = componentNeed[spec.IdComponent] + needQty;
            else
                componentNeed[spec.IdComponent] = needQty;
        }

        var specUnits = db.SpecAssemblyUnits.Where(s => s.IdProduct == productId).ToList();
        foreach (var spec in specUnits)
        {
            var childQty = quantity * spec.Quantity;
            CollectNeeds(db, spec.IdChildProduct, childQty, materialNeed, componentNeed);
        }
    }

    public static List<NeedRow> BuildNeedRows(AppDbContext db, int productId, decimal quantity)
    {
        var materialNeed = new Dictionary<int, decimal>();
        var componentNeed = new Dictionary<int, decimal>();
        CollectNeeds(db, productId, quantity, materialNeed, componentNeed);

        var rows = new List<NeedRow>();

        foreach (var item in materialNeed)
        {
            var material = db.Materials.First(m => m.IdMaterial == item.Key);
            var supplier = material.IdSupplier == null
                ? null
                : db.Suppliers.FirstOrDefault(s => s.IdSupplier == material.IdSupplier);

            var missing = item.Value - material.QuantityInStock;
            if (missing < 0)
                missing = 0;

            var row = new NeedRow();
            row.ItemType = "Материал";
            row.ItemId = material.IdMaterial;
            row.Article = material.Article;
            row.Name = material.MaterialName;
            row.RequiredQty = item.Value;
            row.StockQty = material.QuantityInStock;
            row.MissingQty = missing;
            row.UnitPrice = material.PurchasePrice;
            row.TotalCost = item.Value * material.PurchasePrice;
            row.DeliveryDays = supplier == null ? 0 : supplier.DeliveryDays;
            row.WarehouseName = supplier == null ? "Без склада" : supplier.SupplierName;
            rows.Add(row);
        }

        foreach (var item in componentNeed)
        {
            var component = db.Components.First(c => c.IdComponent == item.Key);
            var supplier = component.IdSupplier == null
                ? null
                : db.Suppliers.FirstOrDefault(s => s.IdSupplier == component.IdSupplier);

            var missing = item.Value - component.QuantityInStock;
            if (missing < 0)
                missing = 0;

            var row = new NeedRow();
            row.ItemType = "Комплектующее";
            row.ItemId = component.IdComponent;
            row.Article = component.Article;
            row.Name = component.ComponentName;
            row.RequiredQty = item.Value;
            row.StockQty = component.QuantityInStock;
            row.MissingQty = missing;
            row.UnitPrice = component.PurchasePrice;
            row.TotalCost = item.Value * component.PurchasePrice;
            row.DeliveryDays = supplier == null ? 0 : supplier.DeliveryDays;
            row.WarehouseName = supplier == null ? "Без склада" : supplier.SupplierName;
            rows.Add(row);
        }

        return rows;
    }
}

public static class ProductionScheduler
{
    public class ScheduleItem
    {
        public string ProductName = "";
        public string OperationName = "";
        public string EquipmentMarking = "";
        public int StartMin;
        public int DurationMin;
        public int EndMin;
    }

    private class ProductNode
    {
        public int IdProduct;
        public string ProductName = "";
        public decimal Quantity;
        public List<int> ChildIds = new List<int>();
    }

    public static List<ScheduleItem> Build(AppDbContext db, int rootProductId, decimal rootQty)
    {
        var nodes = new Dictionary<int, ProductNode>();
        BuildNodes(db, rootProductId, rootQty, nodes);

        var completionTime = new Dictionary<int, int>();
        foreach (var node in nodes.Values)
        {
            if (node.ChildIds.Count == 0)
                completionTime[node.IdProduct] = 0;
        }

        var equipmentFree = new Dictionary<int, int>();
        var equipmentByType = db.Equipment
            .Include(e => e.IdEquipmentTypeNavigation)
            .ToList()
            .GroupBy(e => e.IdEquipmentType)
            .ToDictionary(g => g.Key, g => g.ToList());

        foreach (var eq in db.Equipment)
            equipmentFree[eq.IdEquipment] = 0;

        var schedule = new List<ScheduleItem>();
        var orderedNodes = nodes.Values
            .OrderByDescending(n => GetTotalMinutes(db, n.IdProduct) * (int)n.Quantity)
            .ToList();

        foreach (var node in orderedNodes)
        {
            var readyTime = 0;
            foreach (var childId in node.ChildIds)
            {
                if (completionTime.ContainsKey(childId) && completionTime[childId] > readyTime)
                    readyTime = completionTime[childId];
            }

            var productEnd = ScheduleProduct(db, node, readyTime, equipmentByType, equipmentFree, schedule);
            completionTime[node.IdProduct] = productEnd;
        }

        return schedule.OrderBy(s => s.StartMin).ToList();
    }

    private static void BuildNodes(AppDbContext db, int productId, decimal qty, Dictionary<int, ProductNode> nodes)
    {
        if (!nodes.ContainsKey(productId))
        {
            var product = db.Products.First(p => p.IdProduct == productId);
            var node = new ProductNode();
            node.IdProduct = productId;
            node.ProductName = product.ProductName;
            node.Quantity = qty;
            nodes[productId] = node;
        }
        else
        {
            nodes[productId].Quantity = nodes[productId].Quantity + qty;
            return;
        }

        var children = db.SpecAssemblyUnits.Where(s => s.IdProduct == productId).ToList();
        foreach (var child in children)
        {
            nodes[productId].ChildIds.Add(child.IdChildProduct);
            BuildNodes(db, child.IdChildProduct, qty * child.Quantity, nodes);
        }
    }

    private static int GetTotalMinutes(AppDbContext db, int productId)
    {
        return db.SpecOperations.Where(o => o.IdProduct == productId).Sum(o => o.OperationMinutes);
    }

    private static int ScheduleProduct(
        AppDbContext db,
        ProductNode node,
        int readyTime,
        Dictionary<int, List<Equipment>> equipmentByType,
        Dictionary<int, int> equipmentFree,
        List<ScheduleItem> schedule)
    {
        var ops = db.SpecOperations
            .Where(o => o.IdProduct == node.IdProduct)
            .OrderBy(o => o.SequenceNo)
            .ToList();

        var currentStart = readyTime;
        foreach (var op in ops)
        {
            var duration = (int)(op.OperationMinutes * node.Quantity);
            if (duration <= 0)
                duration = 1;

            Equipment? selected = null;
            var bestStart = int.MaxValue;

            if (op.IdEquipmentType != null && equipmentByType.ContainsKey(op.IdEquipmentType.Value))
            {
                foreach (var eq in equipmentByType[op.IdEquipmentType.Value])
                {
                    var start = equipmentFree[eq.IdEquipment];
                    if (start < readyTime)
                        start = readyTime;
                    if (start < bestStart)
                    {
                        bestStart = start;
                        selected = eq;
                    }
                }
            }

            if (selected == null)
            {
                selected = db.Equipment.FirstOrDefault();
                bestStart = readyTime;
            }

            if (selected == null)
                continue;

            var item = new ScheduleItem();
            item.ProductName = node.ProductName;
            item.OperationName = op.OperationName;
            item.EquipmentMarking = selected.Marking;
            item.StartMin = bestStart;
            item.DurationMin = duration;
            item.EndMin = bestStart + duration;
            schedule.Add(item);

            equipmentFree[selected.IdEquipment] = item.EndMin;
            if (item.EndMin > currentStart)
                currentStart = item.EndMin;
        }

        return currentStart;
    }
}
