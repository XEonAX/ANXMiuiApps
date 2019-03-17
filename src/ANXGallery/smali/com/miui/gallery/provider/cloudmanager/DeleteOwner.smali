.class Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;
.super Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;
.source "DeleteOwner.java"


# instance fields
.field private mDeleteReason:I

.field private mNotDeleteOriginFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;[JI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "ids"    # [J
    .param p4, "deleteReason"    # I
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
    .line 32
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[J)V

    .line 33
    iput p4, p0, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;->mDeleteReason:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;[JZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "ids"    # [J
    .param p4, "notDeleteOriginFlag"    # Z
    .param p5, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[JZI)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[J)V

    .line 38
    iput-boolean p4, p0, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;->mNotDeleteOriginFlag:Z

    .line 39
    iput p5, p0, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;->mDeleteReason:I

    .line 40
    return-void
.end method


# virtual methods
.method protected executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V
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
    .line 51
    .local p4, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 53
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v3, "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    const/4 v2, 0x0

    .line 55
    .local v2, "deleteRecord":Lcom/miui/gallery/util/deleterecorder/DeleteRecord;
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 56
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    iget-wide v8, v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    const-wide/16 v12, -0x1

    cmp-long v8, v8, v12

    if-nez v8, :cond_0

    .line 57
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    iget v8, v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->cursorIndex:I

    if-ltz v8, :cond_0

    .line 60
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    iget v8, v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->cursorIndex:I

    invoke-interface {v9, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 62
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v7, "values":Landroid/content/ContentValues;
    iget-boolean v8, p0, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;->mNotDeleteOriginFlag:Z

    if-eqz v8, :cond_1

    .line 65
    const-string v8, "localFile"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v8, "CloudManager.DeleteOwner"

    const-string v9, "DELETE ITEM: not delete origin file: %d"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v9, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_1
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 69
    const-string v8, "CloudManager.DeleteOwner"

    const-string v9, "DELETE ITEM: no server id found, update to invalid record: %d"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v9, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const-string v8, "localFlag"

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    :goto_1
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getInstance()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->onImageDelete(J)V

    .line 78
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    const-string v11, "cloud"

    const-string v12, "_id = ? "

    const/4 v9, 0x1

    new-array v13, v9, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 79
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v13, v14

    .line 78
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    int-to-long v12, v9

    iput-wide v12, v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    .line 80
    iget v8, p0, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;->mDeleteReason:I

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    const-string v11, "CloudManager.DeleteOwner"

    invoke-static {v8, v9, v11}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->createDeleteRecord(ILandroid/database/Cursor;Ljava/lang/String;)Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 89
    .end local v2    # "deleteRecord":Lcom/miui/gallery/util/deleterecorder/DeleteRecord;
    .end local v3    # "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;>;"
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 90
    .local v4, "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x6e

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v9}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->fillResult(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 106
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 72
    .restart local v2    # "deleteRecord":Lcom/miui/gallery/util/deleterecorder/DeleteRecord;
    .restart local v3    # "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;>;"
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_3
    :try_start_2
    const-string v8, "CloudManager.DeleteOwner"

    const-string v9, "DELETE ITEM: server id found, mark delete %d"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v9, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v8, "localFlag"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 93
    .end local v2    # "deleteRecord":Lcom/miui/gallery/util/deleterecorder/DeleteRecord;
    .end local v3    # "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;>;"
    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 85
    .restart local v2    # "deleteRecord":Lcom/miui/gallery/util/deleterecorder/DeleteRecord;
    .restart local v3    # "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    :cond_4
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 86
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 87
    invoke-static {v3}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Ljava/util/Collection;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v6, "validIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 98
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    iget-wide v10, v8, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-lez v8, :cond_6

    .line 99
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 102
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;>;"
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 103
    const-string v8, "%s IN (%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "_id"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, ","

    invoke-static {v11, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0, v6}, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;->markAsDirty(Ljava/util/Collection;)V

    goto/16 :goto_2
.end method

.method protected bridge synthetic executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p4, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;->executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V

    return-void
.end method

.method protected queryCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "keys"    # [Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    .line 44
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v0, "%s IN (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, ","

    .line 45
    invoke-static {v6, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 44
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic queryCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 24
    check-cast p2, [Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;->queryCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected verifyBatchItem(Landroid/database/Cursor;)J
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v0, -0x64

    .line 110
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 111
    const-string v2, "CloudManager.DeleteOwner"

    const-string v3, "Album can\'t be deleted here, use DeleteAlbum instead"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-wide v0

    .line 113
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    const-string v2, "CloudManager.DeleteOwner"

    const-string v3, "Share medias can\'t be deleted here, use DeleteSharer instead"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
