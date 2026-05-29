namespace YchebnayaPractika.Services;

public static class PasswordValidator
{
    public static (bool IsValid, string? ErrorMessage) Validate(string? password)
    {
        if (password == null || password.Length == 0)
            return (false, "Заполните все поля.");

        if (password.Length < 4 || password.Length > 16)
            return (false, "Пароль должен быть от 4 до 16 символов.");

        if (password.Contains('*') || password.Contains('&') || password.Contains('{') ||
            password.Contains('}') || password.Contains('|') || password.Contains('+'))
            return (false, "Пароль содержит запрещенные символы: * & { } | +");

        var hasUpper = false;
        var hasDigit = false;
        foreach (var c in password)
        {
            if (char.IsUpper(c))
                hasUpper = true;
            if (char.IsDigit(c))
                hasDigit = true;
        }

        if (!hasUpper || !hasDigit)
            return (false, "Пароль должен содержать заглавную букву и цифру.");

        return (true, null);
    }
}
