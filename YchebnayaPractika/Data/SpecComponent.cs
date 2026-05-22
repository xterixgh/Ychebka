using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class SpecComponent
{
    public int IdSpecComponent { get; set; }

    public int IdProduct { get; set; }

    public int IdComponent { get; set; }

    public decimal Quantity { get; set; }

    public virtual Component IdComponentNavigation { get; set; } = null!;

    public virtual Product IdProductNavigation { get; set; } = null!;
}
