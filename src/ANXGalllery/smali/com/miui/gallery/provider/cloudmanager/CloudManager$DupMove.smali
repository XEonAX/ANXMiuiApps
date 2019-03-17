.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DupMove"
.end annotation


# instance fields
.field protected mAlbumId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;JJI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "album"    # J
    .param p5, "mediaId"    # J
    .param p7, "dupType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JJI)V"
        }
    .end annotation

    .prologue
    .line 1393
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JI)V

    .line 1394
    iput-wide p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->mAlbumId:J

    .line 1395
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 1399
    const/4 v2, 0x0

    .line 1400
    .local v2, "success":Z
    const-wide/16 v16, -0x65

    .line 1402
    .local v16, "resultCode":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1403
    .local v6, "mediaId":J
    const-wide/16 v14, -0x65

    .line 1404
    .local v14, "result":J
    if-nez v2, :cond_5

    .line 1405
    new-instance v3, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->mAlbumId:J

    invoke-direct/range {v3 .. v9}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JJ)V

    .line 1406
    .local v3, "task":Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v14

    .line 1407
    move-wide/from16 v16, v14

    .line 1408
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_1

    .line 1409
    const-string v4, "CloudManager"

    const-string v5, "move success, delete items left."

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const/4 v2, 0x1

    .line 1428
    .end local v3    # "task":Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1429
    :goto_1
    return-wide v16

    .line 1411
    .restart local v3    # "task":Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
    :cond_1
    const-wide/16 v4, -0x67

    cmp-long v4, v14, v4

    if-nez v4, :cond_2

    .line 1412
    const-string v4, "CloudManager"

    const-string v5, "item exist, skip this, delete items left"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const/4 v2, 0x1

    goto :goto_0

    .line 1414
    :cond_2
    const-wide/16 v4, -0x68

    cmp-long v4, v14, v4

    if-nez v4, :cond_3

    .line 1415
    const-string v4, "CloudManager"

    const-string/jumbo v5, "sha1 conflict, just delete"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v4, 0x1

    new-array v12, v4, [J

    const/4 v4, 0x0

    aput-wide v6, v12, v4

    const/16 v13, 0x29

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-static/range {v8 .. v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$500(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JI)[J

    goto :goto_0

    .line 1418
    :cond_3
    const-wide/16 v4, -0x69

    cmp-long v4, v14, v4

    if-nez v4, :cond_4

    .line 1419
    const-string v4, "CloudManager"

    const-string v5, "file name conflict, return"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1422
    :cond_4
    const-string v4, "CloudManager"

    const-string/jumbo v5, "unknown err"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1425
    .end local v3    # "task":Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v4, 0x1

    new-array v12, v4, [J

    const/4 v4, 0x0

    aput-wide v6, v12, v4

    const/16 v13, 0x2a

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-static/range {v8 .. v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$500(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JI)[J

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1434
    const-string v0, "DupMove{%d, %d}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMove;->mAlbumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
