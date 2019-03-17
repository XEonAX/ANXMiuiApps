.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveByUri"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "albumId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1100
    .local p2, "diryBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;J)V

    .line 1101
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 1105
    const-wide/16 v6, 0x0

    .line 1106
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1109
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_2

    .line 1111
    new-instance v3, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->mAlbumId:J

    invoke-direct/range {v3 .. v9}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JJ)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Move;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v14

    .line 1112
    .local v14, "ret":J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_1

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->dispatchTask(Landroid/content/Context;Ljava/util/List;)Z

    .line 1114
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1135
    .end local v14    # "ret":J
    :cond_1
    :goto_0
    return-wide v14

    .line 1119
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->mContext:Landroid/content/Context;

    .line 1120
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v8, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->mTarPath:Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->mAlbumId:J

    const/16 v12, 0x8

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;-><init>(Ljava/io/File;JIZ)V

    .line 1119
    invoke-static {v2, v8}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->saveToCloudDB(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J

    move-result-wide v6

    .line 1125
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_4

    .line 1126
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->markAsDirty(J)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->dispatchTask(Landroid/content/Context;Ljava/util/List;)Z

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1135
    :cond_3
    const-wide/16 v14, 0x0

    goto :goto_0

    .line 1129
    :cond_4
    const-wide/16 v2, -0x2

    cmp-long v2, v6, v2

    if-nez v2, :cond_5

    .line 1130
    const-wide/16 v14, -0x67

    goto :goto_0

    .line 1131
    :cond_5
    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_3

    .line 1132
    const-wide/16 v14, -0x65

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1140
    const-string v0, "MoveByUri{%s, %d}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MoveByUri;->mAlbumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
