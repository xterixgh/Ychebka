using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class Workshop
{
    public int IdWorkshop { get; set; }

    public string WorkshopName { get; set; } = null!;

    public byte[] PlanImage { get; set; } = null!;

    public virtual ICollection<WorkshopPlanItem> WorkshopPlanItems { get; set; } = new List<WorkshopPlanItem>();
}
