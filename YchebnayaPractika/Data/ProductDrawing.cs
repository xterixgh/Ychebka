using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class ProductDrawing
{
    public int IdProductDrawing { get; set; }

    public int IdProduct { get; set; }

    public string FileName { get; set; } = null!;

    public byte[] FileData { get; set; } = null!;

    public virtual Product IdProductNavigation { get; set; } = null!;
}
