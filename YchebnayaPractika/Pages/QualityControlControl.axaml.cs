using Avalonia.Controls;
using Avalonia.Interactivity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class QualityControlControl : UserControl
{
    private int orderId;
    private List<OrderQualityCheck> checks = new List<OrderQualityCheck>();

    public QualityControlControl(int orderId)
    {
        this.orderId = orderId;
        InitializeComponent();
        InitData();
    }

    private async void InitData()
    {
        await LoadChecks();
    }

    private async Task LoadChecks()
    {
        checks = await App.DbContext.OrderQualityChecks
            .Where(q => q.IdOrder == orderId)
            .OrderBy(q => q.ParameterName)
            .ToListAsync();

        ChecksListBox.Items.Clear();
        foreach (var check in checks)
        {
            ChecksListBox.Items.Add($"{check.ParameterName} | {check.GradeSign} | {check.CommentText ?? ""}");
        }
    }

    private void CheckSelectionChanged(object? sender, SelectionChangedEventArgs e)
    {
        if (ChecksListBox.SelectedIndex < 0 || ChecksListBox.SelectedIndex >= checks.Count)
            return;

        var check = checks[ChecksListBox.SelectedIndex];
        ParameterTextBox.Text = check.ParameterName;
        GradeTextBox.Text = check.GradeSign;
        CommentTextBox.Text = check.CommentText ?? "";
    }

    private async void AddClick(object? sender, RoutedEventArgs e)
    {
        if (SessionData.CurrentUser == null)
        {
            MessageTextBlock.Text = "Нужно войти в систему.";
            return;
        }

        if (ParameterTextBox.Text == null || ParameterTextBox.Text.Length == 0)
        {
            MessageTextBlock.Text = "Введите параметр.";
            return;
        }

        if (GradeTextBox.Text == null || (GradeTextBox.Text != "+" && GradeTextBox.Text != "-"))
        {
            MessageTextBlock.Text = "Оценка: + или -";
            return;
        }

        if (GradeTextBox.Text == "-" && (CommentTextBox.Text == null || CommentTextBox.Text.Length == 0))
        {
            MessageTextBlock.Text = "Для минуса нужен комментарий.";
            return;
        }

        var check = new OrderQualityCheck();
        check.IdOrder = orderId;
        check.ParameterName = ParameterTextBox.Text;
        check.GradeSign = GradeTextBox.Text;
        check.CommentText = CommentTextBox.Text;
        check.CheckedAt = DateTime.Now;
        check.IdMasterUser = SessionData.CurrentUser.IdUserAccount;

        App.DbContext.OrderQualityChecks.Add(check);
        await App.DbContext.SaveChangesAsync();

        MessageTextBlock.Text = "Параметр добавлен.";
        await LoadChecks();
    }

    private async void UpdateClick(object? sender, RoutedEventArgs e)
    {
        if (ChecksListBox.SelectedIndex < 0 || ChecksListBox.SelectedIndex >= checks.Count)
        {
            MessageTextBlock.Text = "Выберите параметр в списке.";
            return;
        }

        if (GradeTextBox.Text == null || (GradeTextBox.Text != "+" && GradeTextBox.Text != "-"))
        {
            MessageTextBlock.Text = "Оценка: + или -";
            return;
        }

        if (GradeTextBox.Text == "-" && (CommentTextBox.Text == null || CommentTextBox.Text.Length == 0))
        {
            MessageTextBlock.Text = "Для минуса нужен комментарий.";
            return;
        }

        var selected = checks[ChecksListBox.SelectedIndex];
        var check = await App.DbContext.OrderQualityChecks.FirstOrDefaultAsync(q => q.IdOrderQualityCheck == selected.IdOrderQualityCheck);
        if (check == null)
        {
            MessageTextBlock.Text = "Запись не найдена.";
            return;
        }

        check.GradeSign = GradeTextBox.Text;
        check.CommentText = CommentTextBox.Text;
        check.CheckedAt = DateTime.Now;

        await App.DbContext.SaveChangesAsync();
        MessageTextBlock.Text = "Оценка изменена.";
        await LoadChecks();
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new OrdersControl();
    }
}
