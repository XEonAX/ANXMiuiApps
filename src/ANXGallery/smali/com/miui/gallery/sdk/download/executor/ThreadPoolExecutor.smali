.class public Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;
.super Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$Job;
    }
.end annotation


# instance fields
.field private final mCoreSize:I

.field private mExecutorLock:Ljava/lang/Object;

.field private mFutures:[Lcom/miui/gallery/threadpool/Future;

.field private mPool:Lcom/miui/gallery/threadpool/ThreadPool;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "batchSize"    # I
    .param p2, "maxQueueSize"    # I

    .prologue
    .line 29
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;-><init>(III)V

    .line 30
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "threadSize"    # I
    .param p2, "batchSize"    # I
    .param p3, "maxQueueSize"    # I

    .prologue
    .line 33
    invoke-direct {p0, p2, p3}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;-><init>(II)V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mExecutorLock:Ljava/lang/Object;

    .line 34
    iput p1, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mCoreSize:I

    .line 35
    iget v0, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mCoreSize:I

    new-array v0, v0, [Lcom/miui/gallery/threadpool/Future;

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mFutures:[Lcom/miui/gallery/threadpool/Future;

    .line 36
    return-void
.end method

.method private dispatchJobs()Z
    .locals 9

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "dispatched":Z
    iget-object v7, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v7

    .line 57
    :try_start_0
    iget-object v6, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v6}, Lcom/miui/gallery/threadpool/ThreadPool;->isShutdown()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    :cond_0
    monitor-exit v7

    move v1, v0

    .line 75
    .end local v0    # "dispatched":Z
    .local v1, "dispatched":I
    :goto_0
    return v1

    .line 60
    .end local v1    # "dispatched":I
    .restart local v0    # "dispatched":Z
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v6}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->getPendingSize()I

    move-result v5

    .line 61
    .local v5, "size":I
    if-lez v5, :cond_4

    .line 62
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v6, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mCoreSize:I

    if-ge v3, v6, :cond_4

    if-lez v5, :cond_4

    .line 63
    iget-object v6, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mFutures:[Lcom/miui/gallery/threadpool/Future;

    aget-object v2, v6, v3

    .line 64
    .local v2, "future":Lcom/miui/gallery/threadpool/Future;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v2}, Lcom/miui/gallery/threadpool/Future;->isDone()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 65
    :cond_2
    new-instance v4, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$Job;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$Job;-><init>(Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$1;)V

    .line 66
    .local v4, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;
    const-string v6, "ThreadPoolExecutor"

    const-string/jumbo v8, "submit runnable %s"

    invoke-static {v6, v8, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    iget-object v6, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v6, v4, p0}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v2

    .line 68
    iget-object v6, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mFutures:[Lcom/miui/gallery/threadpool/Future;

    aput-object v2, v6, v3

    .line 69
    iget-object v6, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v6}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->getBatchSize()I

    move-result v6

    sub-int/2addr v5, v6

    .line 70
    const/4 v0, 0x1

    .line 62
    .end local v4    # "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 74
    .end local v2    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v3    # "i":I
    :cond_4
    monitor-exit v7

    move v1, v0

    .line 75
    .restart local v1    # "dispatched":I
    goto :goto_0

    .line 74
    .end local v1    # "dispatched":I
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private initExecutorIfNeed()V
    .locals 4

    .prologue
    .line 39
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v0}, Lcom/miui/gallery/threadpool/ThreadPool;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool;

    iget v2, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mCoreSize:I

    iget v3, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mCoreSize:I

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 43
    :cond_1
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected dispatch()V
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->initExecutorIfNeed()V

    .line 50
    invoke-direct {p0}, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->dispatchJobs()Z

    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "ThreadPoolExecutor"

    return-object v0
.end method

.method public interrupt()V
    .locals 5

    .prologue
    .line 80
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mCoreSize:I

    if-ge v1, v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mFutures:[Lcom/miui/gallery/threadpool/Future;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mFutures:[Lcom/miui/gallery/threadpool/Future;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/miui/gallery/threadpool/Future;->cancel(I)V

    .line 85
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mFutures:[Lcom/miui/gallery/threadpool/Future;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    .line 82
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    if-eqz v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v2}, Lcom/miui/gallery/threadpool/ThreadPool;->shutdownNow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->interrupt()Ljava/util/List;

    .line 96
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "ThreadPoolExecutor"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 4
    .param p1, "future"    # Lcom/miui/gallery/threadpool/Future;

    .prologue
    .line 100
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->dispatchJobs()Z

    move-result v0

    .line 102
    .local v0, "dispatched":Z
    const-string v1, "ThreadPoolExecutor"

    const-string v2, "onFutureDone dispatch %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    .end local v0    # "dispatched":Z
    :cond_0
    return-void
.end method
