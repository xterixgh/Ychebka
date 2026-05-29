using System;
using System.Globalization;

namespace YchebnayaPractika.Services;

public static class OrderNumberBuilder
{
    /// <summary>
    /// Формирует 12-символьный номер: первая буква фамилии + первая буква имени + ГГГГММДД + порядковый номер (01–99).
    /// </summary>
    public static string Build(string? fullName, DateOnly orderDate, int existingOrdersSameCustomerSameDay)
    {
        var parts = (fullName ?? "").Split(' ', StringSplitOptions.RemoveEmptyEntries);
        var lastName = parts.Length > 0 ? parts[0] : "";
        var firstName = parts.Length > 1 ? parts[1] : "";

        var f = "_";
        if (lastName.Length > 0)
            f = lastName[..1].ToUpperInvariant();

        var i = "_";
        if (firstName.Length > 0)
            i = firstName[..1].ToUpperInvariant();

        var seq = existingOrdersSameCustomerSameDay + 1;
        if (seq > 99)
            seq = 1;

        var seqText = seq.ToString("00", CultureInfo.InvariantCulture);
        var dateText = orderDate.ToString("yyyyMMdd", CultureInfo.InvariantCulture);

        return f + i + dateText + seqText;
    }
}
