.class public Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;
.super Ljava/lang/Object;
.source "SimpleTaskExecutor.java"

# interfaces
.implements Lcom/miui/gallery/search/core/context/TaskExecutor;
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/search/core/context/TaskExecutor",
        "<",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job;",
        ">;",
        "Lcom/miui/gallery/threadpool/FutureListener;"
    }
.end annotation


# instance fields
.field private mLimit:I

.field private final mLock:Ljava/lang/Object;

.field private final mPool:Lcom/miui/gallery/threadpool/ThreadPool;

.field private mRunningQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/threadpool/Future;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/miui/gallery/threadpool/ThreadPool$Job;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "threadSize"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mLock:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mRunningQueue:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mWaitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 29
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-direct {v0, p1, p1}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 30
    iput p1, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mLimit:I

    .line 31
    return-void
.end method

.method private contains(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Z
    .locals 5
    .param p1, "task"    # Lcom/miui/gallery/threadpool/ThreadPool$Job;

    .prologue
    const/4 v2, 0x1

    .line 87
    iget-object v3, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 88
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v1

    .line 92
    .local v1, "running":Lcom/miui/gallery/threadpool/ThreadPool$Job;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    .end local v0    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v1    # "running":Lcom/miui/gallery/threadpool/ThreadPool$Job;
    :cond_1
    :goto_0
    return v2

    .line 96
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mWaitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private submitIfAllowed()V
    .locals 5

    .prologue
    .line 103
    :goto_0
    iget v3, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mLimit:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mWaitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mWaitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/threadpool/ThreadPool$Job;

    .line 106
    .local v2, "task":Lcom/miui/gallery/threadpool/ThreadPool$Job;
    iget v3, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mLimit:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mLimit:I

    .line 107
    iget-object v3, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v3, v2, p0}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    .line 108
    .local v1, "future":Lcom/miui/gallery/threadpool/Future;
    const-string v3, "SimpleTaskExecutor"

    const-string/jumbo v4, "submit task %s, running %s"

    invoke-static {v3, v4, v2, v1}, Lcom/miui/gallery/search/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    iget-object v3, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v1    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v2    # "task":Lcom/miui/gallery/threadpool/ThreadPool$Job;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "SimpleTaskExecutor"

    invoke-static {v3, v0}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Lcom/miui/gallery/threadpool/ThreadPool$Job;)V
    .locals 5
    .param p1, "task"    # Lcom/miui/gallery/threadpool/ThreadPool$Job;

    .prologue
    .line 70
    iget-object v3, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 72
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->isSameTask(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/ThreadPool$Job;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const-string v2, "SimpleTaskExecutor"

    const-string v4, "Cancel running task [%s]"

    invoke-static {v2, v4, p1}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 75
    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->onFutureDone(Lcom/miui/gallery/threadpool/Future;)V

    .line 76
    monitor-exit v3

    .line 84
    .end local v0    # "future":Lcom/miui/gallery/threadpool/Future;
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mWaitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 80
    .local v1, "removed":Z
    if-eqz v1, :cond_2

    .line 81
    const-string v2, "SimpleTaskExecutor"

    const-string v4, "Remove task from waiting queue [%s]"

    invoke-static {v2, v4, p1}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "removed":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected isSameTask(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/ThreadPool$Job;)Z
    .locals 1
    .param p1, "task1"    # Lcom/miui/gallery/threadpool/ThreadPool$Job;
    .param p2, "task2"    # Lcom/miui/gallery/threadpool/ThreadPool$Job;

    .prologue
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 2
    .param p1, "future"    # Lcom/miui/gallery/threadpool/Future;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mLimit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mLimit:I

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->submitIfAllowed()V

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)V
    .locals 3
    .param p1, "task"    # Lcom/miui/gallery/threadpool/ThreadPool$Job;

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->contains(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const-string v0, "SimpleTaskExecutor"

    const-string v2, "contain task %d"

    invoke-static {v0, v2, p1}, Lcom/miui/gallery/search/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    monitor-exit v1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->mWaitQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-direct {p0}, Lcom/miui/gallery/search/core/context/SimpleTaskExecutor;->submitIfAllowed()V

    .line 43
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
