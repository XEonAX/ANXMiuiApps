.class public Lcom/miui/gallery/pendingtask/base/PendingTaskService;
.super Landroid/app/job/JobService;
.source "PendingTaskService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;
    }
.end annotation


# instance fields
.field private mRunningQueue:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/gallery/threadpool/Future;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/miui/gallery/threadpool/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->mRunningQueue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/pendingtask/base/PendingTaskService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/pendingtask/base/PendingTaskService;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->mRunningQueue:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static cancelJob(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobId"    # I

    .prologue
    .line 50
    const-string v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 51
    .local v0, "js":Landroid/app/job/JobScheduler;
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 52
    return-void
.end method

.method public static getAllPendingJob(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    const-string v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 45
    .local v0, "js":Landroid/app/job/JobScheduler;
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static scheduleJob(Landroid/content/Context;Landroid/app/job/JobInfo;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobInfo"    # Landroid/app/job/JobInfo;

    .prologue
    .line 23
    const-string v1, "PendingTaskService"

    const-string v2, "scheduleJob jobId: %s"

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    const-string v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 25
    .local v0, "js":Landroid/app/job/JobScheduler;
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 26
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 83
    const-string v0, "PendingTaskService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    iput-object v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->mThreadPool:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->mRunningQueue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 109
    const-string v0, "PendingTaskService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->mThreadPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v0}, Lcom/miui/gallery/threadpool/ThreadPool;->shutdown()V

    .line 111
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 90
    const-string v1, "PendingTaskService"

    const-string v2, "onStartJob jobId: %s"

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->mThreadPool:Lcom/miui/gallery/threadpool/ThreadPool;

    new-instance v2, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskService$PendingTaskJob;-><init>(Lcom/miui/gallery/pendingtask/base/PendingTaskService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    .line 92
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    iget-object v1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->mRunningQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/4 v1, 0x1

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 98
    const-string v1, "PendingTaskService"

    const-string v2, "onStopJob jobId: %s"

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->mRunningQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 100
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 103
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
