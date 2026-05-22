using Avalonia.Controls;
using Avalonia.Interactivity;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class DirectorControl : UserControl
{
    public DirectorControl()
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

    private void OpenEmployeesClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new EmployeesControl();
    }

    private void OpenOrdersClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new OrdersControl();
    }

    private void OpenWorkshopClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new WorkshopPlanningControl();
    }

    private void OpenStockReportClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new StockReportControl();
    }
}