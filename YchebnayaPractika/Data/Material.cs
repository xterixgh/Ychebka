using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class Material
{
    public int IdMaterial { get; set; }

    public string Article { get; set; } = null!;

    public string MaterialName { get; set; } = null!;

    public string UnitName { get; set; } = null!;

    public decimal QuantityInStock { get; set; }

    public int? IdSupplier { get; set; }

    public byte[]? Image { get; set; }

    public string MaterialType { get; set; } = null!;

    public decimal PurchasePrice { get; set; }

    public string? Gost { get; set; }

    public decimal? LengthValue { get; set; }

    public string? Characteristic { get; set; }

    public virtual Supplier? IdSupplierNavigation { get; set; }

    public virtual ICollection<SpecMaterial> SpecMaterials { get; set; } = new List<SpecMaterial>();
}
