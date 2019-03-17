.class public Lcom/miui/gallery/cloud/taskmanager/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/FutureListener",
        "<",
        "Lcom/miui/gallery/cloud/taskmanager/Task;",
        ">;"
    }
.end annotation


# instance fields
.field private mLimit:I

.field private mLock:Ljava/lang/Object;

.field private mPool:Lcom/miui/gallery/threadpool/ThreadPool;

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

.field private mWaitQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/miui/gallery/cloud/taskmanager/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "workerSize"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mLock:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mRunningQueue:Ljava/util/LinkedList;

    .line 22
    iput p1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mLimit:I

    .line 23
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool;

    iget v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mLimit:I

    iget v2, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mLimit:I

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 24
    return-void
.end method

.method private contains(Lcom/miui/gallery/cloud/taskmanager/Task;)Z
    .locals 4
    .param p1, "task"    # Lcom/miui/gallery/cloud/taskmanager/Task;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 49
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/taskmanager/Task;

    .line 53
    .local v1, "running":Lcom/miui/gallery/cloud/taskmanager/Task;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const/4 v2, 0x1

    .line 57
    .end local v0    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v1    # "running":Lcom/miui/gallery/cloud/taskmanager/Task;
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private needReschedule(Lcom/miui/gallery/threadpool/Future;)Z
    .locals 2
    .param p1, "future"    # Lcom/miui/gallery/threadpool/Future;

    .prologue
    const/4 v0, 0x1

    .line 75
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->getCancelType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private submitIfAllowed()V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v1}, Lcom/miui/gallery/threadpool/ThreadPool;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->cancelAll()V

    .line 72
    :cond_0
    return-void

    .line 66
    :cond_1
    :goto_0
    iget v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mLimit:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/taskmanager/Task;

    .line 68
    .local v0, "task":Lcom/miui/gallery/cloud/taskmanager/Task;
    iget v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mLimit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mLimit:I

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mRunningQueue:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v2, v0, p0}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v1, "TaskManager"

    const-string/jumbo v2, "task %s submit"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAll()V
    .locals 4

    .prologue
    .line 101
    iget-object v2, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 103
    iget-object v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 104
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    goto :goto_0

    .line 106
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

    .line 107
    return-void
.end method

.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Lcom/miui/gallery/cloud/taskmanager/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Lcom/miui/gallery/cloud/taskmanager/Task;>;"
    iget-object v2, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 81
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->needReschedule(Lcom/miui/gallery/threadpool/Future;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/taskmanager/Task;

    .line 83
    .local v0, "task":Lcom/miui/gallery/cloud/taskmanager/Task;
    if-eqz v0, :cond_0

    .line 84
    const-string v1, "TaskManager"

    const-string v3, "interrupted task %s rescheduled"

    invoke-static {v1, v3, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 88
    .end local v0    # "task":Lcom/miui/gallery/cloud/taskmanager/Task;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 89
    iget v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mLimit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mLimit:I

    .line 90
    invoke-direct {p0}, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->submitIfAllowed()V

    .line 91
    monitor-exit v2

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->cancelAll()V

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v0}, Lcom/miui/gallery/threadpool/ThreadPool;->shutdown()V

    .line 112
    return-void
.end method

.method public submit(Lcom/miui/gallery/cloud/taskmanager/Task;)V
    .locals 6
    .param p1, "task"    # Lcom/miui/gallery/cloud/taskmanager/Task;

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    iget-object v3, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 29
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->contains(Lcom/miui/gallery/cloud/taskmanager/Task;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    const-string v2, "TaskManager"

    const-string v4, "contain task %s"

    invoke-static {v2, v4, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    monitor-exit v3

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 35
    iget-object v2, p0, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 36
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/taskmanager/Task;

    .line 37
    .local v1, "running":Lcom/miui/gallery/cloud/taskmanager/Task;
    invoke-virtual {p1, v1}, Lcom/miui/gallery/cloud/taskmanager/Task;->compareTo(Lcom/miui/gallery/cloud/taskmanager/Task;)I

    move-result v4

    if-lez v4, :cond_2

    .line 38
    const-string v4, "TaskManager"

    const-string/jumbo v5, "task %s is interrupted for running %s"

    invoke-static {v4, v5, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/miui/gallery/threadpool/Future;->cancel(I)V

    goto :goto_1

    .line 43
    .end local v0    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v1    # "running":Lcom/miui/gallery/cloud/taskmanager/Task;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 42
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/miui/gallery/cloud/taskmanager/TaskManager;->submitIfAllowed()V

    .line 43
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
