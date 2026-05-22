using Avalonia.Controls;
using Avalonia.Interactivity;
using Microsoft.EntityFrameworkCore;
using Npgsql;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class ComponentsControl : UserControl
{
    private List<Component> components = new List<Component>();
    private bool canEdit;
    private bool isLoading;

    public ComponentsControl()
    {
        InitializeComponent();
        SetupPermissions();
        InitData();
    }

    private async void InitData()
    {
        await LoadFilters();
        await LoadComponents();
    }

    private void SetupPermissions()
    {
        canEdit = false;
        if (SessionData.CurrentUser != null)
        {
            var role = SessionData.CurrentUser.IdUserRoleNavigation.RoleName;
            canEdit = role == "Менеджер" || role == "Директор";
        }

        AddButton.IsEnabled = canEdit;
        UpdateButton.IsEnabled = canEdit;
        DeleteButton.IsEnabled = canEdit;
    }

    private async Task LoadFilters()
    {
        if (isLoading) return;
        isLoading = true;

        try
        {
            var types = await App.DbContext.Components
                .Select(c => c.ComponentType)
                .Distinct()
                .OrderBy(x => x)
                .ToListAsync();

            TypeFilterComboBox.Items.Clear();
            TypeFilterComboBox.Items.Add("Все");
            foreach (var type in types)
                TypeFilterComboBox.Items.Add(type);
            TypeFilterComboBox.SelectedIndex = 0;
        }
        finally
        {
            isLoading = false;
        }
    }

    private async Task LoadComponents()
    {
        if (isLoading) return;
        isLoading = true;

        try
        {
            var selectedType = TypeFilterComboBox.SelectedItem;

            var query = App.DbContext.Components.AsQueryable();
            if (selectedType != null && selectedType.ToString() != "Все")
                query = query.Where(c => c.ComponentType == selectedType.ToString());

            components = await query.OrderBy(c => c.ComponentName).ToListAsync();

            ComponentsListBox.Items.Clear();
            foreach (var c in components)
            {
                ComponentsListBox.Items.Add($"{c.Article} | {c.ComponentName} | {c.QuantityInStock} {c.UnitName} | {c.PurchasePrice}");
            }

            decimal sum = 0;
            foreach (var c in components)
                sum += c.PurchasePrice * c.QuantityInStock;

            StatsTextBlock.Text = $"Выведено: {components.Count}. Общая закупочная стоимость: {sum}";
        }
        finally
        {
            isLoading = false;
        }
    }

    private async void TypeFilterChanged(object? sender, SelectionChangedEventArgs e)
    {
        await LoadComponents();
    }

    private void ComponentSelectionChanged(object? sender, SelectionChangedEventArgs e)
    {
        if (ComponentsListBox.SelectedIndex < 0 || ComponentsListBox.SelectedIndex >= components.Count)
            return;

        var c = components[ComponentsListBox.SelectedIndex];
        ArticleTextBox.Text = c.Article;
        NameTextBox.Text = c.ComponentName;
        UnitTextBox.Text = c.UnitName;
        QuantityTextBox.Text = c.QuantityInStock.ToString();
        PriceTextBox.Text = c.PurchasePrice.ToString();
        TypeTextBox.Text = c.ComponentType;
    }

    private async void AddClick(object? sender, RoutedEventArgs e)
    {
        if (!canEdit) return;

        decimal quantity;
        decimal price;
        if (!decimal.TryParse(QuantityTextBox.Text, out quantity) || !decimal.TryParse(PriceTextBox.Text, out price))
        {
            MessageTextBlock.Text = "Количество и цена должны быть числами.";
            return;
        }

        if (ArticleTextBox.Text == null || NameTextBox.Text == null || UnitTextBox.Text == null || TypeTextBox.Text == null)
        {
            MessageTextBlock.Text = "Заполните все поля.";
            return;
        }

        var exists = await App.DbContext.Components.AnyAsync(c => c.Article == ArticleTextBox.Text);
        if (exists)
        {
            MessageTextBlock.Text = "Комплектующее с таким артикулом уже есть.";
            return;
        }

        var component = new Component();
        component.Article = ArticleTextBox.Text;
        component.ComponentName = NameTextBox.Text;
        component.UnitName = UnitTextBox.Text;
        component.QuantityInStock = quantity;
        component.PurchasePrice = price;
        component.ComponentType = TypeTextBox.Text;
        component.WeightValue = 0;

        try
        {
            App.DbContext.Components.Add(component);
            await App.DbContext.SaveChangesAsync();
            MessageTextBlock.Text = "Комплектующее добавлено.";
            await LoadFilters();
            await LoadComponents();
        }
        catch (DbUpdateException ex)
        {
            if (ex.InnerException is PostgresException pex && pex.SqlState == "23505")
                MessageTextBlock.Text = "Ошибка: артикул уже существует.";
            else
                MessageTextBlock.Text = "Ошибка при добавлении комплектующего.";
        }
    }

    private async void UpdateClick(object? sender, RoutedEventArgs e)
    {
        if (!canEdit) return;
        if (ComponentsListBox.SelectedIndex < 0 || ComponentsListBox.SelectedIndex >= components.Count) return;

        decimal quantity;
        decimal price;
        if (!decimal.TryParse(QuantityTextBox.Text, out quantity) || !decimal.TryParse(PriceTextBox.Text, out price))
        {
            MessageTextBlock.Text = "Количество и цена должны быть числами.";
            return;
        }

        var component = components[ComponentsListBox.SelectedIndex];
        if (NameTextBox.Text != null) component.ComponentName = NameTextBox.Text;
        if (UnitTextBox.Text != null) component.UnitName = UnitTextBox.Text;
        if (TypeTextBox.Text != null) component.ComponentType = TypeTextBox.Text;
        component.QuantityInStock = quantity;
        component.PurchasePrice = price;

        await App.DbContext.SaveChangesAsync();
        MessageTextBlock.Text = "Комплектующее изменено.";
        await LoadFilters();
        await LoadComponents();
    }

    private async void DeleteClick(object? sender, RoutedEventArgs e)
    {
        if (!canEdit) return;
        if (ComponentsListBox.SelectedIndex < 0 || ComponentsListBox.SelectedIndex >= components.Count) return;

        var component = components[ComponentsListBox.SelectedIndex];
        if (component.QuantityInStock != 0)
        {
            MessageTextBlock.Text = "Удалять можно только комплектующее с нулевым количеством.";
            return;
        }

        App.DbContext.Components.Remove(component);
        await App.DbContext.SaveChangesAsync();
        MessageTextBlock.Text = "Комплектующее удалено.";
        await LoadFilters();
        await LoadComponents();
    }

    private async void RefreshClick(object? sender, RoutedEventArgs e)
    {
        await LoadFilters();
        await LoadComponents();
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var role = SessionData.CurrentUser?.IdUserRoleNavigation.RoleName;
        var mainWindow = (MainWindow)VisualRoot!;

        if (role == "Директор")
            mainWindow.MainControl.Content = new DirectorControl();
        else if (role == "Менеджер")
            mainWindow.MainControl.Content = new ManagerControl();
        else if (role == "Конструктор")
            mainWindow.MainControl.Content = new ConstructorControl();
        else if (role == "Мастер")
            mainWindow.MainControl.Content = new MasterControl();
        else
            mainWindow.MainControl.Content = new LoginControl(false);
    }
}
