.class public Lcom/miui/gallery/cloud/jobs/SyncJobService;
.super Landroid/app/job/JobService;
.source "SyncJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;,
        Lcom/miui/gallery/cloud/jobs/SyncJobService$JobFactory;
    }
.end annotation


# instance fields
.field private mTaskManager:Lcom/miui/gallery/cloud/taskmanager/TaskManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 131
    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobId"    # I

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobFactory;->createJob(I)Lcom/miui/gallery/cloud/jobs/AbsSyncJob;

    move-result-object v0

    .line 66
    .local v0, "job":Lcom/miui/gallery/cloud/jobs/AbsSyncJob;
    if-eqz v0, :cond_1

    .line 67
    invoke-static {p0, v0}, Lcom/miui/gallery/cloud/jobs/SyncJobService;->scheduleJob(Landroid/content/Context;Lcom/miui/gallery/cloud/jobs/AbsSyncJob;)I

    move-result v1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static scheduleJob(Landroid/content/Context;Lcom/miui/gallery/cloud/jobs/AbsSyncJob;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "job"    # Lcom/miui/gallery/cloud/jobs/AbsSyncJob;

    .prologue
    const/4 v6, 0x1

    .line 73
    const-string v7, "jobscheduler"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobScheduler;

    .line 74
    .local v5, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {v5}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v4

    .line 75
    .local v4, "jobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    new-instance v0, Landroid/content/ComponentName;

    const-class v7, Lcom/miui/gallery/cloud/jobs/SyncJobService;

    invoke-direct {v0, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 79
    .local v2, "isPendingJob":Z
    invoke-virtual {p1, p0, v0}, Lcom/miui/gallery/cloud/jobs/AbsSyncJob;->getJobInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/job/JobInfo;

    move-result-object v1

    .line 80
    .local v1, "info":Landroid/app/job/JobInfo;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 81
    .local v3, "jobInfo":Landroid/app/job/JobInfo;
    invoke-virtual {p1, v1, v3}, Lcom/miui/gallery/cloud/jobs/AbsSyncJob;->equals(Landroid/app/job/JobInfo;Landroid/app/job/JobInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 82
    const/4 v2, 0x1

    .line 86
    .end local v3    # "jobInfo":Landroid/app/job/JobInfo;
    :cond_1
    if-eqz v2, :cond_2

    .line 87
    const-string v7, "SyncJobService"

    const-string v8, "scheduledJob %d"

    invoke-virtual {p1}, Lcom/miui/gallery/cloud/jobs/AbsSyncJob;->getJobId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :goto_0
    return v6

    .line 92
    :cond_2
    if-nez v1, :cond_4

    .line 93
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/jobs/AbsSyncJob;->getJobId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 94
    const-string v6, "SyncJobService"

    const-string v7, "cancel Job %d"

    invoke-virtual {p1}, Lcom/miui/gallery/cloud/jobs/AbsSyncJob;->getJobId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {v5, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v7

    if-lez v7, :cond_3

    .line 96
    const-string v7, "SyncJobService"

    const-string v8, "scheduleJob %d success"

    invoke-virtual {p1}, Lcom/miui/gallery/cloud/jobs/AbsSyncJob;->getJobId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 32
    new-instance v0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/taskmanager/TaskManager;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService;->mTaskManager:Lcom/miui/gallery/cloud/taskmanager/TaskManager;

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService;->mTaskManager:Lcom/miui/gallery/cloud/taskmanager/TaskManager;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService;->mTaskManager:Lcom/miui/gallery/cloud/taskmanager/TaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->shutdown()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService;->mTaskManager:Lcom/miui/gallery/cloud/taskmanager/TaskManager;

    .line 42
    :cond_0
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    const-string v0, "SyncJobService"

    const-string v1, "onStartJob %s"

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService;->mTaskManager:Lcom/miui/gallery/cloud/taskmanager/TaskManager;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService;->mTaskManager:Lcom/miui/gallery/cloud/taskmanager/TaskManager;

    new-instance v1, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;-><init>(Lcom/miui/gallery/cloud/jobs/SyncJobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->submit(Lcom/miui/gallery/cloud/taskmanager/Task;)V

    .line 52
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
