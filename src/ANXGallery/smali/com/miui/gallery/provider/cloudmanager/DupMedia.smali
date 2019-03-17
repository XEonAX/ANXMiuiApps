.class abstract Lcom/miui/gallery/provider/cloudmanager/DupMedia;
.super Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;
.source "DupMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;
    }
.end annotation


# instance fields
.field private mDupType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;[JI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "ids"    # [J
    .param p4, "dupType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[JI)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[J)V

    .line 43
    iput p4, p0, Lcom/miui/gallery/provider/cloudmanager/DupMedia;->mDupType:I

    .line 44
    return-void
.end method


# virtual methods
.method protected executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V
    .locals 18
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
    .line 115
    .local p4, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    move-object/from16 v4, p4

    check-cast v4, Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;

    .line 116
    .local v4, "dupOperationData":Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;
    new-instance v6, Landroid/util/LongSparseArray;

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v6, v11}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 117
    .local v6, "idToKeyArrays":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_1

    .line 118
    iget-object v11, v4, Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;->sha1ToKeyMap:Ljava/util/Map;

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    const/16 v13, 0x9

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 119
    .local v10, "sha1Key":Ljava/lang/Long;
    if-eqz v10, :cond_0

    .line 120
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 117
    :cond_0
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 124
    .end local v10    # "sha1Key":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 126
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    new-array v7, v11, [J

    .line 127
    .local v7, "ids":[J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v11, v7

    if-ge v5, v11, :cond_2

    .line 128
    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    aput-wide v12, v7, v5

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 132
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7}, Lcom/miui/gallery/provider/cloudmanager/DupMedia;->executeDupItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;[J)[J

    move-result-object v9

    .line 135
    .local v9, "results":[J
    const/4 v5, 0x0

    :goto_2
    array-length v11, v7

    if-ge v5, v11, :cond_5

    .line 136
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    aget-wide v12, v7, v5

    invoke-virtual {v6, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    .line 137
    .local v8, "item":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    iget-wide v12, v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-gez v11, :cond_3

    .line 138
    const-wide/16 v12, 0x0

    iput-wide v12, v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    .line 140
    :cond_3
    iget-wide v14, v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    aget-wide v12, v9, v5

    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-lez v11, :cond_4

    const-wide/16 v12, 0x1

    :goto_3
    add-long/2addr v12, v14

    iput-wide v12, v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    .line 135
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 140
    :cond_4
    const-wide/16 v12, 0x0

    goto :goto_3

    .line 143
    .end local v5    # "i":I
    .end local v7    # "ids":[J
    .end local v8    # "item":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    .end local v9    # "results":[J
    :cond_5
    return-void
.end method

.method protected bridge synthetic executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p4, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/cloudmanager/DupMedia;->executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V

    return-void
.end method

.method protected abstract executeDupItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;[J)[J
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
    .line 172
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;

    invoke-direct {v0, p1}, Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;-><init>([Ljava/lang/Long;)V

    return-object v0
.end method

.method protected bridge synthetic genBatchOperationData([Ljava/lang/Object;)Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;
    .locals 1

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/DupMedia;->genBatchOperationData([Ljava/lang/Long;)Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;

    move-result-object v0

    return-object v0
.end method

.method protected queryCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "keys"    # [Ljava/lang/Long;

    .prologue
    .line 50
    const/4 v12, 0x0

    .line 51
    .local v12, "selection":Ljava/lang/String;
    iget v0, p0, Lcom/miui/gallery/provider/cloudmanager/DupMedia;->mDupType:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 104
    const/4 v0, 0x0

    .line 107
    :goto_1
    return-object v0

    .line 53
    :pswitch_0
    const/4 v11, 0x0

    .line 55
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "cloud"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "localGroupId"

    aput-object v4, v3, v0

    const-string v0, "%s IN (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ","

    .line 56
    invoke-static {v6, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    .line 55
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 58
    if-eqz v11, :cond_1

    .line 59
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 60
    const-string v0, "CloudManager.DupMedia"

    const-string v1, "Cannot handle dup in album with multiple albums!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    :goto_2
    if-eqz v11, :cond_0

    .line 68
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 61
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "(%s) AND %s IN (%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND sha1 IN (SELECT sha1 FROM cloud WHERE _id IN (%s)) AND sha1 NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "localGroupId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 63
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 62
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_2

    .line 67
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_3

    .line 68
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 74
    .end local v11    # "cursor":Landroid/database/Cursor;
    :pswitch_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v10, "builder":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 77
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string v1, "cloud"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "attributes & 4 != 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 81
    if-eqz v11, :cond_6

    .line 82
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    invoke-interface {v11}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 84
    const/16 v0, 0x2c

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 90
    :catchall_1
    move-exception v0

    if-eqz v11, :cond_5

    .line 91
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 90
    :cond_6
    if-eqz v11, :cond_7

    .line 91
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_7
    const-string v0, "(%s) AND %s IN (%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND sha1 IN (SELECT sha1 FROM cloud WHERE _id IN (%s)) AND sha1 NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "localGroupId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v10, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 96
    goto/16 :goto_0

    .line 99
    .end local v10    # "builder":Ljava/lang/StringBuilder;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :pswitch_2
    const-string v12, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND sha1 IN (SELECT sha1 FROM cloud WHERE _id IN (%s)) AND sha1 NOT NULL"

    goto/16 :goto_0

    .line 107
    :cond_8
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ","

    .line 108
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "sha1 DESC,serverId DESC "

    move-object v0, p1

    .line 107
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic queryCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 31
    check-cast p2, [Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/DupMedia;->queryCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected verifyBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V
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
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p4, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;->verifyBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V

    .line 148
    invoke-virtual {p4}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->isAllInvalid()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v3, p4

    .line 149
    check-cast v3, Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;

    .line 150
    .local v3, "operationData":Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;
    const-wide/16 v6, -0x66

    invoke-virtual {v3, v6, v7}, Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;->fillResult(J)V

    .line 152
    iget-object v0, p4, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    .line 153
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 154
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 156
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 157
    .local v4, "key":J
    iget-object v6, p4, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    .line 158
    .local v2, "itemData":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    if-nez v2, :cond_0

    .line 153
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object v6, v3, Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;->sha1ToKeyMap:Ljava/util/Map;

    const/16 v7, 0x9

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iput v1, v2, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->cursorIndex:I

    .line 165
    invoke-virtual {p0, v0}, Lcom/miui/gallery/provider/cloudmanager/DupMedia;->verifyBatchItem(Landroid/database/Cursor;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    goto :goto_1

    .line 168
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "i":I
    .end local v2    # "itemData":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    .end local v3    # "operationData":Lcom/miui/gallery/provider/cloudmanager/DupMedia$DupOperationData;
    .end local v4    # "key":J
    :cond_1
    return-void
.end method
