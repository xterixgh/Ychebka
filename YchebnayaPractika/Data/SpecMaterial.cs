using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class SpecMaterial
{
    public int IdSpecMaterial { get; set; }

    public int IdProduct { get; set; }

    public int IdMaterial { get; set; }

    public decimal Quantity { get; set; }

    public virtual Material IdMaterialNavigation { get; set; } = null!;

    public virtual Product IdProductNavigation { get; set; } = null!;
}
