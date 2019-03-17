.class abstract Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask;
.super Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;
.source "SubTaskSeparatorTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;[J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[J)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[J)V

    .line 33
    return-void
.end method

.method private applyResult(Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;[JLjava/util/ArrayList;)V
    .locals 4
    .param p2, "partialResult"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
            "<",
            "Ljava/lang/Long;",
            ">;[J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    .local p3, "partialIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 83
    iget-object v2, p1, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    .line 84
    .local v1, "itemData":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    if-eqz v1, :cond_0

    .line 85
    aget-wide v2, p2, v0

    iput-wide v2, v1, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "itemData":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    :cond_1
    return-void
.end method


# virtual methods
.method protected executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V
    .locals 10
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
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p4, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    move-object v7, p4

    check-cast v7, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;

    .line 44
    .local v7, "operationData":Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, v7, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;->typeIdsArrays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 45
    iget-object v0, v7, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;->typeIdsArrays:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 46
    .local v8, "typeIdsPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 44
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const-string v1, "CloudManager.SubTaskSeparatorTask"

    const-string v2, "[%s] Start execute type %d for ids [%s]"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v5, ","

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/miui/gallery/util/Numbers;->toArray(Ljava/util/List;)[J

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask;->executeType(ILandroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;[J)[J

    move-result-object v9

    .line 52
    .local v9, "typeResults":[J
    const-string v0, "CloudManager.SubTaskSeparatorTask"

    const-string v1, "[%s] Result [%s]"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v9}, Lcom/miui/gallery/util/StringUtils;->join(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, p4, v9, v0}, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask;->applyResult(Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;[JLjava/util/ArrayList;)V

    goto :goto_1

    .line 55
    .end local v8    # "typeIdsPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .end local v9    # "typeResults":[J
    :cond_2
    return-void
.end method

.method protected bridge synthetic executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p4, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask;->executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V

    return-void
.end method

.method protected abstract executeType(ILandroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;[J)[J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
            "<",
            "Ljava/lang/Long;",
            ">;[J)[J"
        }
    .end annotation
.end method

.method protected genBatchOperationData([Ljava/lang/Long;)Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Long;",
            ")",
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;

    invoke-direct {v0, p1}, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;-><init>([Ljava/lang/Long;)V

    return-object v0
.end method

.method protected bridge synthetic genBatchOperationData([Ljava/lang/Object;)Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;
    .locals 1

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask;->genBatchOperationData([Ljava/lang/Long;)Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getItemTaskType(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;J)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Landroid/os/Bundle;",
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
            "<",
            "Ljava/lang/Long;",
            ">;J)I"
        }
    .end annotation
.end method

.method protected verifyBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V
    .locals 15
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
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p4, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    invoke-super/range {p0 .. p4}, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;->verifyBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V

    move-object/from16 v10, p4

    .line 61
    check-cast v10, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;

    .line 62
    .local v10, "operationData":Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;
    iget-object v3, v10, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;->keys:[Ljava/lang/Object;

    move-object v12, v3

    check-cast v12, [Ljava/lang/Long;

    array-length v14, v12

    const/4 v3, 0x0

    move v13, v3

    :goto_0
    if-ge v13, v14, :cond_2

    aget-object v3, v12, v13

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 63
    .local v8, "id":J
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    .line 64
    .local v2, "itemData":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    if-nez v2, :cond_1

    .line 62
    :cond_0
    :goto_1
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_0

    :cond_1
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 68
    invoke-virtual/range {v3 .. v9}, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask;->getItemTaskType(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;J)I

    move-result v11

    .line 69
    .local v11, "type":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_0

    .line 70
    invoke-virtual {v10, v8, v9, v11}, Lcom/miui/gallery/provider/cloudmanager/SubTaskSeparatorTask$OperationData;->putItemToType(JI)V

    .line 71
    const-wide/16 v4, -0x1

    iput-wide v4, v2, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    goto :goto_1

    .line 74
    .end local v2    # "itemData":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    .end local v8    # "id":J
    .end local v11    # "type":I
    :cond_2
    return-void
.end method
