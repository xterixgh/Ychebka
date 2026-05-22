using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class OrderSize
{
    public int IdOrderSize { get; set; }

    public int IdOrder { get; set; }

    public string SizeName { get; set; } = null!;

    public decimal SizeValue { get; set; }

    public string UnitName { get; set; } = null!;

    public virtual Order IdOrderNavigation { get; set; } = null!;
}
