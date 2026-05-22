using Avalonia.Controls;
using Avalonia.Interactivity;
using Microsoft.EntityFrameworkCore;
using YchebnayaPractika.Data;
using System.IO;

namespace YchebnayaPractika.Pages;

public partial class LoginControl : UserControl
{
    private string rememberPath = "remember.txt";

    public LoginControl() : this(true)
    {
    }

    public LoginControl(bool needAutoLogin)
    {
        InitializeComponent();
        SessionData.CurrentUser = null;

        if (needAutoLogin)
            AutoLogin();
    }
    
    private async void LoginButtonClick(object? sender, RoutedEventArgs e)
    {
        var login = LoginTextBox.Text;
        var password = PasswordTextBox.Text;

        if (login == null || password == null || login.Length == 0 || password.Length == 0)
        {
            MessageTextBlock.Text = "Введите логин и пароль.";
            LoginTextBox.Focus();
            return;
        }
        
        var user = await App.DbContext.UserAccounts
            .Include(u => u.IdUserRoleNavigation)
            .FirstOrDefaultAsync(u => u.Login == login && u.PasswordHash == password);

        if (user == null)
        {
            PasswordTextBox.Text = "";
            MessageTextBlock.Text = "Неверный логин или пароль.";
            LoginTextBox.Focus();
            return;
        }
        
        SessionData.CurrentUser = user;
        SaveRemember(login, password);

        OpenRoleScreen(user);
    }

    private void ExitAppClick(object? sender, RoutedEventArgs e)
    {
        DeleteRemember();
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.Close();
    }

    private void RegisterButtonClick(object? sender, RoutedEventArgs e)
    {
        var mainWindow = (MainWindow)VisualRoot!;
        mainWindow.MainControl.Content = new RegisterControl();
    }

    private void OpenRoleScreen(UserAccount user)
    {
        var mainWindow = (MainWindow)VisualRoot!;

        switch (user.IdUserRoleNavigation.RoleName)
        {
            case "Заказчик":
                mainWindow.MainControl.Content = new CustomerControl();
                break;
            case "Менеджер":
                mainWindow.MainControl.Content = new ManagerControl();
                break;
            case "Директор":
                mainWindow.MainControl.Content = new DirectorControl();
                break;
            case "Мастер":
                mainWindow.MainControl.Content = new MasterControl();
                break;
            case "Конструктор":
                mainWindow.MainControl.Content = new ConstructorControl();
                break;
            default:
                MessageTextBlock.Text = "Неизвестная роль пользователя.";
                PasswordTextBox.Text = "";
                LoginTextBox.Focus();
                break;
        }
    }

    private void SaveRemember(string login, string password)
    {
        if (RememberMeCheckBox.IsChecked == true)
        {
            File.WriteAllText(rememberPath, login + "\n" + password);
        }
        else
        {
            DeleteRemember();
        }
    }

    private void DeleteRemember()
    {
        if (File.Exists(rememberPath))
            File.Delete(rememberPath);
    }

    private async void AutoLogin()
    {
        if (!File.Exists(rememberPath))
            return;

        var lines = File.ReadAllLines(rememberPath);
        if (lines.Length < 2)
            return;

        var login = lines[0];
        var password = lines[1];

        var user = await App.DbContext.UserAccounts
            .Include(u => u.IdUserRoleNavigation)
            .FirstOrDefaultAsync(u => u.Login == login && u.PasswordHash == password);

        if (user == null)
        {
            DeleteRemember();
            return;
        }

        SessionData.CurrentUser = user;
        OpenRoleScreen(user);
    }
}