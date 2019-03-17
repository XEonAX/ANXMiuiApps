.class public Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;
.super Ljava/lang/Object;
.source "OriginDownloader.java"

# interfaces
.implements Lcom/miui/gallery/sdk/download/downloader/IDownloader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkConditionPermitted(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 160
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->checkCondition(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    move-result-object v0

    .line 161
    .local v0, "reason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isStatusOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-static {p1, v0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackError(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 165
    :cond_0
    const/4 v1, 0x0

    .line 167
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkDBImageValid(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Z
    .locals 10
    .param p0, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 258
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    .line 259
    .local v0, "dbImage":Lcom/miui/gallery/data/DBImage;
    invoke-static {v0}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->canDownloadStatus(Lcom/miui/gallery/data/DBImage;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    :goto_0
    return v2

    .line 262
    :cond_0
    if-nez v0, :cond_1

    .line 263
    new-instance v2, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->PARAMS_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v5, "item null"

    invoke-direct {v2, v4, v5, v9}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, v2, v9}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;Ljava/lang/String;)V

    :goto_1
    move v2, v3

    .line 272
    goto :goto_0

    .line 265
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v4}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadTempFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "downloadTempPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isNotSyncedStatus(Lcom/miui/gallery/data/DBImage;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    new-instance v4, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->NOT_SYNCED:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v6, "item invalid server[%s], local[%s]"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerStatus()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2, v9}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, v4, v1}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :cond_2
    new-instance v4, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->PARAMS_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v6, "item invalid server[%s], local[%s]"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerStatus()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2, v9}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, v4, v1}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static createListener(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/miui/gallery/sdk/download/assist/RequestItem;)Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .locals 1
    .param p0, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p1, "requestItem"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .prologue
    .line 289
    new-instance v0, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader$1;-><init>(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/miui/gallery/sdk/download/assist/RequestItem;)V

    return-object v0
.end method

