using Avalonia.Controls;
using Avalonia.Interactivity;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class StockReportControl : UserControl
{
    private string reportText = "";
    private bool isBusy;

    public StockReportControl()
    {
        InitializeComponent();
        KindComboBox.Items.Clear();
        KindComboBox.Items.Add("Материалы");
        KindComboBox.Items.Add("Комплектующие");
        InitData();
    }

    private async void InitData()
    {
        KindComboBox.SelectedIndex = 0;
        await LoadTypes();
        await RefreshReport();

        KindComboBox.SelectionChanged += FilterChanged;
        TypeComboBox.SelectionChanged += FilterChanged;
    }

    private async Task LoadTypes()
    {
        TypeComboBox.SelectionChanged -= FilterChanged;

        TypeComboBox.Items.Clear();
        TypeComboBox.Items.Add("Все типы");

        if (KindComboBox.SelectedItem == null)
        {
            TypeComboBox.SelectedIndex = 0;
            TypeComboBox.SelectionChanged += FilterChanged;
            return;
        }

        var kind = KindComboBox.SelectedItem.ToString();
        if (kind == "Материалы")
        {
            var types = await App.DbContext.Materials.Select(m => m.MaterialType).Distinct().OrderBy(t => t).ToListAsync();
            foreach (var type in types)
                TypeComboBox.Items.Add(type);
        }
        else
        {
            var types = await App.DbContext.Components.Select(c => c.ComponentType).Distinct().OrderBy(t => t).ToListAsync();
            foreach (var type in types)
                TypeComboBox.Items.Add(type);
        }

        TypeComboBox.SelectedIndex = 0;
        TypeComboBox.SelectionChanged += FilterChanged;
    }

    private async void FilterChanged(object? sender, SelectionChangedEventArgs e)
    {
        if (isBusy)
            return;

        isBusy = true;
        try
        {
            if (sender == KindComboBox)
            {
                await LoadTypes();
                await RefreshReport();
            }
            else
            {
                await RefreshReport();
            }
        }
        finally
        {
            isBusy = false;
        }
    }

    private async void RefreshClick(object? sender, RoutedEventArgs e)
    {
        if (isBusy)
            return;

        isBusy = true;
        try
        {
            await LoadTypes();
            await RefreshReport();
        }
        finally
        {
            isBusy = false;
        }
    }

    private async Task RefreshReport()
    {
        ReportListBox.Items.Clear();
        var sb = new StringBuilder();
        sb.AppendLine("Отчет по остаткам");
        sb.AppendLine();

        var kind = KindComboBox.SelectedItem?.ToString() ?? "Материалы";
        var typeFilter = TypeComboBox.SelectedItem?.ToString() ?? "Все типы";

        decimal grandTotal = 0;

        if (kind == "Материалы")
        {
            var query = App.DbContext.Materials.Include(m => m.IdSupplierNavigation).AsQueryable();
            if (typeFilter != "Все типы")
                query = query.Where(m => m.MaterialType == typeFilter);

            var materials = await query.OrderBy(m => m.IdSupplier).ToListAsync();
            var groups = materials.GroupBy(m => m.IdSupplierNavigation == null ? "Без склада" : m.IdSupplierNavigation.SupplierName);

            foreach (var group in groups)
            {
                ReportListBox.Items.Add("=== Склад: " + group.Key + " ===");
                sb.AppendLine("=== Склад: " + group.Key + " ===");

                decimal groupTotal = 0;
                foreach (var item in group)
                {
                    var line = item.Article + " | " + item.MaterialName + " | " + item.MaterialType + " | " + item.QuantityInStock + " " + item.UnitName;
                    ReportListBox.Items.Add(line);
                    sb.AppendLine(line);
                    groupTotal = groupTotal + item.QuantityInStock;
                }

                ReportListBox.Items.Add("Итого на складе: " + groupTotal);
                sb.AppendLine("Итого на складе: " + groupTotal);
                sb.AppendLine();
                grandTotal = grandTotal + groupTotal;
            }
        }
        else
        {
            var query = App.DbContext.Components.Include(c => c.IdSupplierNavigation).AsQueryable();
            if (typeFilter != "Все типы")
                query = query.Where(c => c.ComponentType == typeFilter);

            var components = await query.OrderBy(c => c.IdSupplier).ToListAsync();
            var groups = components.GroupBy(c => c.IdSupplierNavigation == null ? "Без склада" : c.IdSupplierNavigation.SupplierName);

            foreach (var group in groups)
            {
                ReportListBox.Items.Add("=== Склад: " + group.Key + " ===");
                sb.AppendLine("=== Склад: " + group.Key + " ===");

                decimal groupTotal = 0;
                foreach (var item in group)
                {
                    var line = item.Article + " | " + item.ComponentName + " | " + item.ComponentType + " | " + item.QuantityInStock + " " + item.UnitName;
                    ReportListBox.Items.Add(line);
                    sb.AppendLine(line);
                    groupTotal = groupTotal + item.QuantityInStock;
                }

                ReportListBox.Items.Add("Итого на складе: " + groupTotal);
                sb.AppendLine("Итого на складе: " + groupTotal);
                sb.AppendLine();
                grandTotal = grandTotal + groupTotal;
            }
        }

        TotalTextBlock.Text = "Общий итог количества: " + grandTotal;
        sb.AppendLine("Общий итог количества: " + grandTotal);
        reportText = sb.ToString();
    }

    private void PrintClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new PrintReportControl("Отчет по складу", reportText, () => new StockReportControl());
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        var role = SessionData.CurrentUser?.IdUserRoleNavigation.RoleName;

        if (role == "Директор")
            mainWindow.MainControl.Content = new DirectorControl();
        else
            mainWindow.MainControl.Content = new ManagerControl();
    }
}
