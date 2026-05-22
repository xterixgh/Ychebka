using Avalonia.Controls;
using Avalonia.Interactivity;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class ProductsControl : UserControl
{
    private List<Product> products = new List<Product>();

    public ProductsControl()
    {
        InitializeComponent();
        InitData();
    }

    private async void InitData()
    {
        products = await App.DbContext.Products.OrderBy(p => p.ProductName).ToListAsync();
        ProductsListBox.Items.Clear();
        foreach (var product in products)
            ProductsListBox.Items.Add(product.ProductName);
    }

    private void ProductSelectionChanged(object? sender, SelectionChangedEventArgs e)
    {
    }

    private void OpenSpecClick(object? sender, RoutedEventArgs e)
    {
        if (ProductsListBox.SelectedIndex < 0 || ProductsListBox.SelectedIndex >= products.Count)
        {
            MessageTextBlock.Text = "Выберите изделие.";
            return;
        }

        var product = products[ProductsListBox.SelectedIndex];
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new SpecificationControl(product.IdProduct);
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new MasterControl();
    }
}
