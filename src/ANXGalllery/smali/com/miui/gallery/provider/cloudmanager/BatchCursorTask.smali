.class abstract Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;
.super Lcom/miui/gallery/provider/cloudmanager/BatchTask;
.source "BatchCursorTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;,
        Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/gallery/provider/cloudmanager/BatchTask",
        "<TK;",
        "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirtyBulk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/BatchTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->mDirtyBulk:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method protected genBatchItemData()Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;-><init>()V

    return-object v0
.end method

.method protected genBatchOperationData([Ljava/lang/Object;)Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)",
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;

    invoke-direct {v0, p1}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method protected getBatchCount()I
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    const/16 v0, 0x64

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDirtyBulk()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->mDirtyBulk:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final markAsDirty(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 192
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->mDirtyBulk:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method protected final markAsDirty(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->mDirtyBulk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 197
    return-void
.end method

.method protected prepareBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;)Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    invoke-virtual {p0, p3}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->getBatchExecuteKeys(Landroid/os/Bundle;)[Ljava/lang/Object;

    move-result-object v4

    .line 128
    .local v4, "keys":[Ljava/lang/Object;, "[TK;"
    invoke-virtual {p0, v4}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->genBatchOperationData([Ljava/lang/Object;)Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;

    move-result-object v1

    .line 129
    .local v1, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<TK;>;"
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v4, v5

    .line 130
    .local v3, "key":Ljava/lang/Object;, "TK;"
    iget-object v7, v1, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->genBatchItemData()Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 133
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    const/4 v0, 0x0

    .line 135
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->queryCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_1
    iput-object v0, v1, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    .line 140
    return-object v1

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "CloudManager.BatchCursorTask"

    invoke-static {v5, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected abstract queryCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Object;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[TK;)",
            "Landroid/database/Cursor;"
        }
    .end annotation
.end method

.method protected release()V
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->mContext:Landroid/content/Context;

    .line 174
    return-void
.end method

.method protected releaseBatchBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 177
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 180
    :cond_0
    return-void
.end method

.method public run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)[J
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 43
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->getTotalCount()I

    move-result v7

    new-array v5, v7, [J

    .line 44
    .local v5, "result":[J
    const-wide/16 v8, -0x65

    invoke-static {v5, v8, v9}, Ljava/util/Arrays;->fill([JJ)V

    .line 46
    const-string v7, "CloudManager.BatchCursorTask"

    const-string v8, "%s is running"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    const/4 v4, 0x0

    .line 50
    .local v4, "nextBatchStartPosition":I
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v2, "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->getTotalCount()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 53
    move v6, v4

    .line 54
    .local v6, "startPosition":I
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->getTotalCount()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->getBatchCount()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 55
    .local v0, "batchCount":I
    add-int/2addr v4, v0

    .line 59
    :try_start_1
    invoke-virtual {p0, v6, v0, v2}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->getBatchBundle(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 62
    invoke-virtual {p0, p1, p2, v2}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->runBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;)[J

    move-result-object v1

    .line 65
    .local v1, "batchResult":[J
    array-length v7, v1

    if-eq v7, v0, :cond_0

    .line 66
    const-string v7, "CloudManager.BatchCursorTask"

    const-string v8, "%s, Invalid batch result, expecting %d results, but actually is %d"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    array-length v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_1

    if-ge v3, v0, :cond_1

    .line 71
    add-int v7, v6, v3

    aget-wide v8, v1, v3

    aput-wide v8, v5, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 75
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->releaseBatchBundle(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 82
    .end local v0    # "batchCount":I
    .end local v1    # "batchResult":[J
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "i":I
    .end local v6    # "startPosition":I
    :catchall_0
    move-exception v7

    const-string v8, "CloudManager.BatchCursorTask"

    const-string v9, "%s finish"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->release()V

    throw v7

    .line 75
    .restart local v0    # "batchCount":I
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "startPosition":I
    :catchall_1
    move-exception v7

    :try_start_3
    invoke-virtual {p0, v2}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->releaseBatchBundle(Landroid/os/Bundle;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    .end local v0    # "batchCount":I
    .end local v6    # "startPosition":I
    :cond_2
    const-string v7, "CloudManager.BatchCursorTask"

    const-string v8, "%s finish"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->release()V

    return-object v5
.end method

.method protected runBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;)[J
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    const-string v4, "CloudManager.BatchCursorTask"

    const-string v5, "%s run batch for bundle %s"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p3}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->describeBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0, p3}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->getBatchExecuteKeys(Landroid/os/Bundle;)[Ljava/lang/Object;

    move-result-object v2

    .line 91
    .local v2, "keys":[Ljava/lang/Object;, "[TK;"
    array-length v4, v2

    new-array v3, v4, [J

    .line 93
    .local v3, "result":[J
    const/4 v0, 0x0

    .line 96
    .local v0, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<TK;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->prepareBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;)Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;

    move-result-object v0

    .line 99
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->verifyBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V

    .line 102
    invoke-virtual {v0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->isAllInvalid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 107
    :cond_0
    invoke-virtual {v0, v3}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->copyResultsTo([J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->release()V

    .line 117
    :cond_1
    :goto_0
    const-string v4, "CloudManager.BatchCursorTask"

    const-string v5, "%s done run batch for bundle %s"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p3}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->describeBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    return-object v3

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "CloudManager.BatchCursorTask"

    invoke-static {v4, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    const-wide/16 v4, -0x65

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->release()V

    goto :goto_0

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->release()V

    :cond_2
    throw v4
.end method

.method protected verifyBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Landroid/os/Bundle;",
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask<TK;>;"
    .local p4, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<TK;>;"
    iget-object v0, p4, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 158
    const-string v0, "CloudManager.BatchCursorTask"

    const-string v1, "cursor for %s is null, abort"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const-wide/16 v0, -0x65

    invoke-virtual {p4, v0, v1}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->fillResult(J)V

    .line 166
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p4, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 161
    const-string v0, "CloudManager.BatchCursorTask"

    const-string v1, "cursor for %s has nothing, abort"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-wide/16 v0, -0x66

    invoke-virtual {p4, v0, v1}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->fillResult(J)V

    goto :goto_0

    .line 164
    :cond_1
    const-wide/16 v0, -0x1

    invoke-virtual {p4, v0, v1}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->fillResult(J)V

    goto :goto_0
.end method
