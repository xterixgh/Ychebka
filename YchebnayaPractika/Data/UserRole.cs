using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class UserRole
{
    public int IdUserRole { get; set; }

    public string RoleName { get; set; } = null!;

    public virtual ICollection<UserAccount> UserAccounts { get; set; } = new List<UserAccount>();
}
