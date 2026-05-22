using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class SpecOperation
{
    public int IdSpecOperation { get; set; }

    public int IdProduct { get; set; }

    public string OperationName { get; set; } = null!;

    public int SequenceNo { get; set; }

    public int? IdEquipmentType { get; set; }

    public int OperationMinutes { get; set; }

    public string? OperationDescription { get; set; }

    public virtual EquipmentType? IdEquipmentTypeNavigation { get; set; }

    public virtual Product IdProductNavigation { get; set; } = null!;
}
