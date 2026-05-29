using Xunit;
using YchebnayaPractika.Services;

namespace YchebnayaPractika.Tests;

public class OrderNumberBuilderTests
{
    [Fact]
    public void Build_UsesInitialsAndDateAndSequence()
    {
        var number = OrderNumberBuilder.Build("Иванов Иван", new DateOnly(2026, 5, 20), 0);

        Assert.Equal("ИИ2026052001", number);
        Assert.Equal(12, number.Length);
    }

    [Fact]
    public void Build_IncrementsSequenceForSameDay()
    {
        var first = OrderNumberBuilder.Build("Петров Петр", new DateOnly(2026, 5, 20), 0);
        var second = OrderNumberBuilder.Build("Петров Петр", new DateOnly(2026, 5, 20), 1);

        Assert.EndsWith("01", first);
        Assert.EndsWith("02", second);
    }

    [Fact]
    public void Build_WrapsSequenceAfter99()
    {
        var number = OrderNumberBuilder.Build("Сидоров Сидор", new DateOnly(2026, 1, 1), 99);

        Assert.EndsWith("01", number);
    }

    [Fact]
    public void Build_UsesUnderscoresWhenNameMissing()
    {
        var number = OrderNumberBuilder.Build("", new DateOnly(2026, 5, 1), 0);

        Assert.StartsWith("__", number);
        Assert.Contains("20260501", number);
    }
}
