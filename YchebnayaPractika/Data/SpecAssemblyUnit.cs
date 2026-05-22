using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class SpecAssemblyUnit
{
    public int IdSpecAssemblyUnit { get; set; }

    public int IdProduct { get; set; }

    public int IdChildProduct { get; set; }

    public decimal Quantity { get; set; }

    public virtual Product IdChildProductNavigation { get; set; } = null!;

    public virtual Product IdProductNavigation { get; set; } = null!;
}
