.class public Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;
.super Ljava/lang/Object;
.source "DownloadCommandQueue.java"


# instance fields
.field private final mAllowBatchMax:I

.field private final mExecutings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/sdk/download/executor/DownloadCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/sdk/download/executor/queue/Queue",
            "<",
            "Lcom/miui/gallery/sdk/download/executor/DownloadCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "batchMax"    # I
    .param p2, "commandMax"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 31
    new-instance v0, Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-direct {v0, p2}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mExecutings:Ljava/util/Map;

    .line 33
    iput p1, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mAllowBatchMax:I

    .line 34
    iput-object p3, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mTag:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private lock(Z)V
    .locals 1
    .param p1, "write"    # Z

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    goto :goto_0
.end method

.method private unlock(Z)V
    .locals 1
    .param p1, "write"    # Z

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 126
    invoke-direct {p0, v5}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->lock(Z)V

    .line 128
    const/4 v1, -0x1

    .line 129
    .local v1, "status":I
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->remove(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/executor/queue/Command;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 130
    .local v0, "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    if-eqz v0, :cond_2

    .line 131
    const/4 v1, 0x0

    .line 138
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getItem()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->compareAnsSetStatus(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getItem()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackCancel(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_1
    invoke-direct {p0, v5}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    return v1

    .line 133
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    check-cast v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .restart local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    if-eqz v0, :cond_0

    .line 135
    const/4 v1, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :catchall_0
    move-exception v2

    invoke-direct {p0, v5}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    throw v2
.end method

.method public cancelAll()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/sdk/download/executor/DownloadCommand;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 180
    invoke-direct {p0, v7}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->lock(Z)V

    .line 182
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 184
    .local v2, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    if-eqz v2, :cond_0

    .line 185
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 186
    .local v0, "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 206
    .end local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    .end local v2    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    :catchall_0
    move-exception v3

    invoke-direct {p0, v7}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    throw v3

    .line 189
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    .restart local v2    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 191
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->values()Ljava/util/Collection;

    move-result-object v2

    .line 192
    if-eqz v2, :cond_1

    .line 193
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 194
    .restart local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    .end local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->clear()V

    .line 199
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 200
    .restart local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getItem()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->compareAnsSetStatus(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getItem()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackCancel(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 206
    .end local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :cond_3
    invoke-direct {p0, v7}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    return-object v1
.end method

.method public contains(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->lock(Z)V

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->get(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/executor/queue/Command;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    invoke-direct {p0, v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    :goto_0
    return v0

    .line 153
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x1

    .line 158
    invoke-direct {p0, v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    move v0, v1

    goto :goto_0

    .line 156
    :cond_1
    const/4 v1, -0x1

    .line 158
    invoke-direct {p0, v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    throw v1
.end method

.method public getBatchSize()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mAllowBatchMax:I

    return v0
.end method

.method public getPendingSize()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->lock(Z)V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 55
    invoke-direct {p0, v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    throw v0
.end method

.method public interrupt()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/sdk/download/executor/DownloadCommand;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 215
    invoke-direct {p0, v8}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->lock(Z)V

    .line 217
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 218
    .local v1, "interrupted":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    iget-object v4, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 219
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 220
    .local v0, "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getItem()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->compareAnsSetStatus(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 241
    .end local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    .end local v1    # "interrupted":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    :catchall_0
    move-exception v4

    invoke-direct {p0, v8}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    throw v4

    .line 224
    .restart local v1    # "interrupted":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    .restart local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 226
    iget-object v4, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-virtual {v4}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->values()Ljava/util/Collection;

    move-result-object v3

    .line 227
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 228
    .restart local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getItem()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->compareAnsSetStatus(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    .end local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-virtual {v4}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->clear()V

    .line 234
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 235
    .local v2, "reAdd":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 236
    .restart local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    new-instance v5, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    invoke-direct {v5, v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;-><init>(Lcom/miui/gallery/sdk/download/executor/DownloadCommand;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 238
    .end local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-virtual {v4, v2}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->putAtLast(Ljava/util/List;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    invoke-direct {p0, v8}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    return-object v1
.end method

.method public pollToExecute()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/sdk/download/executor/DownloadCommand;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 110
    invoke-direct {p0, v6}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->lock(Z)V

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    iget v3, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mAllowBatchMax:I

    invoke-virtual {v2, v3}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->poll(I)Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 115
    .local v0, "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    .end local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    :catchall_0
    move-exception v2

    invoke-direct {p0, v6}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    throw v2

    .line 118
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mTag:Ljava/lang/String;

    const-string v3, "pollToExecute: remove count=%d, remain count=%d"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-virtual {v5}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-direct {p0, v6}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    return-object v1
.end method

.method public put(Lcom/miui/gallery/sdk/download/executor/DownloadCommand;Z)I
    .locals 2
    .param p1, "command"    # Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    .param p2, "atFirst"    # Z

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->put(Ljava/util/List;Z)I

    move-result v0

    return v0
.end method

.method public put(Ljava/util/List;Z)I
    .locals 8
    .param p2, "atFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/sdk/download/executor/DownloadCommand;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    const/4 v7, 0x1

    .line 64
    invoke-direct {p0, v7}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->lock(Z)V

    .line 67
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v2, "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 69
    .local v1, "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    iget-object v4, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    .end local v1    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    .end local v2    # "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    :catchall_0
    move-exception v3

    invoke-direct {p0, v7}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    throw v3

    .line 74
    .restart local v2    # "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    :cond_1
    if-eqz p2, :cond_2

    .line 75
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->putAtFirst(Ljava/util/List;)I

    move-result v0

    .line 80
    .local v0, "addCount":I
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mTag:Ljava/lang/String;

    const-string v4, "put: add count=%d, atFirst=%s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-direct {p0, v7}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    return v0

    .line 77
    .end local v0    # "addCount":I
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->putAtLast(Ljava/util/List;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .restart local v0    # "addCount":I
    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 97
    invoke-direct {p0, v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->lock(Z)V

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 100
    .local v0, "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    if-nez v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mPendings:Lcom/miui/gallery/sdk/download/executor/queue/Queue;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/sdk/download/executor/queue/Queue;->remove(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/executor/queue/Command;

    move-result-object v0

    .end local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    check-cast v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .restart local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    return-object v0

    .end local v0    # "cmd":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    throw v1
.end method

.method public removeFromExecuting(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-direct {p0, v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->lock(Z)V

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->mExecutings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-direct {p0, v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->unlock(Z)V

    throw v0
.end method
