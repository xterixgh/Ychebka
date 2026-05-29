using Xunit;
using YchebnayaPractika.Services;

namespace YchebnayaPractika.Tests;

public class CustomerOrderPermissionsTests
{
    [Theory]
    [InlineData("Новый", true, true, true)]
    [InlineData("Составление спецификации", false, false, true)]
    [InlineData("Подтверждение", false, false, true)]
    [InlineData("Закупка", false, false, false)]
    [InlineData("Закрыт", false, false, false)]
    public void Permissions_MatchStatus(
        string status,
        bool canEdit,
        bool canDelete,
        bool canCancel)
    {
        Assert.Equal(canEdit, CustomerOrderPermissions.CanEdit(status));
        Assert.Equal(canDelete, CustomerOrderPermissions.CanDelete(status));
        Assert.Equal(canCancel, CustomerOrderPermissions.CanCancel(status));
    }
}
