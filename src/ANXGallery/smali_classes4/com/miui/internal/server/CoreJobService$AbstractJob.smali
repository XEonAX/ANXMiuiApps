.class abstract Lcom/miui/internal/server/CoreJobService$AbstractJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/CoreJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractJob"
.end annotation


# instance fields
.field private hA:Landroid/app/job/JobService;

.field private hB:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/miui/internal/server/CoreJobService$AbstractJob;->hA:Landroid/app/job/JobService;

    .line 123
    iput-object p2, p0, Lcom/miui/internal/server/CoreJobService$AbstractJob;->hB:Landroid/app/job/JobParameters;

    .line 124
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/miui/internal/server/CoreJobService$AbstractJob;->hA:Landroid/app/job/JobService;

    iget-object v1, p0, Lcom/miui/internal/server/CoreJobService$AbstractJob;->hB:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 129
    return-void
.end method
