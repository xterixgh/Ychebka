using System;
using System.Collections.Generic;

namespace YchebnayaPractika.Data;

public partial class OrderQualityCheck
{
    public int IdOrderQualityCheck { get; set; }

    public int IdOrder { get; set; }

    public string ParameterName { get; set; } = null!;

    public string GradeSign { get; set; } = null!;

    public string? CommentText { get; set; }

    public DateTime CheckedAt { get; set; }

    public int IdMasterUser { get; set; }

    public virtual UserAccount IdMasterUserNavigation { get; set; } = null!;

    public virtual Order IdOrderNavigation { get; set; } = null!;
}
