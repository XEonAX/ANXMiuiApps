.class public Lcom/miui/gallery/cloud/RequestItemExecutor;
.super Ljava/lang/Object;
.source "RequestItemExecutor.java"


# instance fields
.field private final mTag:Ljava/lang/String;

.field private final mTask:Lcom/miui/gallery/cloud/thread/BaseTask;

.field private mWorkLock:Ljava/lang/Object;

.field private mWorker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/thread/BaseTask;)V
    .locals 2
    .param p1, "task"    # Lcom/miui/gallery/cloud/thread/BaseTask;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorkLock:Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestItemExecutor#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mTag:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mTask:Lcom/miui/gallery/cloud/thread/BaseTask;

    .line 18
    return-void
.end method

.method private ensureWorker()V
    .locals 5

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mTask:Lcom/miui/gallery/cloud/thread/BaseTask;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/thread/BaseTask;->getPendingSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 28
    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/cloud/RequestItemExecutor;->isWorkerAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mTag:Ljava/lang/String;

    const-string v2, "mWork null"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mTask:Lcom/miui/gallery/cloud/thread/BaseTask;

    iget-object v3, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mTag:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    :goto_0
    monitor-exit v1

    .line 41
    :cond_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mTag:Ljava/lang/String;

    const-string v2, "mWork alive %s, interrupt %s"

    iget-object v3, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    iget-object v2, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 37
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 39
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private interrupt()V
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 81
    iget-object v2, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 83
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 85
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private isWorkerAlive()Z
    .locals 2

    .prologue
    .line 21
    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelAll(IZZ)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "abandon"    # Z
    .param p3, "interruptExecuting"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mTask:Lcom/miui/gallery/cloud/thread/BaseTask;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/cloud/thread/BaseTask;->cancelAll(IZ)V

    .line 73
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mTask:Lcom/miui/gallery/cloud/thread/BaseTask;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/thread/BaseTask;->getPendingSize()I

    move-result v0

    if-gtz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/cloud/RequestItemExecutor;->interrupt()V

    .line 76
    :cond_0
    return-void
.end method

.method public hasDelayedItem()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mTask:Lcom/miui/gallery/cloud/thread/BaseTask;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/thread/BaseTask;->hasDelayedItem()Z

    move-result v0

    return v0
.end method

.method public invoke(Ljava/util/List;Z)I
    .locals 2
    .param p2, "interruptExecuting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .local p1, "requestItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    const/4 v0, 0x0

    .line 44
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget v1, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->priority:I

    invoke-static {v1}, Lcom/miui/gallery/cloud/RequestItemBase;->isBackgroundPriority(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 46
    .local v0, "atFirst":Z
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/cloud/RequestItemExecutor;->invoke(Ljava/util/List;ZZ)I

    move-result v0

    .line 49
    .end local v0    # "atFirst":Z
    :cond_1
    return v0
.end method

.method public invoke(Ljava/util/List;ZZ)I
    .locals 3
    .param p2, "interruptExecuting"    # Z
    .param p3, "atFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;ZZ)I"
        }
    .end annotation

    .prologue
    .local p1, "requestItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    const/4 v2, 0x0

    .line 53
    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestItemExecutor;->mTask:Lcom/miui/gallery/cloud/thread/BaseTask;

    invoke-virtual {v1, p1, p2, p3}, Lcom/miui/gallery/cloud/thread/BaseTask;->invoke(Ljava/util/List;ZZ)[I

    move-result-object v0

    .line 54
    .local v0, "counts":[I
    aget v1, v0, v2

    if-lez v1, :cond_1

    .line 55
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    aget v1, v0, v1

    if-lez v1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/miui/gallery/cloud/RequestItemExecutor;->interrupt()V

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/cloud/RequestItemExecutor;->ensureWorker()V

    .line 60
    :cond_1
    aget v1, v0, v2

    return v1
.end method
