using Avalonia.Controls;
using Avalonia.Interactivity;
using Microsoft.EntityFrameworkCore;
using YchebnayaPractika.Data;

namespace YchebnayaPractika.Pages;

public partial class RegisterControl : UserControl
{
    public RegisterControl()
    {
        InitializeComponent();
    }

    private void BackClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new LoginControl(false);
    }

    private async void RegisterClick(object? sender, RoutedEventArgs e)
    {
        var login = LoginTextBox.Text;
        var password = PasswordTextBox.Text;
        var fullName = FullNameTextBox.Text;

        if (login == null || password == null || fullName == null)
        {
            MessageTextBlock.Text = "Заполните все поля.";
            return;
        }

        if (login.Length == 0 || password.Length == 0 || fullName.Length == 0)
        {
            MessageTextBlock.Text = "Заполните все поля.";
            return;
        }

        if (password.Length < 4 || password.Length > 16)
        {
            MessageTextBlock.Text = "Пароль должен быть от 4 до 16 символов.";
            return;
        }

        if (password.Contains("*") || password.Contains("&") || password.Contains("{") ||
            password.Contains("}") || password.Contains("|") || password.Contains("+"))
        {
            MessageTextBlock.Text = "Пароль содержит запрещенные символы: * & { } | +";
            return;
        }

        bool hasUpper = false;
        bool hasDigit = false;
        foreach (char c in password)
        {
            if (char.IsUpper(c))
                hasUpper = true;
            if (char.IsDigit(c))
                hasDigit = true;
        }

        if (!hasUpper || !hasDigit)
        {
            MessageTextBlock.Text = "Пароль должен содержать заглавную букву и цифру.";
            return;
        }

        var exists = await App.DbContext.UserAccounts.AnyAsync(u => u.Login == login);
        if (exists)
        {
            MessageTextBlock.Text = "Логин уже занят.";
            return;
        }

        var customerRole = await App.DbContext.UserRoles.FirstOrDefaultAsync(r => r.RoleName == "Заказчик");
        if (customerRole == null)
        {
            MessageTextBlock.Text = "Роль 'Заказчик' не найдена в базе.";
            return;
        }

        var newUser = new UserAccount();
        newUser.Login = login;
        newUser.PasswordHash = password;
        newUser.FullName = fullName;
        newUser.IdUserRole = customerRole.IdUserRole;

        App.DbContext.UserAccounts.Add(newUser);
        await App.DbContext.SaveChangesAsync();

        MessageTextBlock.Foreground = Avalonia.Media.Brushes.LightGreen;
        MessageTextBlock.Text = "Регистрация успешно завершена.";

        LoginTextBox.Text = "";
        PasswordTextBox.Text = "";
        FullNameTextBox.Text = "";

        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new LoginControl(false);
    }
}