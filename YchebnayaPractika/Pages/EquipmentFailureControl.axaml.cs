using Avalonia.Controls;
using Avalonia.Interactivity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class EquipmentFailureControl : UserControl
{
    private List<EquipmentFailure> failures = new List<EquipmentFailure>();
    private List<Equipment> equipmentList = new List<Equipment>();

    public EquipmentFailureControl()
    {
        InitializeComponent();
        InitData();
    }

    private async void InitData()
    {
        equipmentList = await App.DbContext.Equipment
            .OrderBy(e => e.Marking)
            .ToListAsync();

        EquipmentComboBox.Items.Clear();
        foreach (var equipment in equipmentList)
            EquipmentComboBox.Items.Add(equipment.Marking);
        if (EquipmentComboBox.ItemCount > 0)
            EquipmentComboBox.SelectedIndex = 0;

        await LoadFailures();
    }

    private async Task LoadFailures()
    {
        failures = await App.DbContext.EquipmentFailures
            .Include(f => f.IdEquipmentNavigation)
            .OrderByDescending(f => f.FailureStart)
            .ToListAsync();

        FailuresListBox.Items.Clear();
        foreach (var failure in failures)
        {
            var endText = failure.FailureEnd == null ? "открыт" : failure.FailureEnd.Value.ToString("dd.MM.yyyy HH:mm");
            FailuresListBox.Items.Add($"{failure.IdEquipmentNavigation.Marking} | {failure.FailureStart:dd.MM.yyyy HH:mm} | {endText} | {failure.FailureReason}");
        }
    }

    private void FailureSelectionChanged(object? sender, SelectionChangedEventArgs e)
    {
        if (FailuresListBox.SelectedIndex < 0 || FailuresListBox.SelectedIndex >= failures.Count)
            return;

        var failure = failures[FailuresListBox.SelectedIndex];
        ReasonTextBox.Text = failure.FailureReason;
        StartTextBox.Text = failure.FailureStart.ToString("dd.MM.yyyy HH:mm");
        EndTextBox.Text = failure.FailureEnd == null ? "" : failure.FailureEnd.Value.ToString("dd.MM.yyyy HH:mm");

        for (var i = 0; i < equipmentList.Count; i++)
        {
            if (equipmentList[i].IdEquipment == failure.IdEquipment)
            {
                EquipmentComboBox.SelectedIndex = i;
                break;
            }
        }
    }

    private async void RegisterClick(object? sender, RoutedEventArgs e)
    {
        if (SessionData.CurrentUser == null)
        {
            MessageTextBlock.Text = "Нужно войти в систему.";
            return;
        }

        if (EquipmentComboBox.SelectedIndex < 0)
        {
            MessageTextBlock.Text = "Выберите оборудование.";
            return;
        }

        if (ReasonTextBox.Text == null || ReasonTextBox.Text.Length == 0)
        {
            MessageTextBlock.Text = "Укажите причину.";
            return;
        }

        if (StartTextBox.Text == null || StartTextBox.Text.Length == 0)
        {
            MessageTextBlock.Text = "Укажите время начала.";
            return;
        }

        if (!DateTime.TryParseExact(StartTextBox.Text, "dd.MM.yyyy HH:mm", CultureInfo.InvariantCulture, DateTimeStyles.None, out var startTime))
        {
            MessageTextBlock.Text = "Формат начала: дд.мм.гггг чч:мм";
            return;
        }

        var equipment = equipmentList[EquipmentComboBox.SelectedIndex];

        var failure = new EquipmentFailure();
        failure.IdEquipment = equipment.IdEquipment;
        failure.FailureReason = ReasonTextBox.Text;
        failure.FailureStart = startTime;
        failure.IdMasterUser = SessionData.CurrentUser.IdUserAccount;

        App.DbContext.EquipmentFailures.Add(failure);
        await App.DbContext.SaveChangesAsync();

        MessageTextBlock.Text = "Сбой зарегистрирован.";
        await LoadFailures();
    }

    private async void CloseFailureClick(object? sender, RoutedEventArgs e)
    {
        if (FailuresListBox.SelectedIndex < 0 || FailuresListBox.SelectedIndex >= failures.Count)
        {
            MessageTextBlock.Text = "Выберите сбой в списке.";
            return;
        }

        if (EndTextBox.Text == null || EndTextBox.Text.Length == 0)
        {
            MessageTextBlock.Text = "Укажите время окончания.";
            return;
        }

        if (!DateTime.TryParseExact(EndTextBox.Text, "dd.MM.yyyy HH:mm", CultureInfo.InvariantCulture, DateTimeStyles.None, out var endTime))
        {
            MessageTextBlock.Text = "Формат окончания: дд.мм.гггг чч:мм";
            return;
        }

        var selected = failures[FailuresListBox.SelectedIndex];
        var failure = await App.DbContext.EquipmentFailures.FirstOrDefaultAsync(f => f.IdEquipmentFailure == selected.IdEquipmentFailure);
        if (failure == null)
        {
            MessageTextBlock.Text = "Сбой не найден.";
            return;
        }

        failure.FailureEnd = endTime;
        await App.DbContext.SaveChangesAsync();

        MessageTextBlock.Text = "Сбой закрыт.";
        await LoadFailures();
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new MasterControl();
    }
}
