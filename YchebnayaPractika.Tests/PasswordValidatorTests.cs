using Xunit;
using YchebnayaPractika.Services;

namespace YchebnayaPractika.Tests;

public class PasswordValidatorTests
{
    [Theory]
    [InlineData("Abc1")]
    [InlineData("Pass9word")]
    public void Validate_AcceptsValidPassword(string password)
    {
        var (isValid, error) = PasswordValidator.Validate(password);

        Assert.True(isValid);
        Assert.Null(error);
    }

    [Theory]
    [InlineData("")]
    [InlineData("abc")]
    [InlineData("abcdefgh")]
    [InlineData("Abcdefgh")]
    [InlineData("abc1")]
    [InlineData("Pass*1")]
    public void Validate_RejectsInvalidPassword(string password)
    {
        var (isValid, error) = PasswordValidator.Validate(password);

        Assert.False(isValid);
        Assert.False(string.IsNullOrEmpty(error));
    }
}
