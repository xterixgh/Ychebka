using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class Product
{
    public int IdProduct { get; set; }

    public string ProductName { get; set; } = null!;

    public string DimensionsText { get; set; } = null!;

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();

    public virtual ICollection<ProductDrawing> ProductDrawings { get; set; } = new List<ProductDrawing>();

    public virtual ICollection<ProductSize> ProductSizes { get; set; } = new List<ProductSize>();

    public virtual ICollection<SpecAssemblyUnit> SpecAssemblyUnitIdChildProductNavigations { get; set; } = new List<SpecAssemblyUnit>();

    public virtual ICollection<SpecAssemblyUnit> SpecAssemblyUnitIdProductNavigations { get; set; } = new List<SpecAssemblyUnit>();

    public virtual ICollection<SpecComponent> SpecComponents { get; set; } = new List<SpecComponent>();

    public virtual ICollection<SpecMaterial> SpecMaterials { get; set; } = new List<SpecMaterial>();

    public virtual ICollection<SpecOperation> SpecOperations { get; set; } = new List<SpecOperation>();
}
