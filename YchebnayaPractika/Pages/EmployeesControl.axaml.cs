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

public partial class EmployeesControl : UserControl
{
    private List<UserAccount> employees = new List<UserAccount>();
    private List<UserRole> roles = new List<UserRole>();
    private bool isLoading;

    public EmployeesControl()
    {
        InitializeComponent();
        InitData();
    }

    private async void InitData()
    {
        await LoadEmployees();
    }

    private async Task LoadEmployees()
    {
        if (isLoading) return;
        isLoading = true;

        try
        {
            roles = await App.DbContext.UserRoles
                .Where(r => r.RoleName == "Мастер" || r.RoleName == "Конструктор")
                .OrderBy(r => r.RoleName)
                .ToListAsync();

            RoleComboBox.Items.Clear();
            foreach (var role in roles)
                RoleComboBox.Items.Add(role.RoleName);
            if (RoleComboBox.ItemCount > 0)
                RoleComboBox.SelectedIndex = 0;

            employees = await App.DbContext.UserAccounts
                .Include(u => u.IdUserRoleNavigation)
                .Include(u => u.Worker)
                    .ThenInclude(w => w!.WorkerOperations)
                        .ThenInclude(wo => wo.IdProductionOperationNavigation)
                .Where(u => u.IdUserRoleNavigation.RoleName == "Мастер" || u.IdUserRoleNavigation.RoleName == "Конструктор")
                .OrderBy(u => u.FullName)
                .ToListAsync();

            EmployeesListBox.Items.Clear();
            foreach (var user in employees)
            {
                var fullName = user.FullName ?? "";
                var lastName = fullName.Length == 0 ? "-" : fullName.Split(' ')[0];
                var operationsCount = user.Worker == null ? 0 : user.Worker.WorkerOperations.Count;
                EmployeesListBox.Items.Add($"{lastName} | {user.IdUserRoleNavigation.RoleName} | {user.Login} | операций: {operationsCount}");
            }

            StatsTextBlock.Text = $"Всего работников: {employees.Count}";
        }
        finally
        {
            isLoading = false;
        }
    }

    private void EmployeeSelectionChanged(object? sender, SelectionChangedEventArgs e)
    {
        if (EmployeesListBox.SelectedIndex < 0 || EmployeesListBox.SelectedIndex >= employees.Count)
            return;

        var user = employees[EmployeesListBox.SelectedIndex];
        FullNameTextBox.Text = user.FullName;
        LoginTextBox.Text = user.Login;
        PasswordTextBox.Text = user.PasswordHash;
        RoleComboBox.SelectedItem = user.IdUserRoleNavigation.RoleName;

        if (user.Worker != null)
        {
            BirthDateTextBox.Text = user.Worker.BirthDate.ToString("dd.MM.yyyy");
            HomeAddressTextBox.Text = user.Worker.HomeAddress;
            EducationTextBox.Text = user.Worker.Education;
            QualificationTextBox.Text = user.Worker.Qualification;

            var operationNames = user.Worker.WorkerOperations
                .Select(x => x.IdProductionOperationNavigation.OperationName)
                .OrderBy(x => x)
                .ToList();
            OperationsTextBox.Text = string.Join(", ", operationNames);
        }
        else
        {
            BirthDateTextBox.Text = "";
            HomeAddressTextBox.Text = "";
            EducationTextBox.Text = "";
            QualificationTextBox.Text = "";
            OperationsTextBox.Text = "";
        }
    }

