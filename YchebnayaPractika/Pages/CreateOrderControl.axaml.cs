using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Platform.Storage;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using YchebnayaPractika.Data;
using YchebnayaPractika.Services;

namespace YchebnayaPractika.Pages;

public partial class CreateOrderControl : UserControl
{
    private List<UserAccount> customers = new List<UserAccount>();
    private List<Product> products = new List<Product>();
    private List<(string Name, decimal Value, string Unit)> sizes = new List<(string, decimal, string)>();
    private List<(string FileName, byte[] FileData)> newDrawings = new List<(string, byte[])>();
    private List<OrderDrawing> existingDrawings = new List<OrderDrawing>();
    private List<int> drawingIdsToDelete = new List<int>();

    private int? editOrderId;
    private Order? editOrder;

    public CreateOrderControl()
    {
        InitializeComponent();
        InitData();
    }

    public CreateOrderControl(int orderId)
    {
        editOrderId = orderId;
        InitializeComponent();
        InitData();
    }

    private async void InitData()
    {
        var role = SessionData.CurrentUser?.IdUserRoleNavigation.RoleName ?? "";

        products = await App.DbContext.Products.OrderBy(p => p.ProductName).ToListAsync();
        ProductComboBox.Items.Clear();
        foreach (var product in products)
            ProductComboBox.Items.Add(product.ProductName);

        if (role == "Менеджер" && editOrderId == null)
        {
            CustomerLabel.IsVisible = true;
            CustomerComboBox.IsVisible = true;
            NewCustomerCheckBox.IsVisible = true;

            customers = await App.DbContext.UserAccounts
                .Include(u => u.IdUserRoleNavigation)
                .Where(u => u.IdUserRoleNavigation.RoleName == "Заказчик")
                .OrderBy(u => u.FullName)
                .ToListAsync();

            CustomerComboBox.Items.Clear();
            foreach (var customer in customers)
            {
                var name = customer.FullName ?? customer.Login;
                CustomerComboBox.Items.Add(name);
            }
            if (CustomerComboBox.ItemCount > 0)
                CustomerComboBox.SelectedIndex = 0;
        }
        else
        {
            CustomerLabel.IsVisible = false;
            CustomerComboBox.IsVisible = false;
            NewCustomerCheckBox.IsVisible = false;
            NewCustomerPanel.IsVisible = false;
        }

        if (editOrderId != null)
            await LoadOrderForEdit(editOrderId.Value);
        else if (ProductComboBox.ItemCount > 0)
            ProductComboBox.SelectedIndex = 0;
    }

    private async Task LoadOrderForEdit(int orderId)
    {
        editOrder = await App.DbContext.Orders
            .Include(o => o.OrderSizes)
            .Include(o => o.OrderDrawings)
            .FirstOrDefaultAsync(o => o.IdOrder == orderId);

        if (editOrder == null)
        {
            MessageTextBlock.Text = "Заказ не найден.";
            return;
        }

        if (editOrder.Status != "Новый")
        {
            MessageTextBlock.Text = "Редактировать можно только новый заказ.";
            SaveButton.IsEnabled = false;
            return;
        }

        var userId = SessionData.CurrentUser?.IdUserAccount ?? 0;
        if (editOrder.IdCustomerUser != userId)
        {
            MessageTextBlock.Text = "Можно редактировать только свой заказ.";
            SaveButton.IsEnabled = false;
            return;
        }

        TitleTextBlock.Text = "Редактирование заказа";
        SaveButton.Content = "Сохранить изменения";

        OrderNumberLabel.IsVisible = true;
        OrderNumberTextBlock.IsVisible = true;
        OrderNumberTextBlock.Text = editOrder.OrderNumber;

        OrderDateLabel.IsVisible = true;
        OrderDateTextBlock.IsVisible = true;
        OrderDateTextBlock.Text = editOrder.OrderDate.ToString("dd.MM.yyyy");

        if (editOrder.OrderCost != null)
        {
            OrderCostLabel.IsVisible = true;
            OrderCostTextBlock.IsVisible = true;
            OrderCostTextBlock.Text = editOrder.OrderCost.ToString();
        }

        if (editOrder.PlannedFinishDate != null)
        {
            PlannedDateLabel.IsVisible = true;
            PlannedDateTextBlock.IsVisible = true;
            PlannedDateTextBlock.Text = editOrder.PlannedFinishDate.Value.ToString("dd.MM.yyyy");
        }

        OrderNameTextBox.Text = editOrder.OrderName;
        DescriptionTextBox.Text = editOrder.ProductDescription ?? "";
        QuantityTextBox.Text = editOrder.OrderQuantity.ToString();

        for (int i = 0; i < products.Count; i++)
        {
            if (products[i].IdProduct == editOrder.IdProduct)
            {
                ProductComboBox.SelectedIndex = i;
                break;
            }
        }

        sizes.Clear();
        SizesListBox.Items.Clear();
        foreach (var size in editOrder.OrderSizes)
        {
            sizes.Add((size.SizeName, size.SizeValue, size.UnitName));
            SizesListBox.Items.Add(size.SizeName + " = " + size.SizeValue + " " + size.UnitName);
        }

        existingDrawings = editOrder.OrderDrawings.ToList();
        newDrawings.Clear();
        drawingIdsToDelete.Clear();
        RefreshDrawingsList();
    }

