using Avalonia.Controls;
using Avalonia.Interactivity;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class ManagerControl : UserControl
{
    public ManagerControl()
    {
        InitializeComponent();
    }

    private void LogoutClick(object? sender, RoutedEventArgs e)
    {
        SessionData.CurrentUser = null;
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new LoginControl(false);
    }

    private void OpenMaterialsClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new MaterialsControl();
    }

    private void OpenComponentsClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new ComponentsControl();
    }

    private void OpenOrdersClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new OrdersControl();
    }

    private void OpenStockReportClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new StockReportControl();
    }
}