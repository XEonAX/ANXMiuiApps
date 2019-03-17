.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddToSecretByUri"
.end annotation


# instance fields
.field private mTarPath:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2598
    .local p2, "diryBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2599
    iput-object p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mUri:Landroid/net/Uri;

    .line 2600
    return-void
.end method

.method private static canAddSecret(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2693
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isOwnerSpaceFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2694
    const/16 v1, -0x6a

    .line 2705
    :goto_0
    return v1

    .line 2696
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/cloud/CloudUtils;->canUpload(Ljava/lang/String;)I

    move-result v0

    .line 2697
    .local v0, "result":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2698
    const/16 v1, -0x6c

    goto :goto_0

    .line 2699
    :cond_1
    if-eqz v0, :cond_2

    .line 2700
    const/16 v1, -0x6b

    goto :goto_0

    .line 2702
    :cond_2
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v2

    const-wide/16 v4, -0x6f

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 2703
    const/16 v1, -0x6f

    goto :goto_0

    .line 2705
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 2633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2635
    .local v10, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_9

    .line 2636
    new-instance v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4, v10, v11}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;-><init>(Landroid/content/Context;Ljava/util/ArrayList;J)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v14

    .line 2637
    .local v14, "ret":J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_0

    .line 2638
    sget-object v2, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 2639
    new-instance v2, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/16 v3, 0x23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    const-string v5, "AddToSecretByUri"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    .line 2689
    .end local v10    # "id":J
    .end local v14    # "ret":J
    :cond_0
    :goto_0
    return-wide v14

    .line 2647
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->canAddSecret(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    .line 2648
    .local v12, "result":I
    if-gez v12, :cond_2

    .line 2649
    int-to-long v14, v12

    goto :goto_0

    .line 2651
    :cond_2
    const-string v2, "MIUI/Gallery/cloud/.secretAlbum"

    invoke-static {v2}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2652
    .local v13, "secretAlbumPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2653
    .local v8, "fileName":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v13, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    .local v16, "tarFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2655
    .local v17, "tarPath":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/miui/gallery/cloud/DownloadPathHelper;->addPostfixToFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2657
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    .local v9, "rename":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v9}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    .line 2659
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 2661
    .end local v9    # "rename":Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v2, v13}, Lcom/miui/gallery/util/ExtraTextUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v13, v3}, Lcom/miui/gallery/cloud/CloudUtils;->moveImageToFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 2664
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v2, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, -0x3e8

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;-><init>(Ljava/io/File;JIZ)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->saveToCloudDB(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J

    move-result-wide v10

    .line 2671
    .restart local v10    # "id":J
    const-wide/16 v2, -0x2

    cmp-long v2, v10, v2

    if-nez v2, :cond_6

    .line 2672
    sget-object v2, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    .line 2673
    new-instance v2, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/16 v3, 0x23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    const-string v5, "AddToSecretByUri"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    .line 2677
    :cond_5
    const-wide/16 v14, -0x67

    goto/16 :goto_0

    .line 2678
    :cond_6
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_7

    .line 2679
    const-wide/16 v14, -0x65

    goto/16 :goto_0

    .line 2681
    :cond_7
    sget-object v2, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8

    .line 2682
    new-instance v2, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/16 v3, 0x23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    const-string v5, "AddToSecretByUri"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    :cond_8
    move-wide v14, v10

    .line 2686
    goto/16 :goto_0

    .line 2689
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v12    # "result":I
    .end local v13    # "secretAlbumPath":Ljava/lang/String;
    .end local v16    # "tarFile":Ljava/io/File;
    .end local v17    # "tarPath":Ljava/lang/String;
    :cond_9
    const-wide/16 v14, 0x0

    goto/16 :goto_0
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    .line 2609
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 2610
    const-string v0, "content"

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2611
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v1, v3

    new-instance v5, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri$1;-><init>(Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;)V

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    .line 2624
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2625
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->queryCloudItemByFilePath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2628
    :cond_1
    return-object v2

    .line 2621
    :cond_2
    const-string v0, "file"

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2622
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2710
    const-string v0, "%s{%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AddToSecretByUri"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecretByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x64

    goto :goto_0
.end method