    private void RefreshDrawingsList()
    {
        DrawingsListBox.Items.Clear();
        foreach (var drawing in existingDrawings)
        {
            if (!drawingIdsToDelete.Contains(drawing.IdOrderDrawing))
                DrawingsListBox.Items.Add(drawing.FileName);
        }
        foreach (var drawing in newDrawings)
            DrawingsListBox.Items.Add(drawing.FileName + " (новый)");
    }

    private void NewCustomerChecked(object? sender, RoutedEventArgs e)
    {
        CustomerComboBox.IsVisible = false;
        NewCustomerPanel.IsVisible = true;
    }

    private void NewCustomerUnchecked(object? sender, RoutedEventArgs e)
    {
        CustomerComboBox.IsVisible = true;
        NewCustomerPanel.IsVisible = false;
    }

    private void AddSizeClick(object? sender, RoutedEventArgs e)
    {
        if (SizeNameTextBox.Text == null || SizeValueTextBox.Text == null || SizeUnitTextBox.Text == null)
        {
            MessageTextBlock.Text = "Заполните все поля размера.";
            return;
        }

        if (SizeNameTextBox.Text.Length == 0 || SizeUnitTextBox.Text.Length == 0)
        {
            MessageTextBlock.Text = "Заполните все поля размера.";
            return;
        }

        if (!decimal.TryParse(SizeValueTextBox.Text, out var value))
        {
            MessageTextBlock.Text = "Значение размера должно быть числом.";
            return;
        }

        sizes.Add((SizeNameTextBox.Text, value, SizeUnitTextBox.Text));
        SizesListBox.Items.Add(SizeNameTextBox.Text + " = " + value + " " + SizeUnitTextBox.Text);

        SizeNameTextBox.Text = "";
        SizeValueTextBox.Text = "";
        SizeUnitTextBox.Text = "";
        MessageTextBlock.Text = "";
    }

    private void DeleteSizeClick(object? sender, RoutedEventArgs e)
    {
        if (SizesListBox.SelectedIndex < 0)
        {
            MessageTextBlock.Text = "Выберите размер в списке.";
            return;
        }

        sizes.RemoveAt(SizesListBox.SelectedIndex);
        SizesListBox.Items.RemoveAt(SizesListBox.SelectedIndex);
        MessageTextBlock.Text = "";
    }

    private async void AddDrawingClick(object? sender, RoutedEventArgs e)
    {
        var topLevel = TopLevel.GetTopLevel(this);
        if (topLevel == null)
            return;

        var files = await topLevel.StorageProvider.OpenFilePickerAsync(new FilePickerOpenOptions
        {
            Title = "Выберите чертеж",
            AllowMultiple = true
        });

        if (files.Count == 0)
            return;

        foreach (var file in files)
        {
            await using var stream = await file.OpenReadAsync();
            using var memory = new MemoryStream();
            await stream.CopyToAsync(memory);
            newDrawings.Add((file.Name, memory.ToArray()));
        }

        RefreshDrawingsList();
        MessageTextBlock.Text = "";
    }

