.class public abstract Lcom/miui/gallery/cloud/thread/BaseTask;
.super Ljava/lang/Object;
.source "BaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private volatile isRunning:Z

.field private final mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

.field private mHasInterruptted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(IIIILcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "priorityCount"    # I
    .param p3, "batchMax"    # I
    .param p4, "commandMax"    # I
    .param p5, "changeListener"    # Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;

    .prologue
    const/4 v4, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v4, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->isRunning:Z

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->mHasInterruptted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s#%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    iget-object v5, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;-><init>(IIILcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    .line 33
    return-void
.end method


# virtual methods
.method public cancelAll(IZ)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "abandon"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->cancelAll(IZ)V

    .line 205
    return-void
.end method

.method public getPendingSize()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->getPengdingSize()I

    move-result v0

    return v0
.end method

.method protected abstract handle(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public hasDelayedItem()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->hasDelayedItem()Z

    move-result v0

    return v0
.end method

.method public invoke(Ljava/util/List;ZZ)[I
    .locals 11
    .param p2, "interruptExecuting"    # Z
    .param p3, "atFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;ZZ)[I"
        }
    .end annotation

    .prologue
    .local p1, "requestItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 172
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 173
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 174
    iget-object v6, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string v7, "invoke: no account"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-array v6, v10, [I

    fill-array-data v6, :array_0

    .line 195
    :goto_0
    return-object v6

    .line 178
    :cond_0
    const/4 v1, 0x0

    .line 179
    .local v1, "addCount":I
    const/4 v3, 0x0

    .line 180
    .local v3, "interrupttedCount":I
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 181
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 182
    .local v2, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 183
    .local v5, "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    new-instance v9, Lcom/miui/gallery/cloud/thread/RequestCommand;

    invoke-direct {v9, v0, v5}, Lcom/miui/gallery/cloud/thread/RequestCommand;-><init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestCloudItem;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    .end local v5    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-virtual {v7, v2, p3}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->put(Ljava/util/List;Z)I

    move-result v1

    .line 188
    if-eqz p2, :cond_2

    .line 189
    iget-object v7, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-virtual {v7, v2}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->interruptIfNotExecuting(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 190
    .local v4, "interrupttedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 191
    :goto_2
    iget-object v9, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->mHasInterruptted:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-lez v3, :cond_4

    move v7, v8

    :goto_3
    invoke-virtual {v9, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 195
    .end local v2    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    .end local v4    # "interrupttedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    :cond_2
    new-array v7, v10, [I

    aput v1, v7, v6

    aput v3, v7, v8

    move-object v6, v7

    goto :goto_0

    .restart local v2    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    .restart local v4    # "interrupttedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    :cond_3
    move v3, v6

    .line 190
    goto :goto_2

    :cond_4
    move v7, v6

    .line 191
    goto :goto_3

    .line 175
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected needContinue(I)Z
    .locals 3
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->cancelAll(Z)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-virtual {v2}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->getPengdingSize()I

    move-result v2

    if-gtz v2, :cond_4

    .line 132
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->mHasInterruptted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/thread/BaseTask;->resumeInterruptted()I

    move-result v2

    if-lez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v0

    .line 137
    goto :goto_0
.end method

.method protected onPerformSync()I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 66
    .local v4, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 68
    .local v9, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-virtual {v12, v4}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->pollToExecute(Ljava/util/List;)J

    move-result-wide v10

    .line 71
    .local v10, "minDelay":J
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 72
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_0

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "wait for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 77
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "wait time out or notified"

    invoke-static {v12, v14}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_0
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :cond_0
    const/4 v12, 0x0

    .line 110
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 111
    .local v8, "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-static {v8}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->removeFromExecuting(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    .end local v8    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    :catch_0
    move-exception v5

    .line 79
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string v14, "resume from waiting by interuptted"

    invoke-static {v12, v14}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v12
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    .end local v10    # "minDelay":J
    :catch_1
    move-exception v5

    .line 108
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string v13, "interruptted"

    invoke-static {v12, v13, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 110
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 111
    .restart local v8    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-static {v8}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->removeFromExecuting(Ljava/lang/String;)V

    goto :goto_2

    .line 114
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    .restart local v10    # "minDelay":J
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 115
    .local v3, "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string v15, "execute: %s, invoke~finish cost=%s"

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    iget-wide v0, v3, Lcom/miui/gallery/cloud/thread/RequestCommand;->mInvokeTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 86
    .end local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    :cond_2
    :try_start_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 87
    .restart local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    iget-object v13, v3, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 110
    .end local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    .end local v10    # "minDelay":J
    :catchall_1
    move-exception v12

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 111
    .restart local v8    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-static {v8}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->removeFromExecuting(Ljava/lang/String;)V

    goto :goto_5

    .line 90
    .end local v8    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    .restart local v10    # "minDelay":J
    :cond_3
    const/4 v12, 0x0

    :try_start_7
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 91
    .local v6, "first":Lcom/miui/gallery/cloud/thread/RequestCommand;
    iget-object v12, v6, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-static {v12}, Lcom/miui/gallery/cloud/SyncConditionManager;->checkForItem(Lcom/miui/gallery/cloud/RequestItemBase;)I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 92
    const/4 v12, 0x2

    .line 110
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 111
    .restart local v8    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-static {v8}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->removeFromExecuting(Ljava/lang/String;)V

    goto :goto_6

    .line 114
    .end local v8    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 115
    .restart local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string v15, "execute: %s, invoke~finish cost=%s"

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    iget-wide v0, v3, Lcom/miui/gallery/cloud/thread/RequestCommand;->mInvokeTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 94
    .end local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    :cond_5
    :try_start_8
    iget-object v2, v6, Lcom/miui/gallery/cloud/thread/RequestCommand;->mAccount:Landroid/accounts/Account;

    .line 95
    .local v2, "account":Landroid/accounts/Account;
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccountInfo()Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    move-result-object v7

    .line 96
    .local v7, "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    if-eqz v7, :cond_7

    iget-object v12, v7, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v12, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 98
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v7, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    iget-object v14, v7, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .line 97
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v9}, Lcom/miui/gallery/cloud/thread/BaseTask;->handle(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)I
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v12

    .line 110
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 111
    .restart local v8    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-static {v8}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->removeFromExecuting(Ljava/lang/String;)V

    goto :goto_8

    .line 114
    .end local v8    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 115
    .restart local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string v15, "execute: %s, invoke~finish cost=%s"

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    iget-wide v0, v3, Lcom/miui/gallery/cloud/thread/RequestCommand;->mInvokeTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 102
    .end local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    :cond_7
    if-eqz v7, :cond_8

    .line 103
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "execute: account is changed. old="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", current="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 110
    :goto_a
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 111
    .restart local v8    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->mCommandQueue:Lcom/miui/gallery/cloud/thread/RequestCommandQueue;

    invoke-static {v8}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->removeFromExecuting(Ljava/lang/String;)V

    goto :goto_b

    .line 105
    .end local v8    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string v13, "execute: account is null"

    invoke-static {v12, v13}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_a

    .line 114
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 115
    .restart local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string v14, "execute: %s, invoke~finish cost=%s"

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    iget-wide v0, v3, Lcom/miui/gallery/cloud/thread/RequestCommand;->mInvokeTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v13 .. v16}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    .line 114
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    .end local v6    # "first":Lcom/miui/gallery/cloud/thread/RequestCommand;
    .end local v7    # "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    .end local v10    # "minDelay":J
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 115
    .restart local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string v14, "execute: %s, invoke~finish cost=%s"

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    iget-wide v0, v3, Lcom/miui/gallery/cloud/thread/RequestCommand;->mInvokeTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v13 .. v16}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 114
    .end local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 115
    .restart local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string v15, "execute: %s, invoke~finish cost=%s"

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    iget-wide v0, v3, Lcom/miui/gallery/cloud/thread/RequestCommand;->mInvokeTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    .line 116
    .end local v3    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    :cond_c
    throw v12

    .line 119
    :cond_d
    const/4 v12, 0x2

    :cond_e
    return v12
.end method

.method protected abstract onPostExecute()V
.end method

.method protected abstract onPreExecute()V
.end method

.method protected resumeInterruptted()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 37
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "thread start %s"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->isRunning:Z

    .line 39
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/thread/BaseTask;->onPreExecute()V

    .line 41
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 42
    const/4 v1, 0x2

    .line 44
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/thread/BaseTask;->onPerformSync()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 49
    :goto_0
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/miui/gallery/cloud/thread/BaseTask;->needContinue(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 54
    .end local v1    # "result":I
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/thread/BaseTask;->onPostExecute()V

    .line 55
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "thread end %s"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iput-boolean v6, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->isRunning:Z

    .line 58
    return-void

    .line 45
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/thread/BaseTask;->onPostExecute()V

    .line 55
    iget-object v3, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "thread end %s"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iput-boolean v6, p0, Lcom/miui/gallery/cloud/thread/BaseTask;->isRunning:Z

    throw v2
.end method
