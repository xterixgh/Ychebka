using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class ProductionOperation
{
    public int IdProductionOperation { get; set; }

    public string OperationName { get; set; } = null!;

    public virtual ICollection<WorkerOperation> WorkerOperations { get; set; } = new List<WorkerOperation>();
}