    private void DeleteDrawingClick(object? sender, RoutedEventArgs e)
    {
        if (DrawingsListBox.SelectedIndex < 0)
        {
            MessageTextBlock.Text = "Выберите файл в списке.";
            return;
        }

        var visibleExisting = existingDrawings.Where(d => !drawingIdsToDelete.Contains(d.IdOrderDrawing)).ToList();
        var selectedIndex = DrawingsListBox.SelectedIndex;

        if (selectedIndex < visibleExisting.Count)
        {
            drawingIdsToDelete.Add(visibleExisting[selectedIndex].IdOrderDrawing);
        }
        else
        {
            var newIndex = selectedIndex - visibleExisting.Count;
            newDrawings.RemoveAt(newIndex);
        }

        RefreshDrawingsList();
        MessageTextBlock.Text = "";
    }

    private async void SaveClick(object? sender, RoutedEventArgs e)
    {
        if (SessionData.CurrentUser == null)
        {
            MessageTextBlock.Text = "Нужно войти в систему.";
            return;
        }

        if (OrderNameTextBox.Text == null || OrderNameTextBox.Text.Length == 0)
        {
            MessageTextBlock.Text = "Введите наименование заказа.";
            return;
        }

        if (ProductComboBox.SelectedIndex < 0)
        {
            MessageTextBlock.Text = "Выберите изделие.";
            return;
        }

        if (QuantityTextBox.Text == null || QuantityTextBox.Text.Length == 0)
        {
            MessageTextBlock.Text = "Введите количество.";
            return;
        }

        if (!decimal.TryParse(QuantityTextBox.Text, out var quantity) || quantity <= 0)
        {
            MessageTextBlock.Text = "Количество должно быть больше 0.";
            return;
        }

        if (editOrderId != null)
        {
            await SaveEditedOrder(quantity);
            return;
        }

        await SaveNewOrder(quantity);
    }

    private async Task SaveNewOrder(decimal quantity)
    {
        var role = SessionData.CurrentUser!.IdUserRoleNavigation.RoleName;
        UserAccount customer;

        if (role == "Менеджер")
        {
            if (NewCustomerCheckBox.IsChecked == true)
            {
                var newCustomer = await CreateNewCustomer();
                if (newCustomer == null)
                    return;
                customer = newCustomer;
            }
            else
            {
                if (CustomerComboBox.SelectedIndex < 0)
                {
                    MessageTextBlock.Text = "Выберите заказчика.";
                    return;
                }
                customer = customers[CustomerComboBox.SelectedIndex];
            }
        }
        else
        {
            customer = SessionData.CurrentUser!;
        }

        var product = products[ProductComboBox.SelectedIndex];
        var orderDate = DateOnly.FromDateTime(DateTime.Now);
        var orderNumber = await GenerateOrderNumber(customer, orderDate);

        var order = new Order();
        order.OrderNumber = orderNumber;
        order.OrderDate = orderDate;
        order.OrderName = OrderNameTextBox.Text!;
        order.IdProduct = product.IdProduct;
        order.IdCustomerUser = customer.IdUserAccount;
        order.OrderQuantity = quantity;
        order.ProductDescription = DescriptionTextBox.Text;

        if (role == "Менеджер")
        {
            order.Status = "Составление спецификации";
            order.IdManagerUser = SessionData.CurrentUser.IdUserAccount;
        }
        else
        {
            order.Status = "Новый";
        }

        App.DbContext.Orders.Add(order);
        await App.DbContext.SaveChangesAsync();

        await SaveSizes(order.IdOrder);
        await SaveNewDrawings(order.IdOrder);

        var history = new OrderStatusHistory();
        history.IdOrder = order.IdOrder;
        history.OldStatus = null;
        history.NewStatus = order.Status;
        history.ChangedAt = DateTime.Now;
        history.IdChangedByUser = SessionData.CurrentUser.IdUserAccount;
        App.DbContext.OrderStatusHistories.Add(history);

        await App.DbContext.SaveChangesAsync();

        OrderNumberLabel.IsVisible = true;
        OrderNumberTextBlock.IsVisible = true;
        OrderNumberTextBlock.Text = orderNumber;

        OrderDateLabel.IsVisible = true;
        OrderDateTextBlock.IsVisible = true;
        OrderDateTextBlock.Text = orderDate.ToString("dd.MM.yyyy");

        MessageTextBlock.Text = "Заказ сохранен: " + orderNumber;
    }

