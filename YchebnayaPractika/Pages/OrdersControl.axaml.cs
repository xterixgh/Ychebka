using Avalonia.Controls;
using Avalonia.Interactivity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using YchebnayaPractika.Data;
using YchebnayaPractika.Services;

namespace YchebnayaPractika.Pages;

public partial class OrdersControl : UserControl
{
    private List<Order> orders = new List<Order>();
    private bool isLoading;

    public OrdersControl()
    {
        InitializeComponent();
        InitData();
    }

    private async void InitData()
    {
        FilterComboBox.Items.Clear();
        FilterComboBox.Items.Add("Все");
        FilterComboBox.Items.Add("Новые");
        FilterComboBox.Items.Add("Текущие");
        FilterComboBox.Items.Add("Выполненные");
        FilterComboBox.Items.Add("Отклоненные");
        FilterComboBox.SelectedIndex = 0;

        SetupButtons();
        await LoadOrders();
    }

    private void SetupButtons()
    {
        var role = SessionData.CurrentUser?.IdUserRoleNavigation.RoleName ?? "";

        AddOrderButton.IsVisible = role == "Заказчик" || role == "Менеджер";
        HistoryListBox.IsVisible = role == "Директор" || role == "Менеджер";
    }

    private async Task LoadOrders()
    {
        if (isLoading) return;
        isLoading = true;

        try
        {
            var role = SessionData.CurrentUser?.IdUserRoleNavigation.RoleName ?? "";
            var userId = SessionData.CurrentUser?.IdUserAccount ?? 0;

            var query = App.DbContext.Orders
                .Include(o => o.IdCustomerUserNavigation)
                .Include(o => o.IdManagerUserNavigation)
                .Include(o => o.IdProductNavigation)
                .AsQueryable();

            if (role == "Заказчик")
                query = query.Where(o => o.IdCustomerUser == userId);
            else if (role == "Менеджер")
                query = query.Where(o => o.Status == "Новый" || o.IdManagerUser == userId);
            else if (role == "Конструктор")
                query = query.Where(o => o.Status == "Составление спецификации");
            else if (role == "Мастер")
                query = query.Where(o => o.Status == "Производство" || o.Status == "Контроль");

            var filter = FilterComboBox.SelectedItem?.ToString() ?? "Все";
            if (filter == "Новые")
            {
                query = query.Where(o =>
                    o.Status == "Новый" ||
                    o.Status == "Составление спецификации" ||
                    o.Status == "Подтверждение");
            }
            else if (filter == "Текущие")
            {
                query = query.Where(o =>
                    o.Status == "Закупка" ||
                    o.Status == "Производство" ||
                    o.Status == "Контроль");
            }
            else if (filter == "Выполненные")
            {
                query = query.Where(o => o.Status == "Готов" || o.Status == "Закрыт");
            }
            else if (filter == "Отклоненные")
            {
                query = query.Where(o => o.Status == "Отклонен" || o.Status == "Отменен");
            }

            orders = await query
                .OrderByDescending(o => o.OrderDate)
                .ThenByDescending(o => o.IdOrder)
                .ToListAsync();

            OrdersListBox.Items.Clear();
            foreach (var order in orders)
            {
                var customerName = order.IdCustomerUserNavigation.FullName ?? order.IdCustomerUserNavigation.Login;
                OrdersListBox.Items.Add($"{order.OrderNumber} | {order.OrderDate:dd.MM.yyyy} | {order.Status} | {order.OrderName} | {customerName}");
            }

            StatsTextBlock.Text = $"Заказов: {orders.Count}";
            HideActionButtons();
        }
        finally
        {
            isLoading = false;
        }
    }

    private void HideActionButtons()
    {
        AcceptButton.IsVisible = false;
        RejectButton.IsVisible = false;
        ToPurchaseButton.IsVisible = false;
        ToProductionButton.IsVisible = false;
        ToConfirmButton.IsVisible = false;
        ToControlButton.IsVisible = false;
        ToReadyButton.IsVisible = false;
        ToClosedButton.IsVisible = false;
        CancelOrderButton.IsVisible = false;
        DeleteOrderButton.IsVisible = false;
        EditOrderButton.IsVisible = false;
        QualityButton.IsVisible = false;
        PlanOrderButton.IsVisible = false;
        UpdateActionsPanelVisibility();
    }

    private void UpdateActionsPanelVisibility()
    {
        ActionsBorder.IsVisible =
            AcceptButton.IsVisible ||
            RejectButton.IsVisible ||
            ToPurchaseButton.IsVisible ||
            ToProductionButton.IsVisible ||
            ToConfirmButton.IsVisible ||
            ToControlButton.IsVisible ||
            ToReadyButton.IsVisible ||
            ToClosedButton.IsVisible ||
            CancelOrderButton.IsVisible ||
            DeleteOrderButton.IsVisible ||
            EditOrderButton.IsVisible ||
            QualityButton.IsVisible ||
            PlanOrderButton.IsVisible;
    }

