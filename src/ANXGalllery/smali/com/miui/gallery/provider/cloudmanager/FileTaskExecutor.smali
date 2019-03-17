.class Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;
.super Ljava/lang/Object;
.source "FileTaskExecutor.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;,
        Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskJob;,
        Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/FutureListener",
        "<",
        "Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;

.field private final mLock:Ljava/lang/Object;

.field private final mPool:Lcom/miui/gallery/threadpool/ThreadPool;

.field private mRunningTask:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[J>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mLock:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mRunningTask:Lcom/miui/gallery/threadpool/Future;

    .line 44
    iput-object p1, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mListener:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 47
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-direct {v0, v1, v1}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 48
    return-void
.end method

.method private cancelAll()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mRunningTask:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "CloudManager.FileTaskExecutor"

    const-string v2, "Running file task isn\'t finished yet!"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mRunningTask:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mRunningTask:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 90
    :cond_1
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reportIfCompleted()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "CloudManager.FileTaskExecutor"

    const-string v1, "on complete all tasks"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mListener:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;

    invoke-interface {v0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;->onAllTaskExecuted()V

    .line 61
    :cond_0
    return-void
.end method

.method private submitIfAllowed()V
    .locals 6

    .prologue
    .line 94
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v2}, Lcom/miui/gallery/threadpool/ThreadPool;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->cancelAll()V

    .line 96
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mListener:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;

    invoke-interface {v2}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;->onCancel()V

    .line 97
    const-string v2, "CloudManager.FileTaskExecutor"

    const-string v3, "Strange situation, submitting tasks when executor is shutting down!"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mRunningTask:Lcom/miui/gallery/threadpool/Future;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 104
    .local v0, "ids":[J
    const-string v2, "CloudManager.FileTaskExecutor"

    const-string v4, "Submitting FileTaskJob of %d ids to executor [%s]"

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5, p0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskJob;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskJob;-><init>(Landroid/content/Context;[J)V

    .line 106
    .local v1, "task":Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskJob;
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v2, v1, p0}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mRunningTask:Lcom/miui/gallery/threadpool/Future;

    .line 110
    .end local v0    # "ids":[J
    .end local v1    # "task":Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskJob;
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 108
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->reportIfCompleted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public isCompleted()Z
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mRunningTask:Lcom/miui/gallery/threadpool/Future;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;>;"
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mRunningTask:Lcom/miui/gallery/threadpool/Future;

    if-eq v1, p1, :cond_0

    .line 117
    const-string v1, "CloudManager.FileTaskExecutor"

    const-string v3, "Don\'t know what happened, but we expect %s instead of %s"

    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mRunningTask:Lcom/miui/gallery/threadpool/Future;

    invoke-static {v1, v3, v4, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mRunningTask:Lcom/miui/gallery/threadpool/Future;

    .line 120
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;

    .line 123
    .local v0, "result":Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;->ids:[J

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;->results:[J

    if-eqz v1, :cond_1

    .line 124
    const-string v1, "CloudManager.FileTaskExecutor"

    const-string v2, "onFutureDone for %s ids"

    iget-object v3, v0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;->ids:[J

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mListener:Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;->ids:[J

    iget-object v3, v0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;->results:[J

    invoke-interface {v1, v2, v3}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileHandleListener;->onRecordsHandled([J[J)V

    .line 129
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->submitIfAllowed()V

    .line 130
    return-void

    .line 120
    .end local v0    # "result":Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 127
    .restart local v0    # "result":Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;
    :cond_1
    const-string v1, "CloudManager.FileTaskExecutor"

    const-string v2, "Invalid file task result %s"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "CloudManager.FileTaskExecutor"

    const-string v1, "Shutting down executor [%s]"

    invoke-static {v0, v1, p0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->cancelAll()V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v0}, Lcom/miui/gallery/threadpool/ThreadPool;->shutdown()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public submit([J)V
    .locals 2
    .param p1, "ids"    # [J

    .prologue
    .line 64
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->mWaitingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->submitIfAllowed()V

    .line 72
    :goto_0
    return-void

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;->reportIfCompleted()V

    goto :goto_0
.end method