.method private doPostOriginDownloadWork(Lcom/miui/gallery/sdk/download/assist/RequestItem;Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/lang/String;)Z
    .locals 15
    .param p1, "requestItem"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p2, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p3, "downloadTempPath"    # Ljava/lang/String;

    .prologue
    .line 173
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v9, v10}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isOriginalFileValid(Ljava/lang/String;Lcom/miui/gallery/data/DBImage;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 174
    const-string v9, "OriginalFileDownloader"

    const-string v10, "Downloaded original file [%s] is invalid"

    move-object/from16 v0, p3

    invoke-static {v9, v10, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    new-instance v9, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v10, Lcom/miui/gallery/error/core/ErrorCode;->SERVER_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v11, "Downloaded original file [%s] is invalid"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p3, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v9, v1}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;Ljava/lang/String;)V

    .line 176
    const/4 v9, 0x0

    .line 254
    :goto_0
    return v9

    .line 180
    :cond_0
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v10}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->ensureDownloadFolder(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v5

    .line 181
    .local v5, "errorCode":Lcom/miui/gallery/error/core/ErrorCode;
    sget-object v9, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    if-eq v5, v9, :cond_1

    .line 183
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v10}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadFolderPath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "downloadFolder":Ljava/lang/String;
    const-string v9, "OriginalFileDownloader"

    const-string v10, "Cannot create folder [%s] to download"

    invoke-static {v9, v10, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    new-instance v9, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    const-string v10, "Cannot create folder [%s] to download"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v5, v10, v11}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v9, v1}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;Ljava/lang/String;)V

    .line 186
    const/4 v9, 0x0

    goto :goto_0

    .line 190
    .end local v3    # "downloadFolder":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v10}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "downloadPath":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 193
    const-string v9, "OriginalFileDownloader"

    const-string v10, "Cannot find valid download path for image [%s]"

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    new-instance v9, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v10, Lcom/miui/gallery/error/core/ErrorCode;->UNKNOWN:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v11, "Cannot find valid download path for image [%s]"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v9, v1}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;Ljava/lang/String;)V

    .line 195
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 199
    :cond_2
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v9

    if-nez v9, :cond_3

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v9

    if-nez v9, :cond_4

    .line 200
    :cond_3
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    .line 204
    .local v6, "succeed":Z
    :goto_1
    if-nez v6, :cond_5

    .line 206
    const-string v9, "OriginalFileDownloader"

    const-string v10, "Move or encrypt failed for image [%s]"

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    sget-object v9, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 208
    new-instance v9, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v10, Lcom/miui/gallery/error/core/ErrorCode;->FILE_OPERATE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v11, "Move or encrypt failed for image [%s]"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v9, v1}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;Ljava/lang/String;)V

    .line 209
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 202
    .end local v6    # "succeed":Z
    :cond_4
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getSecretKey()[B

    move-result-object v9

    move-object/from16 v0, p3

    invoke-static {v0, v4, v9}, Lcom/miui/gallery/util/GalleryAes;->encryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v6

    .restart local v6    # "succeed":Z
    goto :goto_1

    .line 213
    :cond_5
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    .line 215
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v8, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v9

    if-nez v9, :cond_7

    .line 217
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    sget-object v10, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v9, v10}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->checkAndReturnValidFilePathForType(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, "thumbnailFilePath":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 221
    const-string v9, "OriginalFileDownloader"

    const-string v10, "Delete thumbnail [%s] of image [%s], because we already have original file"

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-static {v9, v10, v7, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    sget-object v9, Lcom/miui/gallery/util/MediaFileUtils$FileType;->THUMBNAIL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 225
    :cond_6
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 226
    const-string v9, "OriginalFileDownloader"

    const-string v10, "Delete thumbnail record [%s] of image [%s], because we already have original file"

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    .line 227
    invoke-virtual {v11}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    .line 226
    invoke-static {v9, v10, v11, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/miui/gallery/data/DBImage;->setThumbnailFile(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v9, "thumbnailFile"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 232
    .end local v7    # "thumbnailFilePath":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9, v4}, Lcom/miui/gallery/data/DBImage;->setLocalFile(Ljava/lang/String;)V

    .line 233
    const-string v9, "localFile"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->isImageType()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 236
    const-string/jumbo v9, "specialTypeFlags"

    invoke-static {v4}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->parseFlagsForImage(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    :cond_8
    :goto_2
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v8, v10}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v2

    .line 242
    .local v2, "count":I
    if-gtz v2, :cond_a

    .line 244
    const-string v9, "OriginalFileDownloader"

    const-string v10, "Update database failed after download original file for image [%s]"

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    sget-object v9, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 247
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 237
    .end local v2    # "count":I
    :cond_9
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 238
    const-string/jumbo v9, "specialTypeFlags"

    invoke-static {v4}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->parseFlagsForVideo(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 251
    .restart local v2    # "count":I
    :cond_a
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v9

    if-nez v9, :cond_b

    .line 252
    const/4 v9, 0x1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/io/File;

    const/4 v11, 0x0

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/miui/gallery/util/MediaFileUtils;->triggerMediaScan(Z[Ljava/io/File;)V

    .line 254
    :cond_b
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private static fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;Ljava/lang/String;)V
    .locals 3
    .param p0, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p1, "reason"    # Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .param p2, "deleteFile"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string v0, "OriginalFileDownloader"

    const-string v1, "download fail %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "OriginalFileDownloader"

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isStatusOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-static {v0, p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackError(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 284
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->statDownloadError(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 285
    return-void
.end method

.method private static packageDownloadedItem(Lcom/miui/gallery/data/DBImage;)Lcom/miui/gallery/sdk/download/assist/DownloadedItem;
    .locals 3
    .param p0, "image"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 310
    new-instance v1, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSecretKeyNoGenerate()[B

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;-><init>(Ljava/lang/String;[B)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public download(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)V
    .locals 18
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/sdk/download/assist/DownloadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/DownloadItem;>;"
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string v12, "OriginalFileDownloader"

    const-string v13, "Start downloading items [%s] total count %d"

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-static {v12, v13, v0, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .line 45
    .local v3, "downloadItem":Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->checkConditionPermitted(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 46
    const-string v12, "OriginalFileDownloader"

    const-string v13, "Download condition not ok type %s"

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v15

    invoke-static {v12, v13, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUriLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    .line 51
    .local v7, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 52
    const-string v12, "OriginalFileDownloader"

    const-string v13, "%s wait lock"

    invoke-static {v12, v13, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_3
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 57
    :try_start_0
    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUriAdapter()Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    move-result-object v12

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;->getDBItemForUri(Landroid/net/Uri;)Lcom/miui/gallery/data/DBImage;

    move-result-object v2

    .line 58
    .local v2, "dbImage":Lcom/miui/gallery/data/DBImage;
    const-string v15, "OriginalFileDownloader"

    const-string v16, "Start downloading origin file for uri [%s] size [%d]"

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v17

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getSize()J

    move-result-wide v12

    :goto_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v1, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    new-instance v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    invoke-direct {v9, v3, v2}, Lcom/miui/gallery/sdk/download/assist/RequestItem;-><init>(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/data/DBImage;)V

    .line 64
    .local v9, "requestItem":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v12

    .line 63
    invoke-static {v2, v12}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->checkAndReturnValidFilePathForType(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "existingValidFilePath":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 67
    const-string v12, "OriginalFileDownloader"

    const-string v13, "Original file for id %s already exist, no need to download again"

    iget-object v15, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v13, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v3, v12, v13}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->compareAnsSetStatus(II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 69
    invoke-static {v9}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->persistDownloadStatus(Lcom/miui/gallery/sdk/download/assist/RequestItem;)V

    .line 70
    invoke-static {v2}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->packageDownloadedItem(Lcom/miui/gallery/data/DBImage;)Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackSuccess(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_4
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 58
    .end local v6    # "existingValidFilePath":Ljava/lang/String;
    .end local v9    # "requestItem":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    :cond_5
    const-wide/16 v12, -0x1

    goto :goto_2

    .line 75
    .restart local v6    # "existingValidFilePath":Ljava/lang/String;
    .restart local v9    # "requestItem":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    :cond_6
    :try_start_1
    invoke-static {v9}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->checkDBImageValid(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 76
    const-string v12, "OriginalFileDownloader"

    const-string v13, "Invalid dbImage [%s] for download uri [%s]!"

    .line 77
    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v15

    .line 76
    invoke-static {v12, v13, v2, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 81
    :cond_7
    :try_start_2
    new-instance v8, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .line 82
    invoke-virtual {v12}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/miui/gallery/sdk/download/DownloadType;->getPriority()I

    move-result v12

    iget-object v13, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-direct {v8, v12, v13}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;)V

    .line 85
    .local v8, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v12}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isStatusOk()Z

    move-result v12

    if-nez v12, :cond_8

    .line 86
    const-string v12, "OriginalFileDownloader"

    const-string v13, "Item %s status %s"

    iget-object v15, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v15}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getKey()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getStatus()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v13, v15, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 90
    :cond_8
    :try_start_3
    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v12}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isManual()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 92
    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->persistDownloadStatus(Lcom/miui/gallery/data/DBImage;I)V

    .line 94
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 95
    const-string v12, "OriginalFileDownloader"

    const-string v13, "Origin download thread is interrupted!"

    invoke-static {v12, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 99
    :cond_a
    const/4 v4, 0x0

    .line 102
    .local v4, "downloadTempPath":Ljava/lang/String;
    :try_start_4
    iget-object v12, v8, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 103
    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v13

    .line 102
    invoke-static {v12, v13}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->ensureDownloadTempFolder(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v5

    .line 104
    .local v5, "errorCode":Lcom/miui/gallery/error/core/ErrorCode;
    sget-object v12, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    if-eq v5, v12, :cond_c

    .line 105
    const-string v12, "OriginalFileDownloader"

    const-string v13, "Failed to create temp download folder [%s] for image [%s]"

    iget-object v15, v8, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 106
    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadTempFolderPath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v15

    .line 105
    invoke-static {v12, v13, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    new-instance v12, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    const-string v13, "Failed to create temp download folder"

    const/4 v15, 0x0

    invoke-direct {v12, v5, v13, v15}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    :try_start_5
    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v12}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isManual()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 150
    invoke-static {v9}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->persistDownloadStatus(Lcom/miui/gallery/sdk/download/assist/RequestItem;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    :cond_b
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 111
    :cond_c
    :try_start_6
    iget-object v12, v8, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadTempFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v4

    .line 113
    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 114
    invoke-static {v8, v9}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->createListener(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/miui/gallery/sdk/download/assist/RequestItem;)Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    move-result-object v12

    invoke-static {v8, v4, v12}, Lcom/miui/gallery/cloud/GalleryKssManager;->doSharerDownload(Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    .line 118
    :goto_3
    const-string v12, "OriginalFileDownloader"

    const-string v13, "Done downloading temp file [%s] for image [%s]"

    iget-object v15, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-static {v12, v13, v4, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUriAdapter()Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    move-result-object v12

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;->getDBItemForUri(Landroid/net/Uri;)Lcom/miui/gallery/data/DBImage;

    move-result-object v2

    .line 123
    invoke-static {v9}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->checkDBImageValid(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 125
    const-string v12, "OriginalFileDownloader"

    const-string v13, "DBImage [%s] is invalid after download file for uri [%s] finished"

    .line 126
    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v15

    .line 125
    invoke-static {v12, v13, v2, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->persistDownloadStatus(Lcom/miui/gallery/data/DBImage;I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 149
    :goto_4
    :try_start_7
    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v12}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isManual()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 150
    invoke-static {v9}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->persistDownloadStatus(Lcom/miui/gallery/sdk/download/assist/RequestItem;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 154
    .end local v5    # "errorCode":Lcom/miui/gallery/error/core/ErrorCode;
    :cond_d
    :goto_5
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 116
    .restart local v5    # "errorCode":Lcom/miui/gallery/error/core/ErrorCode;
    :cond_e
    :try_start_8
    invoke-static {v8, v9}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->createListener(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/miui/gallery/sdk/download/assist/RequestItem;)Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    move-result-object v12

    invoke-static {v8, v4, v12}, Lcom/miui/gallery/cloud/GalleryKssManager;->doOwnerDownload(Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 144
    .end local v5    # "errorCode":Lcom/miui/gallery/error/core/ErrorCode;
    :catch_0
    move-exception v11

    .line 145
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_9
    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->checkConditionPermitted(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 146
    new-instance v12, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    invoke-static {v11, v4}, Lcom/miui/gallery/error/util/ErrorParseUtil;->parseError(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v13, v15, v11}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v9, v12, v4}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 149
    :cond_f
    :try_start_a
    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v12}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isManual()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 150
    invoke-static {v9}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->persistDownloadStatus(Lcom/miui/gallery/sdk/download/assist/RequestItem;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 154
    .end local v2    # "dbImage":Lcom/miui/gallery/data/DBImage;
    .end local v4    # "downloadTempPath":Ljava/lang/String;
    .end local v6    # "existingValidFilePath":Ljava/lang/String;
    .end local v8    # "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    .end local v9    # "requestItem":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v12

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v12

    .line 131
    .restart local v2    # "dbImage":Lcom/miui/gallery/data/DBImage;
    .restart local v4    # "downloadTempPath":Ljava/lang/String;
    .restart local v5    # "errorCode":Lcom/miui/gallery/error/core/ErrorCode;
    .restart local v6    # "existingValidFilePath":Ljava/lang/String;
    .restart local v8    # "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    .restart local v9    # "requestItem":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    :cond_10
    :try_start_b
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v4}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->doPostOriginDownloadWork(Lcom/miui/gallery/sdk/download/assist/RequestItem;Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/lang/String;)Z

    move-result v10

    .line 132
    .local v10, "succeeded":Z
    if-eqz v10, :cond_13

    .line 133
    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    const/4 v13, 0x0

    const/4 v15, 0x3

    invoke-virtual {v12, v13, v15}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->compareAnsSetStatus(II)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 134
    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    iget-object v13, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-static {v13}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->packageDownloadedItem(Lcom/miui/gallery/data/DBImage;)Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackSuccess(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V

    .line 136
    :cond_11
    const-string v12, "OriginalFileDownloader"

    const-string v13, "Successfully complete origin download work for image [%s]!"

    iget-object v15, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-static {v12, v13, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 149
    .end local v5    # "errorCode":Lcom/miui/gallery/error/core/ErrorCode;
    .end local v10    # "succeeded":Z
    :catchall_1
    move-exception v12

    :try_start_c
    iget-object v13, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v13}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isManual()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 150
    invoke-static {v9}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->persistDownloadStatus(Lcom/miui/gallery/sdk/download/assist/RequestItem;)V

    :cond_12
    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 139
    .restart local v5    # "errorCode":Lcom/miui/gallery/error/core/ErrorCode;
    .restart local v10    # "succeeded":Z
    :cond_13
    :try_start_d
    const-string v12, "OriginalFileDownloader"

    const-string v13, "Error occurred when doing post origin download work for image [%s]!"

    iget-object v15, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-static {v12, v13, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_4
.end method
