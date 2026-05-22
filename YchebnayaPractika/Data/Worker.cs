using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class Worker
{
    public int IdWorker { get; set; }

    public int IdUserAccount { get; set; }

    public DateOnly BirthDate { get; set; }

    public string HomeAddress { get; set; } = null!;

    public string Education { get; set; } = null!;

    public string Qualification { get; set; } = null!;

    public virtual UserAccount IdUserAccountNavigation { get; set; } = null!;

    public virtual ICollection<WorkerOperation> WorkerOperations { get; set; } = new List<WorkerOperation>();
}