    private async Task SaveEditedOrder(decimal quantity)
    {
        if (editOrder == null)
            return;

        editOrder.OrderName = OrderNameTextBox.Text!;
        editOrder.IdProduct = products[ProductComboBox.SelectedIndex].IdProduct;
        editOrder.OrderQuantity = quantity;
        editOrder.ProductDescription = DescriptionTextBox.Text;

        var oldSizes = await App.DbContext.OrderSizes.Where(s => s.IdOrder == editOrder.IdOrder).ToListAsync();
        App.DbContext.OrderSizes.RemoveRange(oldSizes);
        await SaveSizes(editOrder.IdOrder);

        foreach (var id in drawingIdsToDelete)
        {
            var drawing = await App.DbContext.OrderDrawings.FirstOrDefaultAsync(d => d.IdOrderDrawing == id);
            if (drawing != null)
                App.DbContext.OrderDrawings.Remove(drawing);
        }

        await SaveNewDrawings(editOrder.IdOrder);
        await App.DbContext.SaveChangesAsync();

        MessageTextBlock.Text = "Изменения сохранены.";
    }

    private async Task SaveSizes(int orderId)
    {
        foreach (var size in sizes)
        {
            var orderSize = new OrderSize();
            orderSize.IdOrder = orderId;
            orderSize.SizeName = size.Name;
            orderSize.SizeValue = size.Value;
            orderSize.UnitName = size.Unit;
            App.DbContext.OrderSizes.Add(orderSize);
        }

        await App.DbContext.SaveChangesAsync();
    }

    private async Task SaveNewDrawings(int orderId)
    {
        foreach (var drawing in newDrawings)
        {
            var orderDrawing = new OrderDrawing();
            orderDrawing.IdOrder = orderId;
            orderDrawing.FileName = drawing.FileName;
            orderDrawing.FileData = drawing.FileData;
            App.DbContext.OrderDrawings.Add(orderDrawing);
        }

        if (newDrawings.Count > 0)
            await App.DbContext.SaveChangesAsync();
    }

    private async Task<UserAccount?> CreateNewCustomer()
    {
        var fullName = NewCustomerFullNameTextBox.Text;
        var login = NewCustomerLoginTextBox.Text;
        var password = NewCustomerPasswordTextBox.Text;

        if (fullName == null || login == null || password == null ||
            fullName.Length == 0 || login.Length == 0 || password.Length == 0)
        {
            MessageTextBlock.Text = "Заполните данные нового заказчика.";
            return null;
        }

        if (password.Length < 4 || password.Length > 16)
        {
            MessageTextBlock.Text = "Пароль должен быть от 4 до 16 символов.";
            return null;
        }

        var exists = await App.DbContext.UserAccounts.AnyAsync(u => u.Login == login);
        if (exists)
        {
            MessageTextBlock.Text = "Логин уже занят.";
            return null;
        }

        var customerRole = await App.DbContext.UserRoles.FirstOrDefaultAsync(r => r.RoleName == "Заказчик");
        if (customerRole == null)
        {
            MessageTextBlock.Text = "Роль 'Заказчик' не найдена в базе.";
            return null;
        }

        var customer = new UserAccount();
        customer.Login = login;
        customer.PasswordHash = password;
        customer.FullName = fullName;
        customer.IdUserRole = customerRole.IdUserRole;

        App.DbContext.UserAccounts.Add(customer);
        await App.DbContext.SaveChangesAsync();

        return customer;
    }

    private async Task<string> GenerateOrderNumber(UserAccount customer, DateOnly orderDate)
    {
        var count = await App.DbContext.Orders.CountAsync(o =>
            o.IdCustomerUser == customer.IdUserAccount &&
            o.OrderDate == orderDate);

        return OrderNumberBuilder.Build(customer.FullName, orderDate, count);
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new OrdersControl();
    }
}
