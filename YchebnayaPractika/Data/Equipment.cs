using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class Equipment
{
    public int IdEquipment { get; set; }

    public string Marking { get; set; } = null!;

    public int IdEquipmentType { get; set; }

    public string? Characteristics { get; set; }

    public virtual ICollection<EquipmentFailure> EquipmentFailures { get; set; } = new List<EquipmentFailure>();

    public virtual EquipmentType IdEquipmentTypeNavigation { get; set; } = null!;
}
