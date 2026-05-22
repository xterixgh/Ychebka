using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Media;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class OrderPlanningControl : UserControl
{
    private int orderId;
    private Order? order;
    private List<SpecNeedHelper.NeedRow> needRows = new List<SpecNeedHelper.NeedRow>();
    private List<ProductionScheduler.ScheduleItem> schedule = new List<ProductionScheduler.ScheduleItem>();
    private string reportText = "";

    public OrderPlanningControl(int orderId)
    {
        this.orderId = orderId;
        InitializeComponent();
        InitData();
    }

    private async void InitData()
    {
        order = await App.DbContext.Orders
            .Include(o => o.IdProductNavigation)
            .FirstOrDefaultAsync(o => o.IdOrder == orderId);

        if (order == null)
        {
            MessageTextBlock.Text = "Заказ не найден.";
            return;
        }

        TitleTextBlock.Text = "Расчет заказа: " + order.OrderNumber;
        await RefreshData();
    }

    private async Task RefreshData()
    {
        if (order == null)
            return;

        needRows = SpecNeedHelper.BuildNeedRows(App.DbContext, order.IdProduct, order.OrderQuantity);
        schedule = ProductionScheduler.Build(App.DbContext, order.IdProduct, order.OrderQuantity);

        NeedsListBox.Items.Clear();
        foreach (var row in needRows)
        {
            NeedsListBox.Items.Add(
                row.ItemType + " | " + row.Article + " | " + row.Name +
                " | нужно: " + row.RequiredQty +
                " | на складе: " + row.StockQty +
                " | не хватает: " + row.MissingQty +
                " | цена: " + row.UnitPrice +
                " | сумма: " + row.TotalCost +
                " | доставка: " + row.DeliveryDays + " дн.");
        }

        var totalCost = needRows.Sum(r => r.TotalCost);
        var deliveryDays = 0;
        foreach (var row in needRows)
        {
            if (row.MissingQty > 0 && row.DeliveryDays > deliveryDays)
                deliveryDays = row.DeliveryDays;
        }

        var productionMinutes = 0;
        if (schedule.Count > 0)
            productionMinutes = schedule.Max(s => s.EndMin);

        var productionDays = productionMinutes / (60 * 8);
        if (productionMinutes % (60 * 8) > 0)
            productionDays = productionDays + 1;

        CostTextBlock.Text = "Общая себестоимость: " + totalCost;
        DeliveryTextBlock.Text = "Мин. время доставки недостающего: " + deliveryDays + " дн.";
        ProductionTextBlock.Text = "Мин. время производства: " + productionMinutes + " мин. (~" + productionDays + " раб. дн.)";
        TotalTextBlock.Text = "Итого мин. срок (доставка + производство): " + (deliveryDays + productionDays) + " дн.";

        DrawGantt();
        reportText = BuildReportText(totalCost, deliveryDays, productionMinutes, productionDays);
    }

    private void DrawGantt()
    {
        GanttCanvas.Children.Clear();
        if (schedule.Count == 0)
            return;

        var equipmentList = new List<string>();
        foreach (var item in schedule)
        {
            if (!equipmentList.Contains(item.EquipmentMarking))
                equipmentList.Add(item.EquipmentMarking);
        }

        var rowHeight = 40;
        var maxEnd = schedule.Max(s => s.EndMin);

        for (var row = 0; row < equipmentList.Count; row++)
        {
            var eq = equipmentList[row];
            var label = new TextBlock();
            label.Text = eq;
            Canvas.SetLeft(label, 0);
            Canvas.SetTop(label, row * rowHeight + 8);
            GanttCanvas.Children.Add(label);

            foreach (var item in schedule)
            {
                if (item.EquipmentMarking != eq)
                    continue;

                var bar = new Border();
                bar.Background = Brushes.SteelBlue;
                bar.Width = item.DurationMin * 2;
                bar.Height = 24;
                ToolTip.SetTip(bar, item.ProductName + " | " + item.OperationName);
                Canvas.SetLeft(bar, 120 + item.StartMin * 2);
                Canvas.SetTop(bar, row * rowHeight + 4);
                GanttCanvas.Children.Add(bar);
            }
        }

        GanttCanvas.Height = equipmentList.Count * rowHeight + 20;
        GanttCanvas.Width = 120 + maxEnd * 2 + 40;
    }

    private string BuildReportText(decimal totalCost, int deliveryDays, int productionMinutes, int productionDays)
    {
        var sb = new StringBuilder();
        sb.AppendLine(TitleTextBlock.Text);
        sb.AppendLine();
        foreach (var row in needRows)
        {
            sb.AppendLine(row.ItemType + " | " + row.Article + " | " + row.Name +
                         " | нужно " + row.RequiredQty +
                         " | склад " + row.StockQty +
                         " | не хватает " + row.MissingQty);
        }
        sb.AppendLine();
        sb.AppendLine("Общая себестоимость: " + totalCost);
        sb.AppendLine("Мин. доставка: " + deliveryDays + " дн.");
        sb.AppendLine("Мин. производство: " + productionMinutes + " мин.");
        sb.AppendLine("Итого: " + (deliveryDays + productionDays) + " дн.");
        sb.AppendLine();
        sb.AppendLine("Гantt:");
        foreach (var item in schedule)
            sb.AppendLine(item.EquipmentMarking + " | " + item.ProductName + " | " + item.OperationName + " | " + item.StartMin + "-" + item.EndMin + " мин");
        return sb.ToString();
    }

    private async void RefreshClick(object? sender, RoutedEventArgs e)
    {
        await RefreshData();
    }

    private void PrintClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new PrintReportControl("Расчет заказа", reportText, () => new OrderPlanningControl(orderId));
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new OrdersControl();
    }
}
