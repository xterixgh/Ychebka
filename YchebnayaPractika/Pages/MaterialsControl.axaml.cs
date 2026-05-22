using Avalonia.Controls;
using Avalonia.Interactivity;
using Microsoft.EntityFrameworkCore;
using Npgsql;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class MaterialsControl : UserControl
{
    private List<Material> materials = new List<Material>();
    private bool canEdit;
    private bool isLoading;

    public MaterialsControl()
    {
        InitializeComponent();
        SetupPermissions();
        InitData();
    }

    private async void InitData()
    {
        await LoadFilters();
        await LoadMaterials();
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
            var types = await App.DbContext.Materials
                .Select(m => m.MaterialType)
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

    private async Task LoadMaterials()
    {
        if (isLoading) return;
        isLoading = true;

        try
        {
            var selectedType = TypeFilterComboBox.SelectedItem;

            var query = App.DbContext.Materials.AsQueryable();
            if (selectedType != null && selectedType.ToString() != "Все")
                query = query.Where(m => m.MaterialType == selectedType.ToString());

            materials = await query.OrderBy(m => m.MaterialName).ToListAsync();

            MaterialsListBox.Items.Clear();
            foreach (var m in materials)
            {
                MaterialsListBox.Items.Add($"{m.Article} | {m.MaterialName} | {m.QuantityInStock} {m.UnitName} | {m.PurchasePrice}");
            }

            decimal sum = 0;
            foreach (var m in materials)
                sum += m.PurchasePrice * m.QuantityInStock;

            StatsTextBlock.Text = $"Выведено: {materials.Count}. Общая закупочная стоимость: {sum}";
        }
        finally
        {
            isLoading = false;
        }
    }

    private async void TypeFilterChanged(object? sender, SelectionChangedEventArgs e)
    {
        await LoadMaterials();
    }

    private void MaterialSelectionChanged(object? sender, SelectionChangedEventArgs e)
    {
        if (MaterialsListBox.SelectedIndex < 0 || MaterialsListBox.SelectedIndex >= materials.Count)
            return;

        var m = materials[MaterialsListBox.SelectedIndex];
        ArticleTextBox.Text = m.Article;
        NameTextBox.Text = m.MaterialName;
        UnitTextBox.Text = m.UnitName;
        QuantityTextBox.Text = m.QuantityInStock.ToString();
        PriceTextBox.Text = m.PurchasePrice.ToString();
        TypeTextBox.Text = m.MaterialType;
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

        var exists = await App.DbContext.Materials.AnyAsync(m => m.Article == ArticleTextBox.Text);
        if (exists)
        {
            MessageTextBlock.Text = "Материал с таким артикулом уже есть.";
            return;
        }

        var material = new Material();
        material.Article = ArticleTextBox.Text;
        material.MaterialName = NameTextBox.Text;
        material.UnitName = UnitTextBox.Text;
        material.QuantityInStock = quantity;
        material.PurchasePrice = price;
        material.MaterialType = TypeTextBox.Text;

        try
        {
            App.DbContext.Materials.Add(material);
            await App.DbContext.SaveChangesAsync();
            MessageTextBlock.Text = "Материал добавлен.";
            await LoadFilters();
            await LoadMaterials();
        }
        catch (DbUpdateException ex)
        {
            if (ex.InnerException is PostgresException pex && pex.SqlState == "23505")
                MessageTextBlock.Text = "Ошибка: артикул уже существует.";
            else
                MessageTextBlock.Text = "Ошибка при добавлении материала.";
        }
    }

    private async void UpdateClick(object? sender, RoutedEventArgs e)
    {
        if (!canEdit) return;
        if (MaterialsListBox.SelectedIndex < 0 || MaterialsListBox.SelectedIndex >= materials.Count) return;

        decimal quantity;
        decimal price;
        if (!decimal.TryParse(QuantityTextBox.Text, out quantity) || !decimal.TryParse(PriceTextBox.Text, out price))
        {
            MessageTextBlock.Text = "Количество и цена должны быть числами.";
            return;
        }

        var material = materials[MaterialsListBox.SelectedIndex];
        if (NameTextBox.Text != null) material.MaterialName = NameTextBox.Text;
        if (UnitTextBox.Text != null) material.UnitName = UnitTextBox.Text;
        if (TypeTextBox.Text != null) material.MaterialType = TypeTextBox.Text;
        material.QuantityInStock = quantity;
        material.PurchasePrice = price;

        await App.DbContext.SaveChangesAsync();
        MessageTextBlock.Text = "Материал изменен.";
        await LoadFilters();
        await LoadMaterials();
    }

    private async void DeleteClick(object? sender, RoutedEventArgs e)
    {
        if (!canEdit) return;
        if (MaterialsListBox.SelectedIndex < 0 || MaterialsListBox.SelectedIndex >= materials.Count) return;

        var material = materials[MaterialsListBox.SelectedIndex];
        if (material.QuantityInStock != 0)
        {
            MessageTextBlock.Text = "Удалять можно только материал с нулевым количеством.";
            return;
        }

        App.DbContext.Materials.Remove(material);
        await App.DbContext.SaveChangesAsync();
        MessageTextBlock.Text = "Материал удален.";
        await LoadFilters();
        await LoadMaterials();
    }

    private async void RefreshClick(object? sender, RoutedEventArgs e)
    {
        await LoadFilters();
        await LoadMaterials();
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
