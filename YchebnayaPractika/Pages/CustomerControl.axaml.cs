using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class CustomerControl : UserControl
{
    public CustomerControl()
    {
        InitializeComponent();
    }
    
    private void LogoutClick(object? sender, RoutedEventArgs routedEventArgs)
    {
        SessionData.CurrentUser = null;
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new LoginControl(false);
    }

    private void OpenOrdersClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new OrdersControl();
    }
}