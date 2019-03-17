.class public Lcom/miui/gallery/scanner/ScanTaskManager;
.super Ljava/lang/Object;
.source "ScanTaskManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/scanner/ScanTaskManager$OnAllTasksExecutedListener;
    }
.end annotation


# instance fields
.field private mLimit:I

.field private mListener:Lcom/miui/gallery/scanner/ScanTaskManager$OnAllTasksExecutedListener;

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
            "Lcom/miui/gallery/scanner/ScanTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLock:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mRunningQueue:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-direct {v0, v1, v1}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    iput-object v0, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 29
    iput v1, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLimit:I

    .line 30
    return-void
.end method

.method public constructor <init>(ILcom/miui/gallery/scanner/ScanTaskManager$OnAllTasksExecutedListener;)V
    .locals 1
    .param p1, "threadSize"    # I
    .param p2, "listener"    # Lcom/miui/gallery/scanner/ScanTaskManager$OnAllTasksExecutedListener;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLock:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mRunningQueue:Ljava/util/LinkedList;

    .line 33
    iput-object p2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mListener:Lcom/miui/gallery/scanner/ScanTaskManager$OnAllTasksExecutedListener;

    .line 34
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-direct {v0, p1, p1}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    iput-object v0, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 35
    iput p1, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLimit:I

    .line 36
    return-void
.end method

.method private contains(Lcom/miui/gallery/scanner/ScanTask;)Z
    .locals 4
    .param p1, "newTask"    # Lcom/miui/gallery/scanner/ScanTask;

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/miui/gallery/scanner/ScanTask;->isForceScan()Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 61
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/scanner/ScanTask;

    .line 66
    .local v1, "running":Lcom/miui/gallery/scanner/ScanTask;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    const/4 v2, 0x1

    .line 71
    .end local v0    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v1    # "running":Lcom/miui/gallery/scanner/ScanTask;
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private submitIfAllowed()V
    .locals 8

    .prologue
    .line 75
    iget-object v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v2}, Lcom/miui/gallery/threadpool/ThreadPool;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/scanner/ScanTaskManager;->cancelAll()V

    .line 87
    :cond_0
    return-void

    .line 80
    :cond_1
    :goto_0
    iget v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLimit:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/scanner/ScanTask;

    .line 82
    .local v1, "task":Lcom/miui/gallery/scanner/ScanTask;
    iget v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLimit:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLimit:I

    .line 83
    const-string v2, "ScanTaskManager"

    const-string v3, "priority %d, time %d"

    invoke-virtual {v1}, Lcom/miui/gallery/scanner/ScanTask;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/miui/gallery/scanner/ScanTask;->getNewTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    iget-object v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v2, v1, p0}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    .line 85
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Lcom/miui/gallery/scanner/ScanTask;>;"
    iget-object v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public cancelAll()V
    .locals 4

    .prologue
    .line 120
    iget-object v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 122
    iget-object v1, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 123
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    goto :goto_0

    .line 125
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

    .line 126
    return-void
.end method

.method public cancelByPriority(I)V
    .locals 9
    .param p1, "priority"    # I

    .prologue
    .line 149
    iget-object v4, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 150
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/scanner/ScanTask;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/scanner/ScanTask;

    .line 153
    .local v2, "task":Lcom/miui/gallery/scanner/ScanTask;
    invoke-virtual {v2}, Lcom/miui/gallery/scanner/ScanTask;->getPriority()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 155
    const-string v3, "ScanTaskManager"

    const-string v5, "cancel task [%s] by priority [%d]"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/scanner/ScanTask;>;"
    .end local v2    # "task":Lcom/miui/gallery/scanner/ScanTask;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 158
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/scanner/ScanTask;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 159
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/scanner/ScanTask;

    .line 160
    .restart local v2    # "task":Lcom/miui/gallery/scanner/ScanTask;
    invoke-virtual {v2}, Lcom/miui/gallery/scanner/ScanTask;->getPriority()I

    move-result v5

    if-ne p1, v5, :cond_2

    .line 161
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 162
    const-string v5, "ScanTaskManager"

    const-string v6, "cancel task [%s] by priority [%d]"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 165
    .end local v0    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v2    # "task":Lcom/miui/gallery/scanner/ScanTask;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    return-void
.end method

