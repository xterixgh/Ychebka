using Avalonia.Controls;
using YchebnayaPractika.Pages;


namespace YchebnayaPractika;

public partial class MainWindow : Window
{
    public MainWindow()
    {
        InitializeComponent();
        MainControl.Content = new LoginControl();
    }
}