.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddToSecret"
.end annotation


# instance fields
.field private mMediaId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mediaId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2208
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2209
    iput-wide p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    .line 2210
    return-void
.end method

.method private addFilePath(Landroid/content/ContentValues;Z)J
    .locals 12
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "nameConflict"    # Z

    .prologue
    .line 2382
    const-string v8, "microthumbfile"

    iget-object v9, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xc

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    if-eqz p2, :cond_1

    iget-object v8, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/cloud/DownloadPathHelper;->addPostfixToFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2384
    .local v6, "tarName":Ljava/lang/String;
    :goto_0
    const-string v8, "fileName"

    invoke-virtual {p1, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    iget-object v8, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x7

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2386
    .local v1, "localPath":Ljava/lang/String;
    const-string v8, "MIUI/Gallery/cloud/.secretAlbum"

    invoke-static {v8}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2387
    .local v5, "secretAlbumPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2388
    .local v0, "localFileMoved":Z
    invoke-static {v1}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2389
    if-eqz p2, :cond_0

    .line 2390
    new-instance v4, Ljava/io/File;

    invoke-static {v1}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    .local v4, "rename":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v4}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2392
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2404
    .end local v4    # "rename":Ljava/io/File;
    :cond_0
    invoke-static {v5, v1}, Lcom/miui/gallery/util/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2405
    const/4 v8, 0x1

    invoke-static {v1, v5, v8}, Lcom/miui/gallery/cloud/CloudUtils;->moveImageToFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 2406
    .local v2, "movedPath":Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/miui/gallery/util/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2407
    const-string v8, "CloudManager"

    const-string v9, "Failed to move item %s to secret folder"

    invoke-static {v8, v9, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2408
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2409
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "detail"

    const-string v9, "local file move failed to secret folder"

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    const-string/jumbo v8, "src"

    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    const-string v8, "des"

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2412
    const-string v8, "operation_abnormal"

    const-string v9, "add_secret_failed_bc_file_operation_failed"

    invoke-static {v8, v9, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2414
    const-wide/16 v8, -0x71

    .line 2501
    .end local v2    # "movedPath":Ljava/lang/String;
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-wide v8

    .line 2383
    .end local v0    # "localFileMoved":Z
    .end local v1    # "localPath":Ljava/lang/String;
    .end local v5    # "secretAlbumPath":Ljava/lang/String;
    .end local v6    # "tarName":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2394
    .restart local v0    # "localFileMoved":Z
    .restart local v1    # "localPath":Ljava/lang/String;
    .restart local v4    # "rename":Ljava/io/File;
    .restart local v5    # "secretAlbumPath":Ljava/lang/String;
    .restart local v6    # "tarName":Ljava/lang/String;
    :cond_2
    const-string v8, "CloudManager"

    const-string v9, "Failed to move name conflict item %s to %s"

    invoke-static {v8, v9, v1, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2395
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2396
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "detail"

    const-string v9, "local file rename conflict file"

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    const-string/jumbo v8, "src"

    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2398
    const-string v8, "des"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    const-string v8, "operation_abnormal"

    const-string v9, "add_secret_failed_bc_file_operation_failed"

    invoke-static {v8, v9, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2401
    const-wide/16 v8, -0x71

    goto :goto_1

    .line 2416
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "rename":Ljava/io/File;
    .restart local v2    # "movedPath":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .line 2425
    .end local v2    # "movedPath":Ljava/lang/String;
    :goto_2
    const-string v8, "localFile"

    invoke-virtual {p1, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    iget-object v8, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x7

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2427
    invoke-static {v1}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 2429
    sget-object v8, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 2437
    :goto_3
    const/4 v0, 0x1

    .line 2439
    :cond_4
    iget-object v8, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x8

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2440
    .local v7, "thumbPath":Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2441
    if-eqz v0, :cond_8

    .line 2442
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2443
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "detail"

    const-string v9, "local & thumbnail both exist"

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2444
    const-string v8, "localFile"

    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2445
    const-string/jumbo v8, "thumbnailFile"

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2446
    const-string v8, "operation_abnormal"

    const-string v9, "add_secret_abnormal"

    invoke-static {v8, v9, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2449
    const-string/jumbo v8, "thumbnailFile"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2450
    sget-object v8, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 2501
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_4
    const-wide/16 v8, -0x1

    goto/16 :goto_1

    .line 2418
    .end local v7    # "thumbPath":Ljava/lang/String;
    :cond_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2419
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "detail"

    const-string v9, "local file already exist in secret folder"

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    const-string/jumbo v8, "src"

    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    const-string v8, "des"

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2422
    const-string v8, "operation_abnormal"

    const-string v9, "add_secret_abnormal"

    invoke-static {v8, v9, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 2431
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2432
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "detail"

    const-string v9, "local file still exist after move to secret"

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2433
    const-string/jumbo v8, "src"

    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    const-string v8, "operation_abnormal"

    const-string v9, "add_secret_abnormal"

    invoke-static {v8, v9, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 2452
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "thumbPath":Ljava/lang/String;
    :cond_8
    if-eqz p2, :cond_9

    .line 2453
    new-instance v4, Ljava/io/File;

    invoke-static {v7}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    .restart local v4    # "rename":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v4}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2455
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 2467
    .end local v4    # "rename":Ljava/io/File;
    :cond_9
    invoke-static {v5, v7}, Lcom/miui/gallery/util/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2468
    const/4 v8, 0x1

    invoke-static {v7, v5, v8}, Lcom/miui/gallery/cloud/CloudUtils;->moveImageToFolder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2469
    invoke-static {v5, v7}, Lcom/miui/gallery/util/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 2470
    const-string v8, "CloudManager"

    const-string v9, "Failed to move item %s to secret folder"

    invoke-static {v8, v9, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2471
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2472
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "detail"

    const-string/jumbo v9, "thumbnail file move failed to secret folder"

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2473
    const-string/jumbo v8, "src"

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    const-string v8, "des"

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2475
    const-string v8, "operation_abnormal"

    const-string v9, "add_secret_failed_bc_file_operation_failed"

    invoke-static {v8, v9, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2477
    const-wide/16 v8, -0x71

    goto/16 :goto_1

    .line 2457
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "rename":Ljava/io/File;
    :cond_a
    const-string v8, "CloudManager"

    const-string v9, "Failed to move name conflict item %s to %s"

    invoke-static {v8, v9, v7, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2458
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2459
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "detail"

    const-string/jumbo v9, "thumbnail rename conflict file"

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2460
    const-string/jumbo v8, "src"

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    const-string v8, "des"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2462
    const-string v8, "operation_abnormal"

    const-string v9, "add_secret_failed_bc_file_operation_failed"

    invoke-static {v8, v9, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2464
    const-wide/16 v8, -0x71

    goto/16 :goto_1

    .line 2480
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "rename":Ljava/io/File;
    :cond_b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2481
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "detail"

    const-string/jumbo v9, "thumbnail file already exist in secret folder"

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2482
    const-string/jumbo v8, "src"

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    const-string v8, "des"

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2484
    const-string v8, "operation_abnormal"

    const-string v9, "add_secret_abnormal"

    invoke-static {v8, v9, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2487
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    const-string/jumbo v8, "thumbnailFile"

    invoke-virtual {p1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    iget-object v8, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x8

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2489
    invoke-static {v7}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 2491
    sget-object v8, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2493
    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2494
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "detail"

    const-string/jumbo v9, "thumbnail file still exist after move to secret"

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2495
    const-string/jumbo v8, "src"

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2496
    const-string v8, "operation_abnormal"

    const-string v9, "add_secret_abnormal"

    invoke-static {v8, v9, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_4
.end method

.method static canAddSecret(Landroid/content/Context;Landroid/database/Cursor;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x7

    const/16 v1, -0x6b

    const/4 v6, 0x4

    .line 2505
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isOwnerSpaceFull()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2506
    const/16 v1, -0x6a

    .line 2528
    :cond_0
    :goto_0
    return v1

    .line 2508
    :cond_1
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2511
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2512
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2513
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2514
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->canUpload(Ljava/lang/String;)I

    move-result v2

    .line 2515
    .local v2, "result":I
    if-ne v2, v6, :cond_2

    .line 2516
    const/16 v1, -0x6c

    goto :goto_0

    .line 2517
    :cond_2
    if-nez v2, :cond_0

    .line 2522
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "result":I
    :cond_3
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2523
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v8}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v2

    .line 2524
    .local v2, "result":J
    const-wide/16 v4, -0x6f

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 2525
    const/16 v1, -0x6f

    goto :goto_0

    .line 2528
    .end local v2    # "result":J
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkConflict(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2336
    .local v13, "sha1":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2337
    .local v10, "fileName":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2338
    const/4 v8, 0x0

    .line 2340
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "cloud"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "sha1"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "fileName"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "localFlag"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "localFile"

    aput-object v3, v2, v0

    const-string v3, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND (sha1 = ? OR fileName = ?) AND localGroupId=? AND (serverId IS NOT NULL OR localFile IS NOT NULL)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v13, v4, v0

    const/4 v0, 0x1

    aput-object v10, v4, v0

    const/4 v0, 0x2

    const-wide/16 v6, -0x3e8

    .line 2349
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 2340
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2351
    if-eqz v8, :cond_6

    .line 2352
    const/4 v9, 0x0

    .line 2353
    .local v9, "fileConflict":Z
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2354
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2355
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2356
    .local v12, "localFlag":I
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2357
    .local v11, "localFile":Ljava/lang/String;
    const/4 v0, 0x7

    if-eq v12, v0, :cond_1

    const/16 v0, 0x8

    if-ne v12, v0, :cond_2

    .line 2358
    :cond_1
    invoke-static {v11}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 2360
    :cond_2
    const/16 v0, -0x68

    .line 2375
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2378
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "fileConflict":Z
    .end local v11    # "localFile":Ljava/lang/String;
    .end local v12    # "localFlag":I
    :goto_1
    return v0

    .line 2362
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "fileConflict":Z
    .restart local v11    # "localFile":Ljava/lang/String;
    .restart local v12    # "localFlag":I
    :cond_3
    :try_start_1
    const-string v0, "operation_abnormal"

    const-string v1, "add_secret_sha1_conflict_with_unsynced_file_unexist_item"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    .end local v11    # "localFile":Ljava/lang/String;
    .end local v12    # "localFlag":I
    :cond_4
    if-nez v9, :cond_0

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2367
    const/4 v9, 0x1

    goto :goto_0

    .line 2370
    :cond_5
    if-eqz v9, :cond_6

    .line 2371
    const/16 v0, -0x69

    .line 2375
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v9    # "fileConflict":Z
    :cond_6
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2378
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 2375
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private deleteAllWithSameSha1(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Z)V
    .locals 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "deleteTarget"    # Z

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2306
    .local v13, "sha1":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id!="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2308
    .local v14, "subNotDeleteTar":Ljava/lang/String;
    const-string/jumbo v3, "sha1=? AND localGroupId!=-1000"

    .line 2310
    .local v3, "where":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 2311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2314
    :cond_0
    const/4 v10, 0x0

    .line 2316
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "cloud"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v13, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2317
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2318
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [J

    .line 2319
    .local v8, "ids":[J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v12, v0, :cond_1

    .line 2320
    invoke-interface {v10, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2321
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v8, v12

    .line 2319
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2323
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v7

    const/16 v9, 0x24

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v4 .. v9}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$500(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2329
    .end local v8    # "ids":[J
    .end local v12    # "i":I
    :cond_2
    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2332
    .end local v3    # "where":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "subNotDeleteTar":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 2326
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "subNotDeleteTar":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 2327
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CloudManager"

    invoke-static {v0, v11}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2329
    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private postCheck(Landroid/database/sqlite/SQLiteDatabase;JZ)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "id"    # J
    .param p4, "succeed"    # Z

    .prologue
    .line 2532
    const/4 v8, 0x0

    .line 2534
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "cloud"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "localFlag"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "localFile"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "serverStatus"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 2536
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 2534
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2538
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2539
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2540
    .local v11, "localFlag":I
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2541
    .local v10, "localFile":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2542
    .local v13, "serverStatus":Ljava/lang/String;
    const/16 v0, 0x8

    if-eq v11, v0, :cond_0

    const/4 v0, 0x7

    if-ne v11, v0, :cond_3

    .line 2543
    :cond_0
    invoke-static {v10}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2544
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2545
    .local v12, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "result"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2546
    const-string v0, "detail"

    const-string v1, "local file not exist with unsynced item"

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2547
    const-string v0, "localFile"

    invoke-virtual {v12, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2548
    const-string v0, "operation_abnormal"

    const-string v1, "add_secret_abnormal"

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2583
    .end local v10    # "localFile":Ljava/lang/String;
    .end local v11    # "localFlag":I
    .end local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "serverStatus":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2550
    .restart local v10    # "localFile":Ljava/lang/String;
    .restart local v11    # "localFlag":I
    .restart local v13    # "serverStatus":Ljava/lang/String;
    :cond_2
    if-eqz p4, :cond_1

    const-string v0, "MIUI/Gallery/cloud/.secretAlbum"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2551
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2552
    .restart local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "result"

    const-string/jumbo v1, "true"

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2553
    const-string v0, "detail"

    const-string v1, "local file not in secret folder"

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2554
    const-string v0, "localFile"

    invoke-virtual {v12, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    const-string v0, "operation_abnormal"

    const-string v1, "add_secret_abnormal"

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2580
    .end local v10    # "localFile":Ljava/lang/String;
    .end local v11    # "localFlag":I
    .end local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "serverStatus":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2581
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "CloudManager"

    invoke-static {v0, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2558
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "localFile":Ljava/lang/String;
    .restart local v11    # "localFlag":I
    .restart local v13    # "serverStatus":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x2

    if-eq v11, v0, :cond_4

    const/4 v0, -0x1

    if-eq v11, v0, :cond_4

    const/16 v0, 0xb

    if-ne v11, v0, :cond_5

    .line 2560
    :cond_4
    :try_start_1
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2561
    .restart local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "result"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2562
    const-string v0, "detail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record in invalid local state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2563
    const-string v0, "operation_abnormal"

    const-string v1, "add_secret_abnormal"

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2565
    .end local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string v0, "deleted"

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "purged"

    .line 2566
    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2567
    :cond_6
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2568
    .restart local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "result"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2569
    const-string v0, "detail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record in invalid server state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2570
    const-string v0, "operation_abnormal"

    const-string v1, "add_secret_abnormal"

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2574
    .end local v10    # "localFile":Ljava/lang/String;
    .end local v11    # "localFlag":I
    .end local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "serverStatus":Ljava/lang/String;
    :cond_7
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2575
    .restart local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "result"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2576
    const-string v0, "detail"

    const-string v1, "failed to retrieve record again"

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2577
    const-string v0, "operation_abnormal"

    const-string v1, "add_secret_abnormal"

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 20
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 2225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    invoke-static {v13, v14}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->canAddSecret(Landroid/content/Context;Landroid/database/Cursor;)I

    move-result v9

    .line 2226
    .local v9, "result":I
    if-gez v9, :cond_0

    .line 2227
    int-to-long v6, v9

    .line 2300
    :goto_0
    return-wide v6

    .line 2229
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    .line 2230
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->checkConflict(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v4

    .line 2231
    .local v4, "check":I
    const/16 v13, -0x68

    if-ne v4, v13, :cond_1

    .line 2232
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->deleteAllWithSameSha1(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Z)V

    .line 2233
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    goto :goto_0

    .line 2235
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2236
    .local v8, "localFlag":I
    const-wide/16 v6, -0x65

    .line 2237
    .local v6, "id":J
    const/4 v13, 0x7

    if-eq v8, v13, :cond_2

    const/16 v13, 0x8

    if-ne v8, v13, :cond_5

    .line 2239
    :cond_2
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2240
    .local v12, "targetInserts":Landroid/content/ContentValues;
    invoke-static {}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$200()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    invoke-static {v13, v14}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$300([Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2241
    const-string v13, "localFlag"

    const/16 v14, 0x8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2242
    const/16 v13, -0x69

    if-ne v4, v13, :cond_4

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->addFilePath(Landroid/content/ContentValues;Z)J

    move-result-wide v6

    .line 2243
    const-wide/16 v14, -0x1

    cmp-long v13, v6, v14

    if-nez v13, :cond_3

    .line 2244
    const-string v13, "localGroupId"

    const-wide/16 v14, -0x3e8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2245
    const-string v13, "cloud"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 2246
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-lez v13, :cond_3

    .line 2247
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v12}, Lcom/miui/gallery/provider/cache/MediaManager;->insert(JLandroid/content/ContentValues;)J

    .line 2248
    const-string v13, "cloud"

    const-string v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 2249
    .local v5, "count":I
    if-lez v5, :cond_3

    .line 2250
    const-string v13, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 2293
    .end local v5    # "count":I
    .end local v12    # "targetInserts":Landroid/content/ContentValues;
    :cond_3
    :goto_2
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-lez v13, :cond_a

    .line 2295
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->postCheck(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 2296
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->deleteAllWithSameSha1(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Z)V

    goto/16 :goto_0

    .line 2242
    .restart local v12    # "targetInserts":Landroid/content/ContentValues;
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 2254
    .end local v12    # "targetInserts":Landroid/content/ContentValues;
    :cond_5
    if-eqz v8, :cond_8

    .line 2257
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2258
    .local v10, "srcUpdates":Landroid/content/ContentValues;
    const-string v13, "localGroupId"

    const-wide/16 v14, -0x3e8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2259
    const/16 v13, -0x69

    if-ne v4, v13, :cond_7

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->addFilePath(Landroid/content/ContentValues;Z)J

    move-result-wide v6

    .line 2260
    const-wide/16 v14, -0x1

    cmp-long v13, v6, v14

    if-nez v13, :cond_3

    .line 2261
    const-string v13, "cloud"

    const-string v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 2262
    .restart local v5    # "count":I
    if-lez v5, :cond_3

    .line 2263
    if-eqz p2, :cond_6

    .line 2264
    const-string v13, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v10}, Lcom/miui/gallery/provider/cache/MediaManager;->update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 2266
    :cond_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    goto :goto_2

    .line 2259
    .end local v5    # "count":I
    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    .line 2271
    .end local v10    # "srcUpdates":Landroid/content/ContentValues;
    :cond_8
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2272
    .restart local v10    # "srcUpdates":Landroid/content/ContentValues;
    const-string v13, "localFlag"

    const/16 v14, 0xb

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2273
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2274
    .local v11, "targInserts":Landroid/content/ContentValues;
    const-string v13, "localFlag"

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2275
    invoke-static {}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$200()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    invoke-static {v13, v14}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$300([Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2276
    const/16 v13, -0x69

    if-ne v4, v13, :cond_9

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->addFilePath(Landroid/content/ContentValues;Z)J

    move-result-wide v6

    .line 2277
    const-wide/16 v14, -0x1

    cmp-long v13, v6, v14

    if-nez v13, :cond_3

    .line 2278
    const-string v13, "fromLocalGroupId"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2279
    const-string v13, "localGroupId"

    const-wide/16 v14, -0x3e8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2280
    const-string v13, "localImageId"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2282
    const-string v13, "cloud"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 2283
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-lez v13, :cond_3

    .line 2284
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v11}, Lcom/miui/gallery/provider/cache/MediaManager;->insert(JLandroid/content/ContentValues;)J

    .line 2285
    const-string v13, "cloud"

    const-string v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    move-wide/from16 v18, v0

    .line 2286
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 2285
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 2287
    .restart local v5    # "count":I
    if-lez v5, :cond_3

    .line 2288
    const-string v13, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2276
    .end local v5    # "count":I
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 2298
    .end local v10    # "srcUpdates":Landroid/content/ContentValues;
    .end local v11    # "targInserts":Landroid/content/ContentValues;
    :cond_a
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->postCheck(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    goto/16 :goto_0
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 2214
    iget-wide v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2215
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    .line 2217
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 2215
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2220
    :cond_0
    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2587
    const-string v0, "AddToSecret{%d}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddToSecret;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
