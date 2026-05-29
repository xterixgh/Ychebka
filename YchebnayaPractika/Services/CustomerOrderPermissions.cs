namespace YchebnayaPractika.Services;

public static class CustomerOrderPermissions
{
    public static bool CanEdit(string status) => status == "Новый";

    public static bool CanDelete(string status) => status == "Новый";

    public static bool CanCancel(string status) =>
        status is "Новый" or "Составление спецификации" or "Подтверждение";
}
