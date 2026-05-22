using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class WorkerOperation
{
    public int IdWorkerOperation { get; set; }

    public int IdWorker { get; set; }

    public int IdProductionOperation { get; set; }

    public virtual ProductionOperation IdProductionOperationNavigation { get; set; } = null!;

    public virtual Worker IdWorkerNavigation { get; set; } = null!;
}
