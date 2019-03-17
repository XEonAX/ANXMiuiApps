.class public Lcom/miui/gallery/cloud/thread/RequestCommandQueue;
.super Ljava/lang/Object;
.source "RequestCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;
    }
.end annotation


# instance fields
.field private final mAllowBatchMax:I

.field private final mExecutings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/thread/RequestCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;

.field private final mLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mPendings:Lcom/miui/gallery/cloud/thread/CommandQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/cloud/thread/CommandQueue",
            "<",
            "Lcom/miui/gallery/cloud/thread/RequestCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "priorityCount"    # I
    .param p2, "batchMax"    # I
    .param p3, "commandMax"    # I
    .param p4, "l"    # Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 34
    new-instance v0, Lcom/miui/gallery/cloud/thread/CommandQueue;

    invoke-direct {v0, p1, p3}, Lcom/miui/gallery/cloud/thread/CommandQueue;-><init>(II)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mPendings:Lcom/miui/gallery/cloud/thread/CommandQueue;

    .line 35
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mExecutings:Ljava/util/Map;

    .line 36
    iput p2, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mAllowBatchMax:I

    .line 37
    iput-object p4, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mListener:Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;

    .line 38
    iput-object p5, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mTag:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private lock(Z)V
    .locals 1
    .param p1, "write"    # Z

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    goto :goto_0
.end method

.method private unlock(Z)V
    .locals 1
    .param p1, "write"    # Z

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method


