using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Platform.Storage;
using System;
using System.IO;
using System.Threading.Tasks;

namespace YchebnayaPractika.Pages;

public partial class PrintReportControl : UserControl
{
    private string reportText;
    private Func<UserControl> backFactory;

    public PrintReportControl(string title, string text, Func<UserControl> backFactory)
    {
        this.reportText = text;
        this.backFactory = backFactory;
        InitializeComponent();
        TitleTextBlock.Text = title;
        ReportTextBox.Text = text;
    }

    private async void SaveClick(object? sender, RoutedEventArgs e)
    {
        var topLevel = TopLevel.GetTopLevel(this);
        if (topLevel == null)
            return;

        var file = await topLevel.StorageProvider.SaveFilePickerAsync(new FilePickerSaveOptions
        {
            Title = "Сохранить отчет",
            SuggestedFileName = "report.txt"
        });

        if (file == null)
            return;

        await using var stream = await file.OpenWriteAsync();
        await using var writer = new StreamWriter(stream);
        await writer.WriteAsync(reportText);
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = backFactory();
    }
}
