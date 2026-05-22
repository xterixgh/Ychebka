using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class EquipmentFailure
{
    public int IdEquipmentFailure { get; set; }

    public int IdEquipment { get; set; }

    public DateTime FailureStart { get; set; }

    public DateTime? FailureEnd { get; set; }

    public string FailureReason { get; set; } = null!;

    public int IdMasterUser { get; set; }

    public virtual Equipment IdEquipmentNavigation { get; set; } = null!;

    public virtual UserAccount IdMasterUserNavigation { get; set; } = null!;
}
