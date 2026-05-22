using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class Order
{
    public int IdOrder { get; set; }

    public string OrderNumber { get; set; } = null!;

    public DateOnly OrderDate { get; set; }

    public string OrderName { get; set; } = null!;

    public int IdProduct { get; set; }

    public int IdCustomerUser { get; set; }

    public int? IdManagerUser { get; set; }

    public decimal? OrderCost { get; set; }

    public DateOnly? PlannedFinishDate { get; set; }

    public string Status { get; set; } = null!;

    public string? RejectReason { get; set; }

    public string? ProductDescription { get; set; }

    public decimal OrderQuantity { get; set; }

    public virtual UserAccount IdCustomerUserNavigation { get; set; } = null!;

    public virtual UserAccount? IdManagerUserNavigation { get; set; }

    public virtual Product IdProductNavigation { get; set; } = null!;

    public virtual ICollection<OrderDrawing> OrderDrawings { get; set; } = new List<OrderDrawing>();

    public virtual ICollection<OrderQualityCheck> OrderQualityChecks { get; set; } = new List<OrderQualityCheck>();

    public virtual ICollection<OrderSize> OrderSizes { get; set; } = new List<OrderSize>();

    public virtual ICollection<OrderStatusHistory> OrderStatusHistories { get; set; } = new List<OrderStatusHistory>();
}
