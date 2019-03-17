.class public Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;
.super Ljava/lang/Object;
.source "PriorityTaskExecutor.java"

# interfaces
.implements Lcom/miui/gallery/search/core/context/TaskExecutor;
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/search/core/context/TaskExecutor",
        "<TE;>;",
        "Lcom/miui/gallery/threadpool/FutureListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
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
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWaitQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "threadSize"    # I

    .prologue
    .line 21
    .local p0, "this":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;, "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mLock:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mRunningQueue:Ljava/util/LinkedList;

    .line 22
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mWaitQueue:Ljava/util/PriorityQueue;

    .line 23
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-direct {v0, p1, p1}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 24
    iput p1, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mLimit:I

    .line 25
    return-void
.end method

.method private contains(Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;, "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor<TE;>;"
    .local p1, "task":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;, "TE;"
    iget-object v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 55
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;

    .line 59
    .local v1, "running":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    const/4 v2, 0x1

    .line 63
    .end local v0    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v1    # "running":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private submitIfAllowed()V
    .locals 3

    .prologue
    .line 67
    .local p0, "this":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;, "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor<TE;>;"
    iget-object v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v2}, Lcom/miui/gallery/threadpool/ThreadPool;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->cancelAll()V

    .line 78
    :cond_0
    return-void

    .line 72
    :cond_1
    :goto_0
    iget v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mLimit:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;

    .line 74
    .local v1, "task":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;, "TE;"
    iget v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mLimit:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mLimit:I

    .line 75
    iget-object v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v2, v1, p0}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    .line 76
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public cancel(Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;, "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor<TE;>;"
    .local p1, "task":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;, "TE;"
    iget-object v3, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 112
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->isSameTask(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/ThreadPool$Job;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    const-string v2, "PriorityTaskExecutor"

    const-string v4, "Cancel running task [%s]"

    invoke-static {v2, v4, p1}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 115
    monitor-exit v3

    .line 123
    .end local v0    # "future":Lcom/miui/gallery/threadpool/Future;
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 119
    .local v1, "removed":Z
    if-eqz v1, :cond_2

    .line 120
    const-string v2, "PriorityTaskExecutor"

    const-string v4, "Remove task from waiting queue [%s]"

    invoke-static {v2, v4, p1}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
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

.method public bridge synthetic cancel(Lcom/miui/gallery/threadpool/ThreadPool$Job;)V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;, "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor<TE;>;"
    check-cast p1, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->cancel(Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;)V

    return-void
.end method

.method public cancelAll()V
    .locals 4

    .prologue
    .line 127
    .local p0, "this":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;, "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor<TE;>;"
    iget-object v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 129
    iget-object v1, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 130
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    goto :goto_0

    .line 132
    .end local v0    # "future":Lcom/miui/gallery/threadpool/Future;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    return-void
.end method

.method protected isSameTask(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/ThreadPool$Job;)Z
    .locals 1
    .param p1, "task1"    # Lcom/miui/gallery/threadpool/ThreadPool$Job;
    .param p2, "task2"    # Lcom/miui/gallery/threadpool/ThreadPool$Job;

    .prologue
    .line 28
    .local p0, "this":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;, "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor<TE;>;"
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;, "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor<TE;>;"
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->getCancelType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 84
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;

    .line 85
    .local v0, "job":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;, "TE;"
    if-eqz v0, :cond_0

    .line 86
    const-string v1, "PriorityTaskExecutor"

    const-string v3, "CANCEL_INTERRUPT %d"

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/gallery/search/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 90
    .end local v0    # "job":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;, "TE;"
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 91
    iget v1, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mLimit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mLimit:I

    .line 92
    invoke-direct {p0}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->submitIfAllowed()V

    .line 93
    monitor-exit v2

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public submit(Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;, "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor<TE;>;"
    .local p1, "task":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;, "TE;"
    if-eqz p1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->contains(Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const-string v0, "PriorityTaskExecutor"

    const-string v2, "contains task %s, priority: %d"

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;->getPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, p1, v3}, Lcom/miui/gallery/search/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    monitor-exit v1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 48
    invoke-direct {p0}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->submitIfAllowed()V

    .line 49
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;, "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor<TE;>;"
    check-cast p1, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;->submit(Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;)V

    return-void
.end method