    private async void AddClick(object? sender, RoutedEventArgs e)
    {
        if (SessionData.CurrentUser?.IdUserRoleNavigation.RoleName != "Директор")
        {
            MessageTextBlock.Text = "Доступ только для директора.";
            return;
        }

        if (FullNameTextBox.Text == null || LoginTextBox.Text == null || PasswordTextBox.Text == null || RoleComboBox.SelectedItem == null)
        {
            MessageTextBlock.Text = "Заполните все поля.";
            return;
        }

        if (BirthDateTextBox.Text == null || HomeAddressTextBox.Text == null || EducationTextBox.Text == null || QualificationTextBox.Text == null || OperationsTextBox.Text == null)
        {
            MessageTextBlock.Text = "Заполните данные работника.";
            return;
        }

        if (!DateOnly.TryParseExact(BirthDateTextBox.Text, "dd.MM.yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out var birthDate))
        {
            MessageTextBlock.Text = "Дата рождения в формате дд.мм.гггг.";
            return;
        }

        var roleName = RoleComboBox.SelectedItem.ToString();
        if (roleName != "Мастер" && roleName != "Конструктор")
        {
            MessageTextBlock.Text = "Можно добавлять только Мастер/Конструктор.";
            return;
        }

        var exists = await App.DbContext.UserAccounts.AnyAsync(u => u.Login == LoginTextBox.Text);
        if (exists)
        {
            MessageTextBlock.Text = "Логин уже существует.";
            return;
        }

        var role = await App.DbContext.UserRoles.FirstOrDefaultAsync(r => r.RoleName == roleName);
        if (role == null)
        {
            MessageTextBlock.Text = "Роль не найдена.";
            return;
        }

        var operationNamesInput = ParseOperationNames(OperationsTextBox.Text);
        if (operationNamesInput.Count == 0)
        {
            MessageTextBlock.Text = "Укажите хотя бы одну операцию.";
            return;
        }

        var user = new UserAccount();
        user.FullName = FullNameTextBox.Text;
        user.Login = LoginTextBox.Text;
        user.PasswordHash = PasswordTextBox.Text;
        user.IdUserRole = role.IdUserRole;

        App.DbContext.UserAccounts.Add(user);
        await App.DbContext.SaveChangesAsync();

        var worker = new Worker();
        worker.IdUserAccount = user.IdUserAccount;
        worker.BirthDate = birthDate;
        worker.HomeAddress = HomeAddressTextBox.Text;
        worker.Education = EducationTextBox.Text;
        worker.Qualification = QualificationTextBox.Text;
        App.DbContext.Workers.Add(worker);
        await App.DbContext.SaveChangesAsync();

        foreach (var operationName in operationNamesInput)
        {
            var operation = await App.DbContext.ProductionOperations
                .FirstOrDefaultAsync(x => x.OperationName == operationName);

            if (operation == null)
            {
                operation = new ProductionOperation();
                operation.OperationName = operationName;
                App.DbContext.ProductionOperations.Add(operation);
                await App.DbContext.SaveChangesAsync();
            }

            var workerOperation = new WorkerOperation();
            workerOperation.IdWorker = worker.IdWorker;
            workerOperation.IdProductionOperation = operation.IdProductionOperation;
            App.DbContext.WorkerOperations.Add(workerOperation);
        }

        await App.DbContext.SaveChangesAsync();
        MessageTextBlock.Text = "Работник добавлен.";
        await LoadEmployees();
    }

    private async void UpdateClick(object? sender, RoutedEventArgs e)
    {
        if (SessionData.CurrentUser?.IdUserRoleNavigation.RoleName != "Директор")
        {
            MessageTextBlock.Text = "Доступ только для директора.";
            return;
        }

        if (EmployeesListBox.SelectedIndex < 0 || EmployeesListBox.SelectedIndex >= employees.Count)
        {
            MessageTextBlock.Text = "Выберите работника в списке.";
            return;
        }

        if (FullNameTextBox.Text == null || LoginTextBox.Text == null || PasswordTextBox.Text == null || RoleComboBox.SelectedItem == null)
        {
            MessageTextBlock.Text = "Заполните все поля.";
            return;
        }

        if (BirthDateTextBox.Text == null || HomeAddressTextBox.Text == null || EducationTextBox.Text == null || QualificationTextBox.Text == null || OperationsTextBox.Text == null)
        {
            MessageTextBlock.Text = "Заполните данные работника.";
            return;
        }

        if (!DateOnly.TryParseExact(BirthDateTextBox.Text, "dd.MM.yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out var birthDate))
        {
            MessageTextBlock.Text = "Дата рождения в формате дд.мм.гггг.";
            return;
        }

        var roleName = RoleComboBox.SelectedItem.ToString();
        if (roleName != "Мастер" && roleName != "Конструктор")
        {
            MessageTextBlock.Text = "Можно выбрать только Мастер/Конструктор.";
            return;
        }

        var role = await App.DbContext.UserRoles.FirstOrDefaultAsync(r => r.RoleName == roleName);
        if (role == null)
        {
            MessageTextBlock.Text = "Роль не найдена.";
            return;
        }

        var selectedUser = employees[EmployeesListBox.SelectedIndex];
        var duplicateLogin = await App.DbContext.UserAccounts.AnyAsync(u =>
            u.Login == LoginTextBox.Text && u.IdUserAccount != selectedUser.IdUserAccount);
        if (duplicateLogin)
        {
            MessageTextBlock.Text = "Логин уже занят другим пользователем.";
            return;
        }

        var operationNamesInput = ParseOperationNames(OperationsTextBox.Text);
        if (operationNamesInput.Count == 0)
        {
            MessageTextBlock.Text = "Укажите хотя бы одну операцию.";
            return;
        }

        var user = await App.DbContext.UserAccounts
            .Include(x => x.Worker)
                .ThenInclude(x => x!.WorkerOperations)
            .FirstOrDefaultAsync(x => x.IdUserAccount == selectedUser.IdUserAccount);
        if (user == null)
        {
            MessageTextBlock.Text = "Работник не найден.";
            return;
        }

        user.FullName = FullNameTextBox.Text;
        user.Login = LoginTextBox.Text;
        user.PasswordHash = PasswordTextBox.Text;
        user.IdUserRole = role.IdUserRole;

        if (user.Worker == null)
        {
            user.Worker = new Worker();
            user.Worker.IdUserAccount = user.IdUserAccount;
            App.DbContext.Workers.Add(user.Worker);
        }

        user.Worker.BirthDate = birthDate;
        user.Worker.HomeAddress = HomeAddressTextBox.Text;
        user.Worker.Education = EducationTextBox.Text;
        user.Worker.Qualification = QualificationTextBox.Text;

        if (user.Worker.WorkerOperations.Count > 0)
            App.DbContext.WorkerOperations.RemoveRange(user.Worker.WorkerOperations);

        await App.DbContext.SaveChangesAsync();

        foreach (var operationName in operationNamesInput)
        {
            var operation = await App.DbContext.ProductionOperations
                .FirstOrDefaultAsync(x => x.OperationName == operationName);

            if (operation == null)
            {
                operation = new ProductionOperation();
                operation.OperationName = operationName;
                App.DbContext.ProductionOperations.Add(operation);
                await App.DbContext.SaveChangesAsync();
            }

            var workerOperation = new WorkerOperation();
            workerOperation.IdWorker = user.Worker.IdWorker;
            workerOperation.IdProductionOperation = operation.IdProductionOperation;
            App.DbContext.WorkerOperations.Add(workerOperation);
        }

        await App.DbContext.SaveChangesAsync();
        MessageTextBlock.Text = "Работник изменен.";
        await LoadEmployees();
    }

    private List<string> ParseOperationNames(string text)
    {
        var result = new List<string>();
        var parts = text.Split(',');
        foreach (var part in parts)
        {
            var value = part.Trim();
            if (value.Length == 0)
                continue;

            if (!result.Contains(value))
                result.Add(value);
        }

        return result;
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new DirectorControl();
    }
}
