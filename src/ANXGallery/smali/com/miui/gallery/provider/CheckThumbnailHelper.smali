.class public Lcom/miui/gallery/provider/CheckThumbnailHelper;
.super Ljava/lang/Object;
.source "CheckThumbnailHelper.java"


# direct methods
.method private static checkOriginalRecordExist(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "cachedAlbumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 62
    .local v17, "sha1":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    const/4 v14, 0x0

    .line 115
    :goto_0
    return v14

    .line 66
    :cond_0
    const/4 v14, 0x0

    .line 67
    .local v14, "isThumbnail":Z
    const/4 v13, 0x0

    .line 69
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 70
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    invoke-static/range {p0 .. p1}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 71
    .local v16, "relativePath":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 73
    .local v15, "parentPath":Ljava/lang/String;
    invoke-static {v15}, Lcom/miui/gallery/cloud/DownloadPathHelper;->isShareFolderRelativePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 75
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const-string v6, "%s LIKE \'%s\'"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "sha1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v17, v7, v8

    .line 77
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 75
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 79
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v14, 0x1

    .line 113
    :cond_1
    :goto_1
    invoke-static {v13}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 79
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 82
    :cond_3
    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 83
    .local v12, "albumId":Ljava/lang/Long;
    if-nez v12, :cond_5

    .line 85
    const-string v5, "serverId = %s"

    .line 86
    .local v5, "where":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCameraLocalFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 87
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 94
    :goto_2
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 96
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 98
    move-object/from16 v0, p2

    invoke-interface {v0, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_4
    invoke-static {v13}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 102
    .end local v5    # "where":Ljava/lang/String;
    :cond_5
    if-eqz v12, :cond_1

    .line 104
    sget-object v7, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v8, v3

    const-string v3, "%s=%s AND %s LIKE \'%s\'"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v9, "localGroupId"

    aput-object v9, v4, v6

    const/4 v6, 0x1

    .line 106
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    const/4 v6, 0x2

    const-string/jumbo v9, "sha1"

    aput-object v9, v4, v6

    const/4 v6, 0x3

    aput-object v17, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    .line 104
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 109
    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v14, 0x1

    :goto_3
    goto/16 :goto_1

    .line 88
    .restart local v5    # "where":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getScreenshotsLocalFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 89
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 91
    :cond_7
    const-string v3, "%s LIKE \'%s\' AND %s AND %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "localFile"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v15, v4, v6

    const/4 v6, 0x2

    const-string v7, "(serverType=0)"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    goto/16 :goto_2

    .line 109
    .end local v5    # "where":Ljava/lang/String;
    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    .line 113
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v12    # "albumId":Ljava/lang/Long;
    .end local v15    # "parentPath":Ljava/lang/String;
    .end local v16    # "relativePath":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {v13}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static checkThumbnail(Landroid/content/Context;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePaths"    # [Ljava/lang/String;
    .param p2, "strictMode"    # Z

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    const/4 v2, 0x0

    .line 49
    :goto_0
    return-object v2

    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 28
    .local v6, "startTime":J
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "check_thumbnail_result"

    aput-object v10, v8, v9

    array-length v9, p1

    invoke-direct {v2, v8, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 30
    .local v2, "matrixCursor":Landroid/database/MatrixCursor;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v0, "cachedAlbumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    array-length v9, p1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_5

    aget-object v3, p1, v8

    .line 32
    .local v3, "mediaFile":Ljava/lang/String;
    const/4 v5, 0x1

    .line 34
    .local v5, "result":I
    :try_start_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 35
    .local v4, "mediaFileUri":Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 36
    if-eqz p2, :cond_3

    .line 37
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10, v0}, Lcom/miui/gallery/provider/CheckThumbnailHelper;->checkOriginalRecordExist(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 45
    .end local v4    # "mediaFileUri":Landroid/net/Uri;
    :cond_2
    :goto_2
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v2, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 31
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 38
    .restart local v4    # "mediaFileUri":Landroid/net/Uri;
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/provider/CheckThumbnailHelper;->checkUserCommentSha1Exist(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-nez v10, :cond_1

    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    .line 42
    .end local v4    # "mediaFileUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "CheckThumbnailHelper"

    const-string v11, "Failed checking file %s\n %s"

    invoke-static {v10, v11, v3, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 47
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mediaFile":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_5
    const-string v8, "CheckThumbnailHelper"

    const-string v9, "Checked %d files, cost %ss"

    array-length v10, p1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 47
    invoke-static {v8, v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static checkUserCommentSha1Exist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "sha1":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
