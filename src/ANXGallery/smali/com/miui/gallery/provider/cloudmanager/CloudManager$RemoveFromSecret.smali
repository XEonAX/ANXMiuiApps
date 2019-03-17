.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveFromSecret"
.end annotation


# instance fields
.field private mAlbumId:J

.field private mMediaId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;JJ)V
    .locals 1
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
    .line 2720
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2721
    iput-wide p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mMediaId:J

    .line 2722
    iput-wide p5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mAlbumId:J

    .line 2723
    return-void
.end method

.method private addFilePath(Landroid/content/ContentValues;Z)V
    .locals 9
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "nameConflict"    # Z

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x6

    .line 2790
    const-string v3, "localFile"

    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    const-string/jumbo v3, "thumbnailFile"

    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    const-string v3, "microthumbfile"

    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/cloud/DownloadPathHelper;->addPostfixToFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2794
    .local v2, "tarName":Ljava/lang/String;
    :goto_0
    const-string v3, "fileName"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xb

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 2796
    .local v1, "secretKey":[B
    if-eqz v1, :cond_0

    .line 2797
    new-instance v0, Lcom/miui/gallery/data/DBCloud;

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/gallery/data/DBCloud;-><init>(Ljava/lang/String;)V

    .line 2798
    .local v0, "cloud":Lcom/miui/gallery/data/DBCloud;
    invoke-virtual {v0, v2}, Lcom/miui/gallery/data/DBCloud;->setFileName(Ljava/lang/String;)V

    .line 2799
    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DBCloud;->setSecretKey([B)V

    .line 2800
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/data/DBCloud;->setSha1(Ljava/lang/String;)V

    .line 2801
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/data/DBCloud;->setLocalFile(Ljava/lang/String;)V

    .line 2802
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/data/DBCloud;->setThumbnailFile(Ljava/lang/String;)V

    .line 2803
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/data/DBCloud;->setMicroThumbFile(Ljava/lang/String;)V

    .line 2804
    invoke-static {v0, p1}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->decodeFiles(Lcom/miui/gallery/data/DBImage;Landroid/content/ContentValues;)V

    .line 2806
    .end local v0    # "cloud":Lcom/miui/gallery/data/DBCloud;
    :cond_0
    return-void

    .line 2793
    .end local v1    # "secretKey":[B
    .end local v2    # "tarName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 2735
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isOwnerSpaceFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2736
    const-wide/16 v12, -0x6a

    .line 2786
    :cond_0
    :goto_0
    return-wide v12

    .line 2738
    :cond_1
    new-instance v3, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mAlbumId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mMediaId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x9

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v3 .. v10}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;-><init>(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v16

    .line 2739
    .local v16, "result":J
    const-wide/16 v2, -0x68

    cmp-long v2, v16, v2

    if-nez v2, :cond_2

    .line 2741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v3, 0x1

    new-array v6, v3, [J

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mMediaId:J

    aput-wide v8, v6, v3

    const/16 v7, 0x25

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$500(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JI)[J

    .line 2743
    const-wide/16 v12, -0x67

    goto :goto_0

    .line 2745
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2746
    .local v14, "localFlag":I
    const-wide/16 v12, -0x65

    .line 2747
    .local v12, "id":J
    if-eqz v14, :cond_6

    .line 2749
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 2750
    .local v15, "srcUpdates":Landroid/content/ContentValues;
    const-string v2, "localGroupId"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mAlbumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    if-ne v14, v2, :cond_3

    .line 2752
    const-string v2, "localFlag"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2754
    :cond_3
    const-wide/16 v2, -0x69

    cmp-long v2, v16, v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->addFilePath(Landroid/content/ContentValues;Z)V

    .line 2755
    const-string v2, "cloud"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mMediaId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 2756
    .local v11, "count":I
    if-lez v11, :cond_0

    .line 2757
    if-eqz p2, :cond_4

    .line 2758
    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mMediaId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v15}, Lcom/miui/gallery/provider/cache/MediaManager;->update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 2760
    :cond_4
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mMediaId:J

    .line 2761
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->markAsDirty(J)V

    goto/16 :goto_0

    .line 2754
    .end local v11    # "count":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 2765
    .end local v15    # "srcUpdates":Landroid/content/ContentValues;
    :cond_6
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 2766
    .restart local v15    # "srcUpdates":Landroid/content/ContentValues;
    const-string v2, "localFlag"

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2767
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2768
    .local v18, "targInserts":Landroid/content/ContentValues;
    const-string v2, "localFlag"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2769
    invoke-static {}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$200()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$300([Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2770
    const-wide/16 v2, -0x69

    cmp-long v2, v16, v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->addFilePath(Landroid/content/ContentValues;Z)V

    .line 2771
    const-string v2, "fromLocalGroupId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2772
    const-string v2, "localGroupId"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mAlbumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2773
    const-string v2, "localImageId"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2775
    const-string v2, "cloud"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 2776
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_0

    .line 2777
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1}, Lcom/miui/gallery/provider/cache/MediaManager;->insert(JLandroid/content/ContentValues;)J

    .line 2778
    const-string v2, "cloud"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mMediaId:J

    .line 2779
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2778
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 2780
    .restart local v11    # "count":I
    if-lez v11, :cond_7

    .line 2781
    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mMediaId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 2783
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->markAsDirty(J)V

    goto/16 :goto_0

    .line 2770
    .end local v11    # "count":I
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 2727
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mMediaId:J

    .line 2729
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 2727
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2810
    const-string v0, "RemoveFromSecret{%d}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RemoveFromSecret;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
