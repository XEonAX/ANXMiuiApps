.class public Lcom/miui/gallery/discovery/DailyCheckJob;
.super Lcom/miui/gallery/discovery/AbstractJob;
.source "DailyCheckJob.java"


# static fields
.field private static isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/miui/gallery/discovery/DailyCheckJob;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/gallery/discovery/AbstractJob;-><init>()V

    return-void
.end method

.method private doCheck()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->checkTaskList()V

    .line 37
    invoke-static {}, Lcom/miui/gallery/discovery/PrintSilentInstallTask;->isPrintSilentInstallEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3, v3}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->postTask(ILjava/lang/Object;Ljava/lang/String;)V

    .line 41
    :cond_0
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->isImageFeatureSelectionEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v0

    const/4 v1, 0x6

    const-class v2, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->postTask(ILjava/lang/Object;Ljava/lang/String;)V

    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public execJob()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    sget-object v0, Lcom/miui/gallery/discovery/DailyCheckJob;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/discovery/DailyCheckJob;->doCheck()V

    .line 25
    sget-object v0, Lcom/miui/gallery/discovery/DailyCheckJob;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "DailyCheckJob"

    const-string v1, "A same job is still running."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getJobInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/job/JobInfo;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 48
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    iget v2, p0, Lcom/miui/gallery/discovery/DailyCheckJob;->mJobId:I

    invoke-direct {v1, v2, p2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 52
    .local v0, "jobInfo":Landroid/app/job/JobInfo;
    return-object v0
.end method
