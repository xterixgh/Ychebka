using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class ProductSize
{
    public int IdProductSize { get; set; }

    public int IdProduct { get; set; }

    public string SizeName { get; set; } = null!;

    public string UnitName { get; set; } = null!;

    public decimal SizeValue { get; set; }

    public virtual Product IdProductNavigation { get; set; } = null!;
}
