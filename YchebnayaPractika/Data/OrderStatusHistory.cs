using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class OrderStatusHistory
{
    public int IdOrderStatusHistory { get; set; }

    public int IdOrder { get; set; }

    public string? OldStatus { get; set; }

    public string NewStatus { get; set; } = null!;

    public DateTime ChangedAt { get; set; }

    public int? IdChangedByUser { get; set; }

    public virtual UserAccount? IdChangedByUserNavigation { get; set; }

    public virtual Order IdOrderNavigation { get; set; } = null!;
}
