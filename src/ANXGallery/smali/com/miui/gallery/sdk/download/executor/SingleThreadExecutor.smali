.class public Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;
.super Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;
.source "SingleThreadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;
    }
.end annotation


# instance fields
.field private mPendingDispatch:Z

.field private mWorkLock:Ljava/lang/Object;

.field private mWorker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "batchSize"    # I
    .param p2, "maxQueueSize"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;-><init>(II)V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorkLock:Ljava/lang/Object;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mPendingDispatch:Z

    .line 23
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->onTaskEnd()V

    return-void
.end method

.method private ensureWork()V
    .locals 4

    .prologue
    .line 31
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorker:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;-><init>(Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$1;)V

    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorker:Ljava/lang/Thread;

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorker:Ljava/lang/Thread;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    :cond_0
    :goto_0
    monitor-exit v1

    .line 41
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mPendingDispatch:Z

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onTaskEnd()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorker:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorker:Ljava/lang/Thread;

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mPendingDispatch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->getPendingSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 72
    const-string v0, "SingleThreadExecutor"

    const-string v2, "onTaskEnd need dispatch"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mPendingDispatch:Z

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->dispatch()V

    .line 76
    :cond_1
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    const/4 v1, 0x1

    .line 55
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->cancel(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "status":I
    if-ne v0, v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->interrupt()V

    .line 63
    :cond_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatch()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->ensureWork()V

    .line 28
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "SingleThreadExecutor"

    return-object v0
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorker:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->interrupt()Ljava/util/List;

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