.method public cancelForegroundTask()V
    .locals 8

    .prologue
    .line 129
    iget-object v4, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 131
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/scanner/ScanTask;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/scanner/ScanTask;

    .line 133
    .local v2, "task":Lcom/miui/gallery/scanner/ScanTask;
    invoke-virtual {v2}, Lcom/miui/gallery/scanner/ScanTask;->isForeground()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/scanner/ScanTask;->canRunningInBackground()Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 135
    const-string v3, "ScanTaskManager"

    const-string v5, "cancel foreground task %s"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/scanner/ScanTask;>;"
    .end local v2    # "task":Lcom/miui/gallery/scanner/ScanTask;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 138
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/scanner/ScanTask;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/threadpool/Future;

    .line 139
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/scanner/ScanTask;

    .line 140
    .restart local v2    # "task":Lcom/miui/gallery/scanner/ScanTask;
    invoke-virtual {v2}, Lcom/miui/gallery/scanner/ScanTask;->isForeground()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/miui/gallery/scanner/ScanTask;->canRunningInBackground()Z

    move-result v5

    if-nez v5, :cond_2

    .line 141
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 142
    const-string v5, "ScanTaskManager"

    const-string v6, "cancel foreground task %s"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 145
    .end local v0    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v2    # "task":Lcom/miui/gallery/scanner/ScanTask;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 5
    .param p1, "future"    # Lcom/miui/gallery/threadpool/Future;

    .prologue
    .line 91
    iget-object v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 92
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->getCancelType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 93
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/scanner/ScanTask;

    .line 94
    .local v0, "job":Lcom/miui/gallery/scanner/ScanTask;
    if-eqz v0, :cond_0

    .line 95
    const-string v1, "ScanTaskManager"

    const-string v3, "CANCEL_INTERRUPT %d"

    invoke-virtual {v0}, Lcom/miui/gallery/scanner/ScanTask;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 99
    .end local v0    # "job":Lcom/miui/gallery/scanner/ScanTask;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mRunningQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mListener:Lcom/miui/gallery/scanner/ScanTaskManager$OnAllTasksExecutedListener;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/scanner/ScanTaskManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mListener:Lcom/miui/gallery/scanner/ScanTaskManager$OnAllTasksExecutedListener;

    invoke-interface {v1}, Lcom/miui/gallery/scanner/ScanTaskManager$OnAllTasksExecutedListener;->onAllTasksExecuted()V

    .line 103
    :cond_1
    iget v1, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLimit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLimit:I

    .line 104
    invoke-direct {p0}, Lcom/miui/gallery/scanner/ScanTaskManager;->submitIfAllowed()V

    .line 105
    monitor-exit v2

    .line 106
    return-void

    .line 105
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
    .line 115
    invoke-virtual {p0}, Lcom/miui/gallery/scanner/ScanTaskManager;->cancelAll()V

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mPool:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-virtual {v0}, Lcom/miui/gallery/threadpool/ThreadPool;->shutdown()V

    .line 117
    return-void
.end method

.method public submit(Lcom/miui/gallery/scanner/ScanTask;)V
    .locals 8
    .param p1, "task"    # Lcom/miui/gallery/scanner/ScanTask;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-object v3, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 41
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/scanner/ScanTaskManager;->contains(Lcom/miui/gallery/scanner/ScanTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    const-string v2, "ScanTaskManager"

    const-string v4, "contains task %s"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    monitor-exit v3

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mWaitQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 46
    iget-object v2, p0, Lcom/miui/gallery/scanner/ScanTaskManager;->mRunningQueue:Ljava/util/LinkedList;

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

    .line 47
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/scanner/ScanTask;

    .line 48
    .local v1, "running":Lcom/miui/gallery/scanner/ScanTask;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/miui/gallery/scanner/ScanTask;->compareTo(Lcom/miui/gallery/scanner/ScanTask;)I

    move-result v4

    if-lez v4, :cond_2

    .line 49
    const-string v4, "ScanTaskManager"

    const-string v5, "priority %d is interrupted by %d"

    invoke-virtual {v1}, Lcom/miui/gallery/scanner/ScanTask;->getPriority()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/gallery/scanner/ScanTask;->getPriority()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/miui/gallery/threadpool/Future;->cancel(I)V

    goto :goto_1

    .line 54
    .end local v0    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v1    # "running":Lcom/miui/gallery/scanner/ScanTask;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 53
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/miui/gallery/scanner/ScanTaskManager;->submitIfAllowed()V

    .line 54
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