    private async void OrderSelectionChanged(object? sender, SelectionChangedEventArgs e)
    {
        HideActionButtons();
        HistoryListBox.Items.Clear();

        if (OrdersListBox.SelectedIndex < 0 || OrdersListBox.SelectedIndex >= orders.Count)
            return;

        var order = orders[OrdersListBox.SelectedIndex];

        DetailNumberTextBlock.Text = "Номер: " + order.OrderNumber;
        DetailDateTextBlock.Text = "Дата: " + order.OrderDate.ToString("dd.MM.yyyy");
        DetailNameTextBlock.Text = "Наименование: " + order.OrderName;
        DetailStatusTextBlock.Text = "Статус: " + order.Status;
        DetailCostTextBlock.Text = "Стоимость: " + (order.OrderCost == null ? "-" : order.OrderCost.ToString());
        DetailCustomerTextBlock.Text = "Заказчик: " + (order.IdCustomerUserNavigation.FullName ?? order.IdCustomerUserNavigation.Login);
        DetailManagerTextBlock.Text = "Менеджер: " + (order.IdManagerUserNavigation == null ? "-" : order.IdManagerUserNavigation.FullName ?? order.IdManagerUserNavigation.Login);
        DetailPlannedTextBlock.Text = "Плановая дата: " + (order.PlannedFinishDate == null ? "-" : order.PlannedFinishDate.Value.ToString("dd.MM.yyyy"));
        DetailProductTextBlock.Text = "Изделие: " + order.IdProductNavigation.ProductName;
        DetailDescriptionTextBlock.Text = "Описание: " + (order.ProductDescription ?? "-");
        RejectReasonTextBox.Text = order.RejectReason ?? "";
        OrderCostTextBox.Text = order.OrderCost == null ? "" : order.OrderCost.ToString();
        PlannedDateTextBox.Text = order.PlannedFinishDate == null ? "" : order.PlannedFinishDate.Value.ToString("dd.MM.yyyy");

        await LoadHistory(order.IdOrder);
        ShowActionButtons(order);
    }

    private async Task LoadHistory(int orderId)
    {
        var role = SessionData.CurrentUser?.IdUserRoleNavigation.RoleName ?? "";
        if (role != "Директор" && role != "Менеджер")
            return;

        var history = await App.DbContext.OrderStatusHistories
            .Where(h => h.IdOrder == orderId)
            .OrderByDescending(h => h.ChangedAt)
            .ToListAsync();

        HistoryListBox.Items.Clear();
        foreach (var item in history)
        {
            var oldStatus = item.OldStatus ?? "-";
            HistoryListBox.Items.Add($"{item.ChangedAt:dd.MM.yyyy HH:mm} | {oldStatus} -> {item.NewStatus}");
        }
    }

    private void ShowActionButtons(Order order)
    {
        var role = SessionData.CurrentUser?.IdUserRoleNavigation.RoleName ?? "";
        var userId = SessionData.CurrentUser?.IdUserAccount ?? 0;

        if (role == "Менеджер")
        {
            if (order.Status == "Новый")
            {
                AcceptButton.IsVisible = true;
                RejectButton.IsVisible = true;
            }
            if (order.Status == "Подтверждение" && order.IdManagerUser == userId)
            {
                ToPurchaseButton.IsVisible = true;
                RejectButton.IsVisible = true;
            }
            if (order.Status == "Закупка" && order.IdManagerUser == userId)
                ToProductionButton.IsVisible = true;
            if (order.Status == "Готов" && order.IdManagerUser == userId)
                ToClosedButton.IsVisible = true;
        }

        if (role == "Конструктор" && order.Status == "Составление спецификации")
            ToConfirmButton.IsVisible = true;

        if (role == "Мастер")
        {
            if (order.Status == "Производство")
                ToControlButton.IsVisible = true;
            if (order.Status == "Контроль")
            {
                QualityButton.IsVisible = true;
                ToReadyButton.IsVisible = true;
            }
        }

        if (role == "Заказчик" && order.IdCustomerUser == userId)
        {
            if (CustomerOrderPermissions.CanDelete(order.Status))
                DeleteOrderButton.IsVisible = true;
            if (CustomerOrderPermissions.CanEdit(order.Status))
                EditOrderButton.IsVisible = true;
            if (CustomerOrderPermissions.CanCancel(order.Status))
                CancelOrderButton.IsVisible = true;
        }

        if (role == "Менеджер" && order.IdManagerUser == userId)
        {
            if (order.Status != "Новый" && order.Status != "Отменен" && order.Status != "Отклонен")
                PlanOrderButton.IsVisible = true;
        }

        UpdateActionsPanelVisibility();
    }

