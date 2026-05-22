using Avalonia;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Markup.Xaml;
using YchebnayaPractika.Data;

namespace YchebnayaPractika;

public partial class App : Application
{
    public static AppDbContext DbContext { get; private set; } = new AppDbContext();
    
    public override void Initialize()
    {
        AvaloniaXamlLoader.Load(this);
    }
    
    

    public override void OnFrameworkInitializationCompleted()
    {
        if (ApplicationLifetime is IClassicDesktopStyleApplicationLifetime desktop)
        {
            desktop.MainWindow = new MainWindow();
        }

        base.OnFrameworkInitializationCompleted();
    }
}