.class public Lcom/miui/internal/server/CoreJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/CoreJobService$AbstractJob;,
        Lcom/miui/internal/server/CoreJobService$UnmerteredNetworkJob;,
        Lcom/miui/internal/server/CoreJobService$AnyNetworkJob;
    }
.end annotation


# static fields
.field private static final INTERVAL_DAY:J = 0x5265c00L

.field private static final JOB_SCHEDULER_SERVICE:Ljava/lang/String; = "jobscheduler"

.field private static final TAG:Ljava/lang/String; = "CoreJobService"

.field private static final hy:I = 0x1

.field private static final hz:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;II)Landroid/app/job/JobInfo;
    .locals 2

    .line 56
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/miui/internal/server/CoreJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, p1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 59
    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 60
    invoke-virtual {p0, p2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/miui/internal/server/CoreJobService$AbstractJob;)V
    .locals 1

    .line 89
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    return-void
.end method

.method private static i(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .locals 1

    .line 48
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/miui/internal/server/CoreJobService;->a(Landroid/content/Context;II)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method private static j(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .locals 1

    .line 52
    const/4 v0, 0x2

    invoke-static {p0, v0, v0}, Lcom/miui/internal/server/CoreJobService;->a(Landroid/content/Context;II)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public static scheduleJobs(Landroid/content/Context;)V
    .locals 4

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 31
    const-string v1, "jobscheduler"

    .line 32
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 33
    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 36
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    invoke-static {p0}, Lcom/miui/internal/server/CoreJobService;->i(Landroid/content/Context;)Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 42
    :cond_1
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    invoke-static {p0}, Lcom/miui/internal/server/CoreJobService;->j(Landroid/content/Context;)Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 45
    :cond_2
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 66
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 67
    return v0

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 78
    const-string v1, "CoreJobService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown job id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return v0

    .line 75
    :pswitch_0
    new-instance v0, Lcom/miui/internal/server/CoreJobService$UnmerteredNetworkJob;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/server/CoreJobService$UnmerteredNetworkJob;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    invoke-direct {p0, v0}, Lcom/miui/internal/server/CoreJobService;->a(Lcom/miui/internal/server/CoreJobService$AbstractJob;)V

    .line 76
    return v2

    .line 72
    :pswitch_1
    new-instance v0, Lcom/miui/internal/server/CoreJobService$AnyNetworkJob;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/server/CoreJobService$AnyNetworkJob;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    invoke-direct {p0, v0}, Lcom/miui/internal/server/CoreJobService;->a(Lcom/miui/internal/server/CoreJobService$AbstractJob;)V

    .line 73
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 85
    const/4 p1, 0x0

    return p1
.end method
