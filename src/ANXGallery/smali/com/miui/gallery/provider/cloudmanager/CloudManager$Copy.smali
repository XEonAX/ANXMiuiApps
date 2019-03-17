.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Copy"
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
    .line 1440
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct/range {p0 .. p6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JJ)V

    .line 1442
    const-string v0, "CloudManager"

    const-string v1, "Copy albumId %d mediaId %d"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1443
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 17
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 1447
    const-string v11, "CloudManager"

    const-string v14, "%s execute"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1448
    invoke-static {}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$200()[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mCursor:Landroid/database/Cursor;

    invoke-static {v11, v14}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$300([Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v10

    .line 1450
    .local v10, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x2

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1451
    .local v5, "originFlag":I
    if-eqz v5, :cond_2

    const/4 v11, 0x5

    if-eq v5, v11, :cond_2

    const/4 v11, 0x6

    if-eq v5, v11, :cond_2

    const/16 v11, 0x9

    if-eq v5, v11, :cond_2

    .line 1455
    const-string v11, "CloudManager"

    const-string v14, "no server id, just insert as manual create"

    invoke-static {v11, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    const-string v11, "localFlag"

    const/4 v14, -0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1507
    :goto_0
    invoke-static {}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$400()[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mCursor:Landroid/database/Cursor;

    invoke-static {v11, v14}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$300([Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1509
    const-wide/16 v2, 0x0

    .line 1510
    .local v2, "id":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mMediaId:J

    invoke-static {v14, v15}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1511
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mMediaId:J

    invoke-static {v14, v15}, Lcom/miui/gallery/provider/ShareMediaManager;->getOriginalMediaId(J)J

    move-result-wide v8

    .line 1513
    .local v8, "originMediaId":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mAlbumId:J

    invoke-static {v14, v15}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1514
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mAlbumId:J

    invoke-static {v14, v15}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v6

    .line 1515
    .local v6, "originAlbumId":J
    const-string v11, "localGroupId"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1516
    const-string v11, "localImageId"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1517
    const-string/jumbo v11, "shareImage"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v14, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1518
    const-string v11, "CloudManager"

    const-string v14, "Copy other share to other share id %d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1543
    .end local v6    # "originAlbumId":J
    .end local v8    # "originMediaId":J
    :goto_1
    const-string v11, "CloudManager"

    const-string v14, "inserts: %s COPY RESULT: %d"

    invoke-static {v10}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$100(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v15

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v14, v15, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1545
    const-wide/16 v14, 0x0

    cmp-long v11, v2, v14

    if-lez v11, :cond_c

    .line 1547
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mAlbumId:J

    invoke-static {v14, v15}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1548
    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareMediaManager;->convertToMediaId(J)J

    move-result-wide v2

    .line 1550
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->markAsDirty(J)V

    :goto_2
    move-wide v12, v2

    .line 1554
    .end local v2    # "id":J
    :cond_1
    :goto_3
    return-wide v12

    .line 1458
    :cond_2
    const-string v11, "CloudManager"

    const-string v14, "has server id, just insert as copy"

    invoke-static {v11, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    if-nez v5, :cond_4

    .line 1460
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mMediaId:J

    invoke-static {v14, v15}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1461
    const-string v11, "localFlag"

    const/16 v14, 0x9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1463
    :cond_3
    const-string v11, "localFlag"

    const/4 v14, 0x6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1479
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0x1a

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1480
    .local v4, "localImageId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1481
    const-string v11, "CloudManager"

    const-string v14, "not synced but localImageId is null"

    invoke-static {v11, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    const-wide/16 v12, -0x65

    goto :goto_3

    .line 1484
    :cond_5
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mMediaId:J

    .line 1485
    const/16 v11, 0x9

    if-ne v5, v11, :cond_6

    .line 1486
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mMediaId:J

    invoke-static {v14, v15}, Lcom/miui/gallery/provider/ShareMediaManager;->convertToMediaId(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mMediaId:J

    .line 1488
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mCursor:Landroid/database/Cursor;

    invoke-static {v11}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 1489
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mCursor:Landroid/database/Cursor;

    .line 1490
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->verify(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v12

    .line 1491
    .local v12, "verify":J
    const-wide/16 v14, -0x1

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    .line 1494
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x2

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1495
    if-eqz v5, :cond_7

    .line 1496
    const-string v11, "CloudManager"

    const-string v14, "backtrack not synced"

    invoke-static {v11, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-wide/16 v12, -0x65

    goto/16 :goto_3

    .line 1499
    :cond_7
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mMediaId:J

    invoke-static {v14, v15}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1500
    const-string v11, "localFlag"

    const/16 v14, 0x9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1502
    :cond_8
    const-string v11, "localFlag"

    const/4 v14, 0x6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1520
    .end local v4    # "localImageId":Ljava/lang/String;
    .end local v12    # "verify":J
    .restart local v2    # "id":J
    .restart local v8    # "originMediaId":J
    :cond_9
    const-string v11, "localGroupId"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mAlbumId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1521
    const-string v11, "localImageId"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1522
    const-string v11, "cloud"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v14, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1523
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v10}, Lcom/miui/gallery/provider/cache/MediaManager;->insert(JLandroid/content/ContentValues;)J

    .line 1524
    const-string v11, "CloudManager"

    const-string v14, "Copy other share to owner id %d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1528
    .end local v8    # "originMediaId":J
    :cond_a
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mAlbumId:J

    invoke-static {v14, v15}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1529
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mAlbumId:J

    invoke-static {v14, v15}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v6

    .line 1530
    .restart local v6    # "originAlbumId":J
    const-string v11, "localGroupId"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1531
    const-string v11, "localImageId"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mMediaId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1532
    const-string/jumbo v11, "shareImage"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v14, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1533
    const-string v11, "CloudManager"

    const-string v14, "Copy owner to other share id %d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1536
    .end local v6    # "originAlbumId":J
    :cond_b
    const-string v11, "localGroupId"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mAlbumId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1537
    const-string v11, "localImageId"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mMediaId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1538
    const-string v11, "cloud"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v14, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1539
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v10}, Lcom/miui/gallery/provider/cache/MediaManager;->insert(JLandroid/content/ContentValues;)J

    .line 1540
    const-string v11, "CloudManager"

    const-string v14, "Copy owner to owner id %d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1552
    :cond_c
    const-wide/16 v2, -0x65

    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1559
    const-string v0, "Copy{%d, %d}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->mAlbumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
