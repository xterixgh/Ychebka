using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class EquipmentType
{
    public int IdEquipmentType { get; set; }

    public string TypeName { get; set; } = null!;

    public virtual ICollection<Equipment> Equipment { get; set; } = new List<Equipment>();

    public virtual ICollection<SpecOperation> SpecOperations { get; set; } = new List<SpecOperation>();
}
