.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Move"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;JJ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mediaId"    # J
    .param p5, "albumId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1267
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct/range {p0 .. p6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JJ)V

    .line 1269
    const-string v0, "CloudManager"

    const-string v1, "Move mediaId %d albumId %d"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1270
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 1275
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1277
    .local v3, "preFlag":I
    const-string v9, "CloudManager"

    const-string v10, "current LOCAL_FLAG is %d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1278
    if-eqz v3, :cond_1

    .line 1279
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1280
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "localGroupId"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mAlbumId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1281
    const-string v9, "cloud"

    const-string v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    .line 1283
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1281
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1285
    .local v2, "count":I
    const-string v9, "CloudManager"

    const-string v10, "MOVE FINISH: local item, result(%d)"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1286
    if-lez v2, :cond_0

    .line 1287
    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v8}, Lcom/miui/gallery/provider/cache/MediaManager;->update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 1288
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->markAsDirty(J)V

    .line 1290
    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    .line 1350
    .end local v8    # "values":Landroid/content/ContentValues;
    :goto_0
    return-wide v4

    .line 1293
    .end local v2    # "count":I
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1295
    .local v6, "srcUpdates":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$000(J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1296
    const-string v9, "CloudManager"

    const-string/jumbo v10, "system album:"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string v9, "localFlag"

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1298
    const-string v9, "fromLocalGroupId"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1299
    const-string v9, "localGroupId"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mAlbumId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1300
    const-string v9, "groupId"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1302
    const-string v9, "localImageId"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1303
    const-string v9, "CloudManager"

    const-string/jumbo v10, "updates: %s"

    invoke-static {v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$100(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1304
    const-string v9, "cloud"

    const-string v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    .line 1305
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1304
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v6, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1306
    .restart local v2    # "count":I
    const-string v9, "CloudManager"

    const-string v10, "MOVE FINISH: system album item, result(%d)"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1307
    if-lez v2, :cond_2

    .line 1308
    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v6}, Lcom/miui/gallery/provider/cache/MediaManager;->update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 1309
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->markAsDirty(J)V

    .line 1311
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    .line 1312
    .local v4, "id":J
    goto/16 :goto_0

    .line 1313
    .end local v2    # "count":I
    .end local v4    # "id":J
    :cond_3
    const-string v9, "CloudManager"

    const-string v10, "cloud album:"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v9, "localFlag"

    const/16 v10, 0xb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1315
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1316
    .local v7, "targInserts":Landroid/content/ContentValues;
    const-string v9, "localFlag"

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1317
    invoke-static {}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$200()[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mCursor:Landroid/database/Cursor;

    invoke-static {v9, v10}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$300([Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1318
    invoke-static {}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$400()[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mCursor:Landroid/database/Cursor;

    invoke-static {v9, v10}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$300([Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1319
    const-string v9, "fromLocalGroupId"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1320
    const-string v9, "localGroupId"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mAlbumId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1321
    const-string v9, "localImageId"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1322
    const-string v9, "CloudManager"

    const-string v10, "inserts: %s"

    invoke-static {v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$100(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1323
    const-string v9, "cloud"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1324
    .restart local v4    # "id":J
    const/4 v2, 0x0

    .line 1325
    .restart local v2    # "count":I
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_5

    .line 1326
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v7}, Lcom/miui/gallery/provider/cache/MediaManager;->insert(JLandroid/content/ContentValues;)J

    .line 1327
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->markAsDirty(J)V

    .line 1328
    const-string v9, "CloudManager"

    const-string/jumbo v10, "updates: %s"

    invoke-static {v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$100(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1329
    const-string v9, "cloud"

    const-string v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    .line 1330
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1329
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v6, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1331
    if-lez v2, :cond_4

    .line 1332
    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1333
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->markAsDirty(J)V

    .line 1348
    :cond_4
    :goto_1
    const-string v9, "CloudManager"

    const-string v10, "MOVE FINISH: cloud album item, results(update:%d; insert:%d)"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1346
    :cond_5
    const-wide/16 v4, -0x65

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1355
    const-string v0, "Move{%d, %d}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->mAlbumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
