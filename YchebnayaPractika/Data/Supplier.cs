using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class Supplier
{
    public int IdSupplier { get; set; }

    public string SupplierName { get; set; } = null!;

    public string? Address { get; set; }

    public int DeliveryDays { get; set; }

    public virtual ICollection<Component> Components { get; set; } = new List<Component>();

    public virtual ICollection<Material> Materials { get; set; } = new List<Material>();
}