    private async Task ChangeStatus(Order order, string newStatus, string? rejectReason)
    {
        var oldStatus = order.Status;
        order.Status = newStatus;

        if (rejectReason != null)
            order.RejectReason = rejectReason;

        var history = new OrderStatusHistory();
        history.IdOrder = order.IdOrder;
        history.OldStatus = oldStatus;
        history.NewStatus = newStatus;
        history.ChangedAt = DateTime.Now;
        history.IdChangedByUser = SessionData.CurrentUser?.IdUserAccount;

        App.DbContext.OrderStatusHistories.Add(history);
        await App.DbContext.SaveChangesAsync();
    }

    private async void AcceptClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        var order = orders[OrdersListBox.SelectedIndex];
        order.IdManagerUser = SessionData.CurrentUser?.IdUserAccount;
        await ChangeStatus(order, "Составление спецификации", null);
        MessageTextBlock.Text = "Заказ принят.";
        await LoadOrders();
    }

    private async void RejectClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        if (RejectReasonTextBox.Text == null || RejectReasonTextBox.Text.Length == 0)
        {
            MessageTextBlock.Text = "Укажите причину отклонения.";
            return;
        }

        var order = orders[OrdersListBox.SelectedIndex];
        await ChangeStatus(order, "Отклонен", RejectReasonTextBox.Text);
        MessageTextBlock.Text = "Заказ отклонен.";
        await LoadOrders();
    }

    private async void ToPurchaseClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        var order = orders[OrdersListBox.SelectedIndex];
        await ChangeStatus(order, "Закупка", null);
        MessageTextBlock.Text = "Статус: Закупка.";
        await LoadOrders();
    }

    private async void ToProductionClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        var order = orders[OrdersListBox.SelectedIndex];
        var ok = await WriteOffMaterials(order);
        if (!ok)
        {
            MessageTextBlock.Text = "Не хватает материалов или комплектующих на складе.";
            return;
        }

        await ChangeStatus(order, "Производство", null);
        MessageTextBlock.Text = "Заказ передан в производство, материалы списаны.";
        await LoadOrders();
    }

    private async void ToConfirmClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        if (OrderCostTextBox.Text == null || OrderCostTextBox.Text.Length == 0)
        {
            MessageTextBlock.Text = "Укажите стоимость заказа.";
            return;
        }

        if (PlannedDateTextBox.Text == null || PlannedDateTextBox.Text.Length == 0)
        {
            MessageTextBlock.Text = "Укажите плановую дату.";
            return;
        }

        if (!decimal.TryParse(OrderCostTextBox.Text, out var cost))
        {
            MessageTextBlock.Text = "Стоимость должна быть числом.";
            return;
        }

        if (!DateOnly.TryParseExact(PlannedDateTextBox.Text, "dd.MM.yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out var plannedDate))
        {
            MessageTextBlock.Text = "Дата в формате дд.мм.гггг.";
            return;
        }

        var order = orders[OrdersListBox.SelectedIndex];
        order.OrderCost = cost;
        order.PlannedFinishDate = plannedDate;
        await ChangeStatus(order, "Подтверждение", null);
        MessageTextBlock.Text = "Заказ отправлен на подтверждение.";
        await LoadOrders();
    }

    private async void ToControlClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        var order = orders[OrdersListBox.SelectedIndex];
        await ChangeStatus(order, "Контроль", null);
        MessageTextBlock.Text = "Статус: Контроль.";
        await LoadOrders();
    }

    private async void ToReadyClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        var order = orders[OrdersListBox.SelectedIndex];
        var checks = await App.DbContext.OrderQualityChecks
            .Where(q => q.IdOrder == order.IdOrder)
            .ToListAsync();

        if (checks.Count == 0)
        {
            MessageTextBlock.Text = "Сначала добавьте контроль качества.";
            return;
        }

        foreach (var check in checks)
        {
            if (check.GradeSign != "+")
            {
                MessageTextBlock.Text = "Есть параметры с отрицательной оценкой.";
                return;
            }
        }

        await ChangeStatus(order, "Готов", null);
        MessageTextBlock.Text = "Заказ готов.";
        await LoadOrders();
    }

    private async void ToClosedClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        var order = orders[OrdersListBox.SelectedIndex];
        await ChangeStatus(order, "Закрыт", null);
        MessageTextBlock.Text = "Заказ закрыт.";
        await LoadOrders();
    }

    private async void CancelOrderClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        var order = orders[OrdersListBox.SelectedIndex];
        await ChangeStatus(order, "Отменен", null);
        MessageTextBlock.Text = "Заказ отменен.";
        await LoadOrders();
    }

    private async void DeleteOrderClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        var order = orders[OrdersListBox.SelectedIndex];
        if (order.Status != "Новый")
        {
            MessageTextBlock.Text = "Удалить можно только новый заказ.";
            return;
        }

        App.DbContext.Orders.Remove(order);
        await App.DbContext.SaveChangesAsync();
        MessageTextBlock.Text = "Заказ удален.";
        await LoadOrders();
    }

    private void QualityClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        var order = orders[OrdersListBox.SelectedIndex];
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new QualityControlControl(order.IdOrder);
    }

    private void PlanOrderClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        var order = orders[OrdersListBox.SelectedIndex];
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new OrderPlanningControl(order.IdOrder);
    }

    private async Task<bool> WriteOffMaterials(Order order)
    {
        var materialNeed = new Dictionary<int, decimal>();
        var componentNeed = new Dictionary<int, decimal>();

        CollectNeeds(order.IdProduct, order.OrderQuantity, materialNeed, componentNeed);

        foreach (var item in materialNeed)
        {
            var material = await App.DbContext.Materials.FirstOrDefaultAsync(m => m.IdMaterial == item.Key);
            if (material == null || material.QuantityInStock < item.Value)
                return false;
        }

        foreach (var item in componentNeed)
        {
            var component = await App.DbContext.Components.FirstOrDefaultAsync(c => c.IdComponent == item.Key);
            if (component == null || component.QuantityInStock < item.Value)
                return false;
        }

        foreach (var item in materialNeed)
        {
            var material = await App.DbContext.Materials.FirstAsync(m => m.IdMaterial == item.Key);
            material.QuantityInStock = material.QuantityInStock - item.Value;
        }

        foreach (var item in componentNeed)
        {
            var component = await App.DbContext.Components.FirstAsync(c => c.IdComponent == item.Key);
            component.QuantityInStock = component.QuantityInStock - item.Value;
        }

        await App.DbContext.SaveChangesAsync();
        return true;
    }

    private void CollectNeeds(int productId, decimal quantity, Dictionary<int, decimal> materialNeed, Dictionary<int, decimal> componentNeed)
    {
        var specMaterials = App.DbContext.SpecMaterials.Where(s => s.IdProduct == productId).ToList();
        foreach (var spec in specMaterials)
        {
            var needQty = quantity * spec.Quantity;
            if (materialNeed.ContainsKey(spec.IdMaterial))
                materialNeed[spec.IdMaterial] = materialNeed[spec.IdMaterial] + needQty;
            else
                materialNeed[spec.IdMaterial] = needQty;
        }

        var specComponents = App.DbContext.SpecComponents.Where(s => s.IdProduct == productId).ToList();
        foreach (var spec in specComponents)
        {
            var needQty = quantity * spec.Quantity;
            if (componentNeed.ContainsKey(spec.IdComponent))
                componentNeed[spec.IdComponent] = componentNeed[spec.IdComponent] + needQty;
            else
                componentNeed[spec.IdComponent] = needQty;
        }

        var specUnits = App.DbContext.SpecAssemblyUnits.Where(s => s.IdProduct == productId).ToList();
        foreach (var spec in specUnits)
        {
            var childQty = quantity * spec.Quantity;
            CollectNeeds(spec.IdChildProduct, childQty, materialNeed, componentNeed);
        }
    }

    private void EditOrderClick(object? sender, RoutedEventArgs e)
    {
        if (OrdersListBox.SelectedIndex < 0) return;

        var order = orders[OrdersListBox.SelectedIndex];
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new CreateOrderControl(order.IdOrder);
    }

    private void AddOrderClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new CreateOrderControl();
    }

    private async void FilterChanged(object? sender, SelectionChangedEventArgs e)
    {
        await LoadOrders();
    }

    private async void RefreshClick(object? sender, RoutedEventArgs e)
    {
        await LoadOrders();
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        var role = SessionData.CurrentUser?.IdUserRoleNavigation.RoleName;

        if (role == "Заказчик")
            mainWindow.MainControl.Content = new CustomerControl();
        else if (role == "Менеджер")
            mainWindow.MainControl.Content = new ManagerControl();
        else if (role == "Директор")
            mainWindow.MainControl.Content = new DirectorControl();
        else if (role == "Мастер")
            mainWindow.MainControl.Content = new MasterControl();
        else if (role == "Конструктор")
            mainWindow.MainControl.Content = new ConstructorControl();
    }
}
