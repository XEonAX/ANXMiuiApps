.class public Lcom/miui/gallery/provider/ProcessingMediaManager;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"


# direct methods
.method private static isProcessingTimeout(Landroid/database/Cursor;I)Z
    .locals 8
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "processingStartTimeIdx"    # I

    .prologue
    const/4 v1, 0x0

    .line 24
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 28
    .local v2, "processingStartTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0x9c40

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 29
    const-string v1, "media_path"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "path":Ljava/lang/String;
    const-string v1, "ProcessingMediaManager"

    const-string v4, "Media process timeout: [%s]"

    invoke-static {v1, v4, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static queryProcessingMediaIds()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v6

    .line 133
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v10, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v12, 0x0

    .line 139
    .local v12, "processingCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v6}, Lcom/miui/gallery/photosapi/PhotosOemApi;->getQueryProcessingUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "media_store_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 138
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 144
    if-eqz v12, :cond_2

    .line 145
    const-string v1, "media_store_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 146
    .local v11, "mediaStoreIdIdx":I
    const-string/jumbo v1, "start_time"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 148
    .local v13, "processingStartTimeIdx":I
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    invoke-static {v12, v13}, Lcom/miui/gallery/provider/ProcessingMediaManager;->isProcessingTimeout(Landroid/database/Cursor;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 153
    .local v8, "id":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 156
    .end local v8    # "id":J
    .end local v11    # "mediaStoreIdIdx":I
    .end local v13    # "processingStartTimeIdx":I
    :catch_0
    move-exception v7

    .line 157
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ProcessingMediaManager"

    invoke-static {v1, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    if-eqz v12, :cond_1

    .line 160
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 164
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v10

    .line 159
    :cond_2
    if-eqz v12, :cond_1

    .line 160
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 159
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_3

    .line 160
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static queryProcessingMediaPaths()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v6

    .line 94
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v10, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 100
    .local v11, "processingCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v6}, Lcom/miui/gallery/photosapi/PhotosOemApi;->getQueryProcessingUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "media_path"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 99
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 105
    if-eqz v11, :cond_2

    .line 106
    const-string v1, "media_path"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 107
    .local v9, "mediaPathIdx":I
    const-string/jumbo v1, "start_time"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 109
    .local v12, "processingStartTimeIdx":I
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-static {v11, v12}, Lcom/miui/gallery/provider/ProcessingMediaManager;->isProcessingTimeout(Landroid/database/Cursor;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "mediaPath":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    .end local v8    # "mediaPath":Ljava/lang/String;
    .end local v9    # "mediaPathIdx":I
    .end local v12    # "processingStartTimeIdx":I
    :catch_0
    move-exception v7

    .line 120
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ProcessingMediaManager"

    invoke-static {v1, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    if-eqz v11, :cond_1

    .line 123
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 127
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v10

    .line 122
    :cond_2
    if-eqz v11, :cond_1

    .line 123
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 122
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    .line 123
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static queryProcessingMedias()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/ProcessingMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    .line 40
    .local v9, "context":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 42
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    new-instance v11, Lcom/miui/gallery/provider/ProcessingMedia$Factory;

    invoke-direct {v11, v9}, Lcom/miui/gallery/provider/ProcessingMedia$Factory;-><init>(Landroid/content/Context;)V

    .line 44
    .local v11, "factory":Lcom/miui/gallery/provider/ProcessingMedia$Factory;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v16, "processingMedia":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/ProcessingMedia;>;"
    const/4 v15, 0x0

    .line 48
    .local v15, "processingCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v9}, Lcom/miui/gallery/photosapi/PhotosOemApi;->getQueryProcessingUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 47
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 53
    if-eqz v15, :cond_2

    .line 54
    const-string v3, "media_store_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 55
    .local v14, "mediaStoreIdIdx":I
    const-string v3, "media_path"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 56
    .local v13, "mediaPathIdx":I
    const-string v3, "progress_status"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 57
    .local v21, "progressStatusIdx":I
    const-string v3, "progress_percentage"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 58
    .local v19, "progressPercentageIdx":I
    const-string/jumbo v3, "start_time"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 60
    .local v17, "processingStartTimeIdx":I
    :cond_0
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/miui/gallery/provider/ProcessingMediaManager;->isProcessingTimeout(Landroid/database/Cursor;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "mediaPath":Ljava/lang/String;
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 66
    .local v4, "mediaStoreId":J
    move/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 67
    .local v20, "progressStatus":I
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 69
    .local v18, "progressPercentage":I
    const/4 v7, 0x1

    new-instance v8, Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;

    .line 73
    invoke-static/range {v20 .. v20}, Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;->fromIdentifier(I)Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;

    move-result-object v3

    move/from16 v0, v18

    invoke-direct {v8, v3, v0}, Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;-><init>(Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;I)V

    move-object v3, v11

    .line 69
    invoke-virtual/range {v3 .. v8}, Lcom/miui/gallery/provider/ProcessingMedia$Factory;->build(JLjava/lang/String;ILcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;)Lcom/miui/gallery/provider/ProcessingMedia;

    move-result-object v12

    .line 77
    .local v12, "media":Lcom/miui/gallery/provider/ProcessingMedia;
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    .end local v4    # "mediaStoreId":J
    .end local v6    # "mediaPath":Ljava/lang/String;
    .end local v12    # "media":Lcom/miui/gallery/provider/ProcessingMedia;
    .end local v13    # "mediaPathIdx":I
    .end local v14    # "mediaStoreIdIdx":I
    .end local v17    # "processingStartTimeIdx":I
    .end local v18    # "progressPercentage":I
    .end local v19    # "progressPercentageIdx":I
    .end local v20    # "progressStatus":I
    .end local v21    # "progressStatusIdx":I
    :catch_0
    move-exception v10

    .line 81
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ProcessingMediaManager"

    invoke-static {v3, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    if-eqz v15, :cond_1

    .line 84
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 88
    .end local v10    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v16

    .line 83
    :cond_2
    if-eqz v15, :cond_1

    .line 84
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 83
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_3

    .line 84
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method