# virtual methods
.method public cancelAll(IZ)V
    .locals 8
    .param p1, "priority"    # I
    .param p2, "abandon"    # Z

    .prologue
    const/4 v4, 0x1

    .line 177
    iget-object v5, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancelAll: remain count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mPendings:Lcom/miui/gallery/cloud/thread/CommandQueue;

    invoke-virtual {v7}, Lcom/miui/gallery/cloud/thread/CommandQueue;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", abandon="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    if-eqz p2, :cond_1

    const/4 v3, 0x3

    .line 179
    .local v3, "status":I
    :goto_0
    invoke-direct {p0, v4}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->lock(Z)V

    .line 181
    :try_start_0
    iget-object v5, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 182
    .local v0, "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    iget-object v6, v0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    iget v6, v6, Lcom/miui/gallery/cloud/RequestCloudItem;->priority:I

    if-ne v6, p1, :cond_0

    .line 183
    iget-object v6, v0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;->compareAndSetStatus(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 201
    .end local v0    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    :catchall_0
    move-exception v5

    invoke-direct {p0, v4}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    throw v5

    .end local v3    # "status":I
    :cond_1
    move v3, v4

    .line 178
    goto :goto_0

    .line 188
    .restart local v3    # "status":I
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v1, "cmdRemove":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    iget-object v5, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mPendings:Lcom/miui/gallery/cloud/thread/CommandQueue;

    invoke-virtual {v5}, Lcom/miui/gallery/cloud/thread/CommandQueue;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 190
    .restart local v0    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    iget-object v6, v0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    iget v6, v6, Lcom/miui/gallery/cloud/RequestCloudItem;->priority:I

    if-ne v6, p1, :cond_3

    .line 191
    iget-object v6, v0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;->compareAndSetStatus(II)Z

    .line 192
    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->onRemoveCommand(Lcom/miui/gallery/cloud/thread/RequestCommand;)V

    .line 193
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 196
    .end local v0    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 197
    .local v2, "item":Lcom/miui/gallery/cloud/thread/RequestCommand;
    iget-object v6, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mPendings:Lcom/miui/gallery/cloud/thread/CommandQueue;

    invoke-virtual {v2}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/gallery/cloud/thread/CommandQueue;->remove(Ljava/lang/String;)Lcom/miui/gallery/cloud/thread/Command;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 201
    .end local v2    # "item":Lcom/miui/gallery/cloud/thread/RequestCommand;
    :cond_5
    invoke-direct {p0, v4}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    .line 203
    return-void
.end method

.method public cancelAll(Z)V
    .locals 4
    .param p1, "abandon"    # Z

    .prologue
    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xe

    if-ge v0, v3, :cond_1

    .line 166
    invoke-static {v0}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v1

    .line 167
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 168
    invoke-static {v0}, Lcom/miui/gallery/cloud/UpDownloadManager;->getThreadType(I)I

    move-result v2

    .line 169
    .local v2, "type":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 170
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->cancelAll(IZ)V

    .line 165
    .end local v2    # "type":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "result":I
    :cond_1
    return-void
.end method

.method public getPengdingSize()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->lock(Z)V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mPendings:Lcom/miui/gallery/cloud/thread/CommandQueue;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/thread/CommandQueue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 55
    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    throw v0
.end method

.method hasDelayedItem()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->lock(Z)V

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mPendings:Lcom/miui/gallery/cloud/thread/CommandQueue;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/thread/CommandQueue;->hasDelayedItem()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 289
    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    throw v0
.end method

.method public interruptIfNotExecuting(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/thread/RequestCommand;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/thread/RequestCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    const/4 v7, 0x1

    .line 212
    iget-object v3, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interruptExecuting: executing count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 214
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    const/4 v2, 0x1

    .line 215
    .local v2, "status":I
    invoke-direct {p0, v7}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->lock(Z)V

    .line 217
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 218
    .local v0, "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    iget-object v4, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    invoke-direct {p0, v7}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    .line 234
    .end local v0    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    :goto_0
    return-object v1

    .line 223
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 224
    .restart local v0    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    iget-object v4, v0, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/cloud/RequestCloudItem;->compareAndSetStatus(II)Z

    .line 225
    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->onRemoveCommand(Lcom/miui/gallery/cloud/thread/RequestCommand;)V

    .line 226
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 231
    .end local v0    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    :catchall_0
    move-exception v3

    invoke-direct {p0, v7}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    throw v3

    .line 229
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    invoke-direct {p0, v7}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    goto :goto_0
.end method

.method onAddCommand(Lcom/miui/gallery/cloud/thread/RequestCommand;)V
    .locals 2
    .param p1, "cmd"    # Lcom/miui/gallery/cloud/thread/RequestCommand;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mListener:Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;

    iget-object v1, p1, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-interface {v0, v1}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;->onAddItem(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    .line 278
    return-void
.end method

.method onRemoveCommand(Lcom/miui/gallery/cloud/thread/RequestCommand;)V
    .locals 2
    .param p1, "cmd"    # Lcom/miui/gallery/cloud/thread/RequestCommand;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mListener:Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;

    iget-object v1, p1, Lcom/miui/gallery/cloud/thread/RequestCommand;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-interface {v0, v1}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;->onRemoveItem(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    .line 282
    return-void
.end method

.method public pollToExecute(Ljava/util/List;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/thread/RequestCommand;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    const/4 v8, 0x1

    .line 114
    invoke-direct {p0, v8}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->lock(Z)V

    .line 117
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 119
    .local v4, "now":J
    iget-object v1, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mPendings:Lcom/miui/gallery/cloud/thread/CommandQueue;

    iget v6, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mAllowBatchMax:I

    invoke-virtual {v1, p1, v6, v4, v5}, Lcom/miui/gallery/cloud/thread/CommandQueue;->poll(Ljava/util/List;IJ)V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const-wide/16 v2, 0x0

    .line 122
    .local v2, "minDelay":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 123
    .local v0, "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    iget-object v6, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    .end local v0    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    .end local v2    # "minDelay":J
    .end local v4    # "now":J
    :catchall_0
    move-exception v1

    invoke-direct {p0, v8}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    throw v1

    .line 126
    .restart local v4    # "now":J
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mPendings:Lcom/miui/gallery/cloud/thread/CommandQueue;

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/cloud/thread/CommandQueue;->getMinDelay(J)J

    move-result-wide v2

    .line 129
    .restart local v2    # "minDelay":J
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pollToExecute: remove count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", remain count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mPendings:Lcom/miui/gallery/cloud/thread/CommandQueue;

    invoke-virtual {v7}, Lcom/miui/gallery/cloud/thread/CommandQueue;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-direct {p0, v8}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    return-wide v2
.end method

.method public put(Ljava/util/List;Z)I
    .locals 10
    .param p2, "atFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/thread/RequestCommand;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    const/4 v9, 0x1

    .line 60
    invoke-direct {p0, v9}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->lock(Z)V

    .line 62
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 64
    .local v4, "now":J
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 65
    .local v2, "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 66
    .local v1, "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    iget-object v7, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/gallery/cloud/thread/RequestCommand;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 67
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    .end local v1    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    .end local v2    # "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    .end local v4    # "now":J
    :catchall_0
    move-exception v6

    invoke-direct {p0, v9}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    throw v6

    .line 71
    .restart local v2    # "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    .restart local v4    # "now":J
    :cond_1
    :try_start_1
    new-instance v3, Lcom/miui/gallery/cloud/thread/RequestCommandQueue$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue$1;-><init>(Lcom/miui/gallery/cloud/thread/RequestCommandQueue;)V

    .line 88
    .local v3, "l":Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;, "Lcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener<Lcom/miui/gallery/cloud/thread/RequestCommand;>;"
    if-eqz p2, :cond_2

    .line 89
    iget-object v6, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mPendings:Lcom/miui/gallery/cloud/thread/CommandQueue;

    invoke-virtual {v6, v2, v4, v5, v3}, Lcom/miui/gallery/cloud/thread/CommandQueue;->putAtFrist(Ljava/util/List;JLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)I

    move-result v0

    .line 94
    .local v0, "addCount":I
    :goto_1
    iget-object v6, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "put: add count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", atFirst="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-direct {p0, v9}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    return v0

    .line 91
    .end local v0    # "addCount":I
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mPendings:Lcom/miui/gallery/cloud/thread/CommandQueue;

    invoke-virtual {v6, v2, v4, v5, v3}, Lcom/miui/gallery/cloud/thread/CommandQueue;->putAtLast(Ljava/util/List;JLcom/miui/gallery/cloud/thread/CommandQueue$OnQueueChangedListener;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .restart local v0    # "addCount":I
    goto :goto_1
.end method

.method public removeFromExecuting(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 102
    invoke-direct {p0, v2}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->lock(Z)V

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/RequestCommand;

    .line 105
    .local v0, "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->onRemoveCommand(Lcom/miui/gallery/cloud/thread/RequestCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    .line 111
    return-void

    .line 109
    .end local v0    # "cmd":Lcom/miui/gallery/cloud/thread/RequestCommand;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v2}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue;->unlock(Z)V

    throw v1
.end method
