using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Platform.Storage;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class SpecificationControl : UserControl
{
    private int productId;
    private Product? product;
    private string currentSection = "Размеры";

    private List<Material> materials = new List<Material>();
    private List<Component> components = new List<Component>();
    private List<Product> allProducts = new List<Product>();
    private List<EquipmentType> equipmentTypes = new List<EquipmentType>();

    public SpecificationControl(int productId)
    {
        this.productId = productId;
        InitializeComponent();
        InitData();
    }

    private async void InitData()
    {
        product = await App.DbContext.Products.FirstOrDefaultAsync(p => p.IdProduct == productId);
        if (product != null)
            TitleTextBlock.Text = "Спецификация: " + product.ProductName;

        materials = await App.DbContext.Materials.OrderBy(m => m.MaterialName).ToListAsync();
        components = await App.DbContext.Components.OrderBy(c => c.ComponentName).ToListAsync();
        allProducts = await App.DbContext.Products.OrderBy(p => p.ProductName).ToListAsync();
        equipmentTypes = await App.DbContext.EquipmentTypes.OrderBy(t => t.TypeName).ToListAsync();

        SectionComboBox.Items.Clear();
        SectionComboBox.Items.Add("Размеры");
        SectionComboBox.Items.Add("Материалы");
        SectionComboBox.Items.Add("Комплектующие");
        SectionComboBox.Items.Add("Сборочные единицы");
        SectionComboBox.Items.Add("Операции");
        SectionComboBox.Items.Add("Чертежи");
        SectionComboBox.SelectedIndex = 0;
    }

    private async void SectionChanged(object? sender, SelectionChangedEventArgs e)
    {
        if (SectionComboBox.SelectedItem == null)
            return;

        currentSection = SectionComboBox.SelectedItem.ToString() ?? "Размеры";
        SetupFields();
        await LoadSectionItems();
    }

    private void SetupFields()
    {
        Field4ComboBox.IsVisible = false;
        Field5TextBox.IsVisible = false;

        if (currentSection == "Размеры")
        {
            Field1Label.Text = "Название замера";
            Field2Label.Text = "Значение";
            Field3Label.Text = "Единица";
            Field4Label.IsVisible = false;
            Field5Label.IsVisible = false;
        }
        else if (currentSection == "Материалы")
        {
            Field1Label.Text = "Материал";
            Field2Label.Text = "Количество";
            Field3Label.IsVisible = false;
            Field4Label.IsVisible = false;
            Field5Label.IsVisible = false;
            Field4ComboBox.IsVisible = true;
            Field4Label.IsVisible = true;
            Field4Label.Text = "Выбор материала";
            Field4ComboBox.Items.Clear();
            foreach (var m in materials)
                Field4ComboBox.Items.Add(m.Article + " | " + m.MaterialName);
        }
        else if (currentSection == "Комплектующие")
        {
            Field1Label.IsVisible = false;
            Field2Label.Text = "Количество";
            Field3Label.IsVisible = false;
            Field4ComboBox.IsVisible = true;
            Field4Label.IsVisible = true;
            Field4Label.Text = "Выбор комплектующего";
            Field4ComboBox.Items.Clear();
            foreach (var c in components)
                Field4ComboBox.Items.Add(c.Article + " | " + c.ComponentName);
        }
        else if (currentSection == "Сборочные единицы")
        {
            Field1Label.IsVisible = false;
            Field2Label.Text = "Количество";
            Field3Label.IsVisible = false;
            Field4ComboBox.IsVisible = true;
            Field4Label.IsVisible = true;
            Field4Label.Text = "Дочернее изделие";
            Field4ComboBox.Items.Clear();
            foreach (var p in allProducts)
            {
                if (p.IdProduct != productId)
                    Field4ComboBox.Items.Add(p.ProductName);
            }
        }
        else if (currentSection == "Операции")
        {
            Field1Label.Text = "Название операции";
            Field2Label.Text = "Время (мин)";
            Field3Label.Text = "Порядок";
            Field4ComboBox.IsVisible = true;
            Field4Label.IsVisible = true;
            Field4Label.Text = "Тип оборудования";
            Field4ComboBox.Items.Clear();
            foreach (var t in equipmentTypes)
                Field4ComboBox.Items.Add(t.TypeName);
            Field5Label.IsVisible = true;
            Field5Label.Text = "Описание операции";
            Field5TextBox.IsVisible = true;
        }
        else if (currentSection == "Чертежи")
        {
            Field1Label.Text = "Имя файла";
            Field2Label.IsVisible = false;
            Field3Label.IsVisible = false;
            Field4Label.IsVisible = false;
            Field5Label.IsVisible = false;
        }
    }

    private async Task LoadSectionItems()
    {
        ItemsListBox.Items.Clear();

        if (currentSection == "Размеры")
        {
            var items = await App.DbContext.ProductSizes.Where(s => s.IdProduct == productId).ToListAsync();
            foreach (var item in items)
                ItemsListBox.Items.Add(item.SizeName + " = " + item.SizeValue + " " + item.UnitName);
        }
        else if (currentSection == "Материалы")
        {
            var items = await App.DbContext.SpecMaterials
                .Include(s => s.IdMaterialNavigation)
                .Where(s => s.IdProduct == productId)
                .ToListAsync();
            foreach (var item in items)
                ItemsListBox.Items.Add(item.IdMaterialNavigation.Article + " | " + item.IdMaterialNavigation.MaterialName + " | " + item.Quantity);
        }
        else if (currentSection == "Комплектующие")
        {
            var items = await App.DbContext.SpecComponents
                .Include(s => s.IdComponentNavigation)
                .Where(s => s.IdProduct == productId)
                .ToListAsync();
            foreach (var item in items)
                ItemsListBox.Items.Add(item.IdComponentNavigation.Article + " | " + item.IdComponentNavigation.ComponentName + " | " + item.Quantity);
        }
        else if (currentSection == "Сборочные единицы")
        {
            var items = await App.DbContext.SpecAssemblyUnits
                .Include(s => s.IdChildProductNavigation)
                .Where(s => s.IdProduct == productId)
                .ToListAsync();
            foreach (var item in items)
                ItemsListBox.Items.Add(item.IdChildProductNavigation.ProductName + " | " + item.Quantity);
        }
        else if (currentSection == "Операции")
        {
            var items = await App.DbContext.SpecOperations
                .Include(s => s.IdEquipmentTypeNavigation)
                .Where(s => s.IdProduct == productId)
                .OrderBy(s => s.SequenceNo)
                .ToListAsync();
            foreach (var item in items)
            {
                var typeName = item.IdEquipmentTypeNavigation == null ? "-" : item.IdEquipmentTypeNavigation.TypeName;
                ItemsListBox.Items.Add(item.SequenceNo + ". " + item.OperationName + " | " + typeName + " | " + item.OperationMinutes + " мин");
            }
        }
        else if (currentSection == "Чертежи")
        {
            var items = await App.DbContext.ProductDrawings.Where(d => d.IdProduct == productId).ToListAsync();
            foreach (var item in items)
                ItemsListBox.Items.Add(item.FileName);
        }
    }

    private async void AddClick(object? sender, RoutedEventArgs e)
    {
        if (currentSection == "Размеры")
        {
            if (Field1TextBox.Text == null || Field2TextBox.Text == null || Field3TextBox.Text == null)
            {
                MessageTextBlock.Text = "Заполните все поля.";
                return;
            }
            if (!decimal.TryParse(Field2TextBox.Text, out var value))
            {
                MessageTextBlock.Text = "Значение должно быть числом.";
                return;
            }

            var size = new ProductSize();
            size.IdProduct = productId;
            size.SizeName = Field1TextBox.Text;
            size.SizeValue = value;
            size.UnitName = Field3TextBox.Text;
            App.DbContext.ProductSizes.Add(size);
        }
        else if (currentSection == "Материалы")
        {
            if (Field4ComboBox.SelectedIndex < 0 || Field2TextBox.Text == null)
            {
                MessageTextBlock.Text = "Выберите материал и количество.";
                return;
            }
            if (!decimal.TryParse(Field2TextBox.Text, out var qty))
            {
                MessageTextBlock.Text = "Количество должно быть числом.";
                return;
            }

            var material = materials[Field4ComboBox.SelectedIndex];
            var spec = new SpecMaterial();
            spec.IdProduct = productId;
            spec.IdMaterial = material.IdMaterial;
            spec.Quantity = qty;
            App.DbContext.SpecMaterials.Add(spec);
        }
        else if (currentSection == "Комплектующие")
        {
            if (Field4ComboBox.SelectedIndex < 0 || Field2TextBox.Text == null)
            {
                MessageTextBlock.Text = "Выберите комплектующее и количество.";
                return;
            }
            if (!decimal.TryParse(Field2TextBox.Text, out var qty))
            {
                MessageTextBlock.Text = "Количество должно быть числом.";
                return;
            }

            var component = components[Field4ComboBox.SelectedIndex];
            var spec = new SpecComponent();
            spec.IdProduct = productId;
            spec.IdComponent = component.IdComponent;
            spec.Quantity = qty;
            App.DbContext.SpecComponents.Add(spec);
        }
        else if (currentSection == "Сборочные единицы")
        {
            if (Field4ComboBox.SelectedIndex < 0 || Field2TextBox.Text == null)
            {
                MessageTextBlock.Text = "Выберите изделие и количество.";
                return;
            }
            if (!decimal.TryParse(Field2TextBox.Text, out var qty))
            {
                MessageTextBlock.Text = "Количество должно быть числом.";
                return;
            }

            var childProducts = allProducts.Where(p => p.IdProduct != productId).ToList();
            var child = childProducts[Field4ComboBox.SelectedIndex];
            var spec = new SpecAssemblyUnit();
            spec.IdProduct = productId;
            spec.IdChildProduct = child.IdProduct;
            spec.Quantity = qty;
            App.DbContext.SpecAssemblyUnits.Add(spec);
        }
        else if (currentSection == "Операции")
        {
            if (Field1TextBox.Text == null || Field2TextBox.Text == null || Field3TextBox.Text == null)
            {
                MessageTextBlock.Text = "Заполните поля операции.";
                return;
            }
            if (!int.TryParse(Field2TextBox.Text, out var minutes))
            {
                MessageTextBlock.Text = "Время должно быть числом.";
                return;
            }
            if (!int.TryParse(Field3TextBox.Text, out var seq))
            {
                MessageTextBlock.Text = "Порядок должен быть числом.";
                return;
            }

            var op = new SpecOperation();
            op.IdProduct = productId;
            op.OperationName = Field1TextBox.Text;
            op.OperationMinutes = minutes;
            op.SequenceNo = seq;
            op.OperationDescription = Field5TextBox.Text;
            if (Field4ComboBox.SelectedIndex >= 0)
                op.IdEquipmentType = equipmentTypes[Field4ComboBox.SelectedIndex].IdEquipmentType;
            App.DbContext.SpecOperations.Add(op);
        }
        else if (currentSection == "Чертежи")
        {
            var topLevel = TopLevel.GetTopLevel(this);
            if (topLevel == null)
                return;

            var files = await topLevel.StorageProvider.OpenFilePickerAsync(new FilePickerOpenOptions
            {
                Title = "Выберите чертеж",
                AllowMultiple = false
            });

            if (files.Count == 0)
                return;

            var file = files[0];
            await using var stream = await file.OpenReadAsync();
            using var memory = new MemoryStream();
            await stream.CopyToAsync(memory);

            var drawing = new ProductDrawing();
            drawing.IdProduct = productId;
            drawing.FileName = file.Name;
            drawing.FileData = memory.ToArray();
            App.DbContext.ProductDrawings.Add(drawing);
        }

        await App.DbContext.SaveChangesAsync();
        MessageTextBlock.Text = "Запись добавлена.";
        await LoadSectionItems();
    }

    private async void DeleteClick(object? sender, RoutedEventArgs e)
    {
        if (ItemsListBox.SelectedIndex < 0)
        {
            MessageTextBlock.Text = "Выберите строку в списке.";
            return;
        }

        var index = ItemsListBox.SelectedIndex;

        if (currentSection == "Размеры")
        {
            var items = await App.DbContext.ProductSizes.Where(s => s.IdProduct == productId).ToListAsync();
            App.DbContext.ProductSizes.Remove(items[index]);
        }
        else if (currentSection == "Материалы")
        {
            var items = await App.DbContext.SpecMaterials.Where(s => s.IdProduct == productId).ToListAsync();
            App.DbContext.SpecMaterials.Remove(items[index]);
        }
        else if (currentSection == "Комплектующие")
        {
            var items = await App.DbContext.SpecComponents.Where(s => s.IdProduct == productId).ToListAsync();
            App.DbContext.SpecComponents.Remove(items[index]);
        }
        else if (currentSection == "Сборочные единицы")
        {
            var items = await App.DbContext.SpecAssemblyUnits.Where(s => s.IdProduct == productId).ToListAsync();
            App.DbContext.SpecAssemblyUnits.Remove(items[index]);
        }
        else if (currentSection == "Операции")
        {
            var items = await App.DbContext.SpecOperations.Where(s => s.IdProduct == productId).OrderBy(s => s.SequenceNo).ToListAsync();
            App.DbContext.SpecOperations.Remove(items[index]);
        }
        else if (currentSection == "Чертежи")
        {
            var items = await App.DbContext.ProductDrawings.Where(d => d.IdProduct == productId).ToListAsync();
            App.DbContext.ProductDrawings.Remove(items[index]);
        }

        await App.DbContext.SaveChangesAsync();
        MessageTextBlock.Text = "Запись удалена.";
        await LoadSectionItems();
    }

    private void ItemSelectionChanged(object? sender, SelectionChangedEventArgs e)
    {
    }

    private async void PrintClick(object? sender, RoutedEventArgs e)
    {
        var text = await BuildPrintText();
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new PrintReportControl("Спецификация изделия", text, () => new SpecificationControl(productId));
    }

    private async Task<string> BuildPrintText()
    {
        var sb = new StringBuilder();
        sb.AppendLine(TitleTextBlock.Text);
        sb.AppendLine();

        var sizes = await App.DbContext.ProductSizes.Where(s => s.IdProduct == productId).ToListAsync();
        sb.AppendLine("Размеры:");
        foreach (var s in sizes)
            sb.AppendLine("- " + s.SizeName + " = " + s.SizeValue + " " + s.UnitName);

        var mats = await App.DbContext.SpecMaterials.Include(x => x.IdMaterialNavigation).Where(x => x.IdProduct == productId).ToListAsync();
        sb.AppendLine("Материалы:");
        foreach (var m in mats)
            sb.AppendLine("- " + m.IdMaterialNavigation.Article + " " + m.IdMaterialNavigation.MaterialName + " x " + m.Quantity);

        var comps = await App.DbContext.SpecComponents.Include(x => x.IdComponentNavigation).Where(x => x.IdProduct == productId).ToListAsync();
        sb.AppendLine("Комплектующие:");
        foreach (var c in comps)
            sb.AppendLine("- " + c.IdComponentNavigation.Article + " " + c.IdComponentNavigation.ComponentName + " x " + c.Quantity);

        var units = await App.DbContext.SpecAssemblyUnits.Include(x => x.IdChildProductNavigation).Where(x => x.IdProduct == productId).ToListAsync();
        sb.AppendLine("Сборочные единицы:");
        foreach (var u in units)
            sb.AppendLine("- " + u.IdChildProductNavigation.ProductName + " x " + u.Quantity);

        var ops = await App.DbContext.SpecOperations.Include(x => x.IdEquipmentTypeNavigation).Where(x => x.IdProduct == productId).OrderBy(x => x.SequenceNo).ToListAsync();
        sb.AppendLine("Операции:");
        foreach (var o in ops)
        {
            var typeName = o.IdEquipmentTypeNavigation == null ? "-" : o.IdEquipmentTypeNavigation.TypeName;
            sb.AppendLine("- " + o.SequenceNo + ". " + o.OperationName + " | " + typeName + " | " + o.OperationMinutes + " мин");
            if (o.OperationDescription != null && o.OperationDescription.Length > 0)
                sb.AppendLine("  Описание: " + o.OperationDescription);
        }

        return sb.ToString();
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new ProductsControl();
    }
}
