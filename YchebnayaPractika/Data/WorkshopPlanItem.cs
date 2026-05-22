using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class WorkshopPlanItem
{
    public int IdWorkshopPlanItem { get; set; }

    public int IdWorkshop { get; set; }

    public string IconType { get; set; } = null!;

    public decimal PosX { get; set; }

    public decimal PosY { get; set; }

    public virtual Workshop IdWorkshopNavigation { get; set; } = null!;
}
