using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class UserAccount
{
    public int IdUserAccount { get; set; }

    public string Login { get; set; } = null!;

    public string PasswordHash { get; set; } = null!;

    public string? FullName { get; set; }

    public byte[]? Photo { get; set; }

    public int IdUserRole { get; set; }

    public virtual ICollection<EquipmentFailure> EquipmentFailures { get; set; } = new List<EquipmentFailure>();

    public virtual UserRole IdUserRoleNavigation { get; set; } = null!;

    public virtual ICollection<Order> OrderIdCustomerUserNavigations { get; set; } = new List<Order>();

    public virtual ICollection<Order> OrderIdManagerUserNavigations { get; set; } = new List<Order>();

    public virtual ICollection<OrderQualityCheck> OrderQualityChecks { get; set; } = new List<OrderQualityCheck>();

    public virtual ICollection<OrderStatusHistory> OrderStatusHistories { get; set; } = new List<OrderStatusHistory>();

    public virtual Worker? Worker { get; set; }
}
