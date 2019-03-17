.class Lcom/miui/gallery/provider/cloudmanager/SharerFileHandleTask;
.super Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;
.source "SharerFileHandleTask.java"


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
    .line 21
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[J)V

    .line 22
    return-void
.end method


# virtual methods
.method protected executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V
    .locals 14
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
    .line 32
    .local p4, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/SharerFileHandleTask;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 33
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keys:[Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Long;

    array-length v10, v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v10, :cond_3

    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 34
    .local v4, "key":J
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    .line 35
    .local v3, "itemData":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    if-eqz v3, :cond_0

    iget-wide v8, v3, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    const-wide/16 v12, -0x1

    cmp-long v8, v8, v12

    if-nez v8, :cond_0

    iget v8, v3, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->cursorIndex:I

    if-gez v8, :cond_1

    .line 33
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 39
    :cond_1
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    iget v9, v3, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->cursorIndex:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 40
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    .line 41
    invoke-static {v4, v5}, Lcom/miui/gallery/provider/ShareMediaManager;->convertToMediaId(J)J

    move-result-wide v12

    const/16 v9, 0x28

    .line 40
    invoke-static {v2, v8, v12, v13, v9}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->from(Landroid/content/ContentResolver;Landroid/database/Cursor;JI)Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;

    move-result-object v8

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/SharerFileHandleTask;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->run(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x1

    :goto_2
    iput-wide v8, v3, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    .line 43
    const-string v8, "CloudManager.SharerFileHandleTask"

    const-string v9, "MediaFileHandleJob result for %d is %s"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v9, v11, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 42
    :cond_2
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 45
    .end local v3    # "itemData":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    .end local v4    # "key":J
    :cond_3
    return-void
.end method

.method protected bridge synthetic executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p4, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/cloudmanager/SharerFileHandleTask;->executeBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V

    return-void
.end method

.method protected queryCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "keys"    # [Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/SharerFileHandleTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "%s IN (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, ","

    .line 27
    invoke-static {v7, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 26
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic queryCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 18
    check-cast p2, [Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/SharerFileHandleTask;->queryCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
