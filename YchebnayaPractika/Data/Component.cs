using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class Component
{
    public int IdComponent { get; set; }

    public string Article { get; set; } = null!;

    public string ComponentName { get; set; } = null!;

    public string UnitName { get; set; } = null!;

    public decimal QuantityInStock { get; set; }

    public int? IdSupplier { get; set; }

    public byte[]? Image { get; set; }

    public string ComponentType { get; set; } = null!;

    public decimal PurchasePrice { get; set; }

    public decimal WeightValue { get; set; }

    public virtual Supplier? IdSupplierNavigation { get; set; }

    public virtual ICollection<SpecComponent> SpecComponents { get; set; } = new List<SpecComponent>();
}
