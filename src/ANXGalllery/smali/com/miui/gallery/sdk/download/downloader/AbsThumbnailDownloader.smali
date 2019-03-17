.class abstract Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;
.super Ljava/lang/Object;
.source "AbsThumbnailDownloader.java"

# interfaces
.implements Lcom/miui/gallery/sdk/download/downloader/IDownloader;


# static fields
.field private static final MAX_TRY_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->getMaxDownloadTimes()I

    move-result v0

    sput v0, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->MAX_TRY_COUNT:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkConditionPermitted(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 265
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->checkCondition(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    move-result-object v0

    .line 266
    .local v0, "reason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isStatusOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-static {p1, v0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackError(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 270
    :cond_0
    const/4 v1, 0x0

    .line 272
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkItemValid(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Z
    .locals 9
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 537
    iget-object v0, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    .line 538
    .local v0, "dbImage":Lcom/miui/gallery/data/DBImage;
    invoke-static {v0}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->canDownloadStatus(Lcom/miui/gallery/data/DBImage;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 550
    :goto_0
    return v1

    .line 541
    :cond_0
    if-nez v0, :cond_1

    .line 542
    new-instance v1, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->PARAMS_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v4, "dbImage null"

    invoke-direct {v1, v3, v4, v8}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v8, v1}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    :goto_1
    move v1, v2

    .line 550
    goto :goto_0

    .line 544
    :cond_1
    invoke-static {v0}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isNotSyncedStatus(Lcom/miui/gallery/data/DBImage;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 545
    new-instance v3, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->NOT_SYNCED:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v5, "item invalid server[%s], local[%s]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerStatus()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1, v8}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v8, v3}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto :goto_1

    .line 547
    :cond_2
    new-instance v3, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v4, Lcom/miui/gallery/error/core/ErrorCode;->PARAMS_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v5, "item invalid server[%s], local[%s]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerStatus()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1, v8}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v8, v3}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto :goto_1
.end method

.method private static classifyRequest(Ljava/util/List;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/sdk/download/assist/RequestItem;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/sdk/download/assist/RequestItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .line 131
    .local v1, "item":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    iget-object v5, v1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 132
    iget-object v5, v1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getGroupId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "key":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 137
    .local v0, "batch":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;"
    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 139
    .restart local v0    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;"
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v0    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string v2, "owner"

    .restart local v2    # "key":Ljava/lang/String;
    goto :goto_1

    .line 143
    .end local v1    # "item":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private decreaseConnTimeout(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 5
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 475
    invoke-static {p1}, Lcom/miui/gallery/preference/GalleryPreferences$FileDownload;->getConnTimeout(Lcom/miui/gallery/sdk/download/DownloadType;)I

    move-result v0

    .line 476
    .local v0, "timeout":I
    add-int/lit16 v0, v0, -0x3e8

    .line 477
    invoke-static {p1, v0}, Lcom/miui/gallery/preference/GalleryPreferences$FileDownload;->setConnTimeout(Lcom/miui/gallery/sdk/download/DownloadType;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "decrease conn timeout %d, type %s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/DownloadType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    :cond_0
    return-void
.end method

.method private deleteTempFile(Lcom/miui/gallery/sdk/download/assist/RequestItem;)V
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .prologue
    .line 496
    iget-object v1, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    iget-object v2, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadTempFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "tempFile":Ljava/lang/String;
    sget-object v1, Lcom/miui/gallery/util/MediaFileUtils$FileType;->TEMP:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 500
    .end local v0    # "tempFile":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private downloadData(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 503
    const/4 v4, 0x0

    .line 504
    .local v4, "out":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 505
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Ljava/io/File;

    iget-object v9, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    iget-object v10, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v10}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadTempFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    .local v1, "downloadFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 508
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/miui/gallery/util/DocumentProviderUtils;->getDocumentFile(Landroid/content/Context;Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 509
    .local v0, "downloadDocumentFile":Landroid/support/v4/provider/DocumentFile;
    if-nez v0, :cond_0

    .line 530
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 531
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 533
    .end local v0    # "downloadDocumentFile":Landroid/support/v4/provider/DocumentFile;
    :goto_0
    return-object v8

    .line 512
    .restart local v0    # "downloadDocumentFile":Landroid/support/v4/provider/DocumentFile;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 513
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "w"

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 514
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .end local v4    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    move-object v4, v5

    .line 518
    .end local v0    # "downloadDocumentFile":Landroid/support/v4/provider/DocumentFile;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "uri":Landroid/net/Uri;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :goto_1
    const-string v9, "UTF-8"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    .line 519
    .local v3, "m_dataBuffer":[B
    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 531
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 533
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 516
    .end local v3    # "m_dataBuffer":[B
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-direct {v5, v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_1

    .line 520
    :catch_0
    move-exception v2

    .line 521
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "download data error."

    invoke-static {v9, v10, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 530
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 531
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 523
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 524
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "download data error."

    invoke-static {v9, v10, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 530
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 531
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 526
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 527
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "download data error."

    invoke-static {v9, v10, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 530
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 531
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 530
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 531
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v8
.end method

.method private downloadFile(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 36
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 344
    const/4 v5, 0x0

    .line 345
    .local v5, "connection":Ljava/net/HttpURLConnection;
    const/4 v12, 0x0

    .line 346
    .local v12, "in":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 347
    .local v16, "out":Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 348
    .local v19, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadTempFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v10, "downloadTempFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 350
    .local v6, "count":I
    const/4 v15, 0x1

    .local v15, "needRetry":Z
    move-object/from16 v17, v16

    .line 351
    .end local v16    # "out":Ljava/io/OutputStream;
    .local v17, "out":Ljava/io/OutputStream;
    :goto_0
    if-eqz v15, :cond_14

    sget v28, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->MAX_TRY_COUNT:I

    move/from16 v0, v28

    if-ge v6, v0, :cond_14

    .line 352
    const/4 v15, 0x0

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 355
    .local v22, "start":J
    :try_start_0
    sget-object v28, Lcom/miui/gallery/cloud/NetworkUtils$RequestType;->GET:Lcom/miui/gallery/cloud/NetworkUtils$RequestType;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/NetworkUtils;->getHttpConn(Ljava/lang/String;Lcom/miui/gallery/cloud/NetworkUtils$RequestType;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 356
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/miui/gallery/preference/GalleryPreferences$FileDownload;->getConnTimeout(Lcom/miui/gallery/sdk/download/DownloadType;)I

    move-result v20

    .line 357
    .local v20, "requestTimeOut":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 359
    mul-int/lit8 v28, v20, 0x2

    invoke-static/range {v28 .. v28}, Lcom/miui/gallery/preference/GalleryPreferences$FileDownload;->clampConnTimeout(I)I

    move-result v20

    .line 361
    :cond_0
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 362
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 363
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 366
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    .line 367
    .local v21, "statusCode":I
    const/16 v28, 0xc8

    move/from16 v0, v21

    move/from16 v1, v28

    if-lt v0, v1, :cond_1

    const/16 v28, 0x12c

    move/from16 v0, v21

    move/from16 v1, v28

    if-lt v0, v1, :cond_5

    .line 368
    :cond_1
    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/cloud/CheckResult;->checkKSSThumbnailResult(I)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v28

    sget-object v29, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 371
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/miui/gallery/preference/ThumbnailPreference;->putThumbnailKey(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "thumbnail can\'t be download forever, just add sha1 to preference %d, %s"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v28 .. v31}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v18, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v28, "statusCode"

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v28, "downloadType"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v28, "Sync"

    const-string/jumbo v29, "sync_thumbnail_build_error"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 378
    new-instance v28, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v29, Lcom/miui/gallery/error/core/ErrorCode;->THUMBNAIL_BUILD_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string/jumbo v30, "thumbnail can\'t build: %s"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    invoke-direct/range {v28 .. v31}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 379
    const/16 v28, 0x0

    .line 451
    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 452
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 453
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 454
    if-eqz v5, :cond_2

    .line 455
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    const/4 v5, 0x0

    .line 458
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v29

    const-string v30, "download %s, origin file %s, cost %d, success %s"

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v22

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v17

    .line 463
    .end local v17    # "out":Ljava/io/OutputStream;
    .end local v18    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "requestTimeOut":I
    .end local v21    # "statusCode":I
    .end local v22    # "start":J
    .restart local v16    # "out":Ljava/io/OutputStream;
    :goto_1
    return-object v28

    .line 381
    .end local v16    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    .restart local v20    # "requestTimeOut":I
    .restart local v21    # "statusCode":I
    .restart local v22    # "start":J
    :cond_3
    :try_start_1
    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/cloud/CheckResult;->isNotRetryCode(I)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 382
    new-instance v28, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v29, Lcom/miui/gallery/error/core/ErrorCode;->SERVER_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v30, "server ret: %s"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    invoke-direct/range {v28 .. v31}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 383
    const/16 v28, 0x0

    .line 451
    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 452
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 453
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 454
    if-eqz v5, :cond_4

    .line 455
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    const/4 v5, 0x0

    .line 458
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v29

    const-string v30, "download %s, origin file %s, cost %d, success %s"

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v22

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 388
    .end local v16    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    :cond_5
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 389
    .local v26, "totalSize":J
    const-wide/16 v28, 0x0

    cmp-long v28, v26, v28

    if-gtz v28, :cond_6

    .line 390
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/data/DBImage;->getSize()J
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v26

    .line 395
    :cond_6
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v12

    .line 401
    :try_start_4
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 402
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0, v10}, Lcom/miui/gallery/util/DocumentProviderUtils;->getDocumentFile(Landroid/content/Context;Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;
    :try_end_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 403
    .local v7, "downloadTempDocumentFile":Landroid/support/v4/provider/DocumentFile;
    if-nez v7, :cond_9

    .line 404
    const/16 v28, 0x0

    .line 451
    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 452
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 453
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 454
    if-eqz v5, :cond_7

    .line 455
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    const/4 v5, 0x0

    .line 458
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v29

    const-string v30, "download %s, origin file %s, cost %d, success %s"

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v22

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 396
    .end local v7    # "downloadTempDocumentFile":Landroid/support/v4/provider/DocumentFile;
    .end local v16    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v11

    .line 397
    .local v11, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/miui/gallery/preference/ThumbnailPreference;->putThumbnailKey(Ljava/lang/String;)V

    .line 398
    new-instance v28, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v29, Lcom/miui/gallery/error/core/ErrorCode;->THUMBNAIL_BUILD_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    sget-object v30, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v31, "thumbnail build error, ret %s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v11}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    :try_end_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 399
    const/16 v28, 0x0

    .line 451
    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 452
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 453
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 454
    if-eqz v5, :cond_8

    .line 455
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    const/4 v5, 0x0

    .line 458
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v29

    const-string v30, "download %s, origin file %s, cost %d, success %s"

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v22

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 406
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .end local v16    # "out":Ljava/io/OutputStream;
    .restart local v7    # "downloadTempDocumentFile":Landroid/support/v4/provider/DocumentFile;
    .restart local v17    # "out":Ljava/io/OutputStream;
    :cond_9
    :try_start_6
    invoke-virtual {v7}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v25

    .line 407
    .local v25, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "w"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    .line 408
    new-instance v16, Ljava/io/FileOutputStream;

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 414
    .end local v7    # "downloadTempDocumentFile":Landroid/support/v4/provider/DocumentFile;
    .end local v17    # "out":Ljava/io/OutputStream;
    .end local v25    # "uri":Landroid/net/Uri;
    .restart local v16    # "out":Ljava/io/OutputStream;
    :goto_2
    const/16 v4, 0x2000

    .line 415
    .local v4, "bufSize":I
    :try_start_7
    new-array v14, v4, [B

    .line 416
    .local v14, "m_dataBuffer":[B
    const/4 v13, 0x0

    .line 417
    .local v13, "len":I
    const-wide/16 v8, 0x0

    .line 419
    .local v8, "currentSize":J
    :goto_3
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v12, v14, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    if-ltz v13, :cond_d

    .line 420
    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v14, v1, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 421
    int-to-long v0, v13

    move-wide/from16 v28, v0

    add-long v8, v8, v28

    .line 422
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v26

    invoke-static {v0, v8, v9, v1, v2}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackProgress(Lcom/miui/gallery/sdk/download/assist/DownloadItem;JJ)V
    :try_end_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 428
    .end local v8    # "currentSize":J
    .end local v13    # "len":I
    .end local v14    # "m_dataBuffer":[B
    :catch_1
    move-exception v11

    .line 430
    .end local v4    # "bufSize":I
    .end local v20    # "requestTimeOut":I
    .end local v21    # "statusCode":I
    .end local v26    # "totalSize":J
    .local v11, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_4
    const/4 v15, 0x1

    .line 431
    :try_start_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->increaseConnTimeout(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 432
    add-int/lit8 v28, v6, 0x1

    sget v29, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->MAX_TRY_COUNT:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_a

    .line 433
    new-instance v28, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v29, Lcom/miui/gallery/error/core/ErrorCode;->CONNECT_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v30, "connect timeout: %s"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object p2, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v11}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 451
    :cond_a
    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 452
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 453
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 454
    if-eqz v5, :cond_b

    .line 455
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    const/4 v5, 0x0

    .line 458
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v28

    const-string v29, "download %s, origin file %s, cost %d, success %s"

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v22

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    add-int/lit8 v6, v6, 0x1

    .end local v11    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_5
    move-object/from16 v17, v16

    .line 461
    .end local v16    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 410
    .restart local v20    # "requestTimeOut":I
    .restart local v21    # "statusCode":I
    .restart local v26    # "totalSize":J
    :cond_c
    :try_start_9
    new-instance v16, Ljava/io/FileOutputStream;

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-direct {v0, v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    goto/16 :goto_2

    .line 424
    .restart local v4    # "bufSize":I
    .restart local v8    # "currentSize":J
    .restart local v13    # "len":I
    .restart local v14    # "m_dataBuffer":[B
    :cond_d
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 425
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->decreaseConnTimeout(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 426
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->statDownloadSuccess(Lcom/miui/gallery/sdk/download/assist/RequestItem;)V
    :try_end_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 451
    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 452
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 453
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 454
    if-eqz v5, :cond_e

    .line 455
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    const/4 v5, 0x0

    .line 458
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v28

    const-string v29, "download %s, origin file %s, cost %d, success %s"

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v22

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    add-int/lit8 v6, v6, 0x1

    .line 462
    .end local v4    # "bufSize":I
    .end local v8    # "currentSize":J
    .end local v13    # "len":I
    .end local v14    # "m_dataBuffer":[B
    .end local v20    # "requestTimeOut":I
    .end local v21    # "statusCode":I
    .end local v22    # "start":J
    .end local v26    # "totalSize":J
    :goto_6
    sget v28, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->MAX_TRY_COUNT:I

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v6, v1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->statDownloadRetryTimes(Lcom/miui/gallery/sdk/download/assist/RequestItem;II)V

    .line 463
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_1

    .line 435
    .end local v16    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    .restart local v22    # "start":J
    :catch_2
    move-exception v11

    move-object/from16 v16, v17

    .line 436
    .end local v17    # "out":Ljava/io/OutputStream;
    .local v11, "e":Ljava/net/SocketTimeoutException;
    .restart local v16    # "out":Ljava/io/OutputStream;
    :goto_7
    const/4 v15, 0x1

    .line 437
    :try_start_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->increaseConnTimeout(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 438
    add-int/lit8 v28, v6, 0x1

    sget v29, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->MAX_TRY_COUNT:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_f

    .line 439
    new-instance v28, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v29, Lcom/miui/gallery/error/core/ErrorCode;->SOCKET_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

    const-string/jumbo v30, "socket timeout: %s"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object p2, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v11}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 451
    :cond_f
    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 452
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 453
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 454
    if-eqz v5, :cond_10

    .line 455
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    const/4 v5, 0x0

    .line 458
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v28

    const-string v29, "download %s, origin file %s, cost %d, success %s"

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v22

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    add-int/lit8 v6, v6, 0x1

    .line 460
    goto/16 :goto_5

    .line 441
    .end local v11    # "e":Ljava/net/SocketTimeoutException;
    .end local v16    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v24

    move-object/from16 v16, v17

    .line 443
    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    .local v24, "t":Ljava/lang/Throwable;
    :goto_8
    :try_start_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->checkConditionPermitted(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 444
    new-instance v28, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/miui/gallery/error/util/ErrorParseUtil;->parseError(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v29

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 451
    :goto_9
    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 452
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 453
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 454
    if-eqz v5, :cond_11

    .line 455
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    const/4 v5, 0x0

    .line 458
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v28

    const-string v29, "download %s, origin file %s, cost %d, success %s"

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v22

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    add-int/lit8 v6, v6, 0x1

    .line 460
    goto/16 :goto_5

    .line 447
    :cond_12
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->deleteTempFile(Lcom/miui/gallery/sdk/download/assist/RequestItem;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_9

    .line 451
    .end local v24    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v28

    :goto_a
    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 452
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 453
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 454
    if-eqz v5, :cond_13

    .line 455
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    const/4 v5, 0x0

    .line 458
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v29

    const-string v30, "download %s, origin file %s, cost %d, success %s"

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v22

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    add-int/lit8 v6, v6, 0x1

    throw v28

    .line 451
    .end local v16    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v28

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    goto :goto_a

    .line 441
    .restart local v4    # "bufSize":I
    .restart local v20    # "requestTimeOut":I
    .restart local v21    # "statusCode":I
    .restart local v26    # "totalSize":J
    :catch_4
    move-exception v24

    goto/16 :goto_8

    .line 435
    :catch_5
    move-exception v11

    goto/16 :goto_7

    .line 428
    .end local v4    # "bufSize":I
    .end local v16    # "out":Ljava/io/OutputStream;
    .end local v20    # "requestTimeOut":I
    .end local v21    # "statusCode":I
    .end local v26    # "totalSize":J
    .restart local v17    # "out":Ljava/io/OutputStream;
    :catch_6
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    goto/16 :goto_4

    .end local v16    # "out":Ljava/io/OutputStream;
    .end local v22    # "start":J
    .restart local v17    # "out":Ljava/io/OutputStream;
    :cond_14
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    goto/16 :goto_6
.end method

.method private downloadInternal(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)V
    .locals 21
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/sdk/download/assist/RequestItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p3, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;"
    invoke-direct/range {p0 .. p3}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->requestUrls(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v9

    .line 148
    .local v9, "thumbnails":Lorg/json/JSONObject;
    if-nez v9, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .line 153
    .local v7, "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v14, "download id %s"

    iget-object v15, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v14, v15}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v13, "for download interrupt %s"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v12, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v12}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isStatusOk()Z

    move-result v12

    if-nez v12, :cond_3

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v14, "item %s status %s"

    iget-object v15, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v15}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getKey()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getStatus()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 162
    :cond_3
    iget-object v12, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getRequestId()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 164
    .local v8, "thumbnail":Lorg/json/JSONObject;
    if-nez v8, :cond_4

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v14, "id: %s not found in content json"

    invoke-static {v12, v14, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    iget-object v12, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/miui/gallery/preference/ThumbnailPreference;->putThumbnailKey(Ljava/lang/String;)V

    .line 167
    const/4 v12, 0x0

    new-instance v14, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v15, Lcom/miui/gallery/error/core/ErrorCode;->THUMBNAIL_BUILD_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v17, "request url for %s error"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v14}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto/16 :goto_1

    .line 170
    :cond_4
    iget-object v12, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v12}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUriLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    .line 171
    .local v6, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v14, "%s wait lock"

    iget-object v15, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-static {v12, v14, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    :cond_5
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 177
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->checkAndReturnValidPath(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Ljava/lang/String;

    move-result-object v11

    .line 178
    .local v11, "validPath":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v14, "no need download file: %s, thumb: %s"

    iget-object v15, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    iget-object v12, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v12, v14, v15}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->compareAnsSetStatus(II)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 181
    iget-object v14, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    new-instance v15, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    iget-object v12, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getSecretKey()[B

    move-result-object v12

    :goto_2
    invoke-direct {v15, v11, v12}, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;-><init>(Ljava/lang/String;[B)V

    invoke-static {v14, v15}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackSuccess(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_6
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 181
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 185
    :cond_8
    :try_start_1
    const-string v12, "isUrl"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 186
    .local v5, "isUrl":Z
    const-string v12, "data"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "data":Ljava/lang/String;
    iget-object v12, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    iget-object v14, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v14}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->ensureDownloadTempFolder(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v3

    .line 189
    .local v3, "errorCode":Lcom/miui/gallery/error/core/ErrorCode;
    sget-object v12, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    if-eq v3, v12, :cond_9

    .line 190
    const/4 v12, 0x0

    new-instance v14, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, "error create folder: %s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget-object v0, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-object/from16 v20, v0

    .line 191
    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadTempFolderPath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v14, v3, v15, v0}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v14}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 195
    :cond_9
    if-eqz v5, :cond_b

    .line 196
    :try_start_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 198
    .local v10, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->isValidUrl(Landroid/net/Uri;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 199
    iget-object v12, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/miui/gallery/preference/ThumbnailPreference;->putThumbnailKey(Ljava/lang/String;)V

    .line 200
    const/4 v12, 0x0

    new-instance v14, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v15, Lcom/miui/gallery/error/core/ErrorCode;->THUMBNAIL_BUILD_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v17, "invalid url %s for %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    const/16 v19, 0x1

    iget-object v0, v7, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v14}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 203
    :cond_a
    :try_start_3
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->downloadFile(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .end local v10    # "uri":Landroid/net/Uri;
    .local v2, "downloadedTempPath":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->onPostDownload(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 205
    .end local v2    # "downloadedTempPath":Ljava/lang/String;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->downloadData(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .restart local v2    # "downloadedTempPath":Ljava/lang/String;
    goto :goto_3

    .line 209
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "downloadedTempPath":Ljava/lang/String;
    .end local v3    # "errorCode":Lcom/miui/gallery/error/core/ErrorCode;
    .end local v5    # "isUrl":Z
    .end local v11    # "validPath":Ljava/lang/String;
    :catchall_0
    move-exception v12

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v12
.end method

.method private fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download fail %s"

    invoke-static {v1, v2, p3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 485
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 488
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->deleteTempFile(Lcom/miui/gallery/sdk/download/assist/RequestItem;)V

    .line 489
    iget-object v1, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isStatusOk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    iget-object v1, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-static {v1, p3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackError(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 492
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->statDownloadError(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 493
    return-void

    .line 484
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRequestUrl(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "requestItem"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v1, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$ShareMedia;->getRequestThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "url":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 337
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$OwnerMedia;->getRequestThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private increaseConnTimeout(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 5
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 467
    invoke-static {p1}, Lcom/miui/gallery/preference/GalleryPreferences$FileDownload;->getConnTimeout(Lcom/miui/gallery/sdk/download/DownloadType;)I

    move-result v0

    .line 468
    .local v0, "timeout":I
    add-int/lit16 v0, v0, 0xbb8

    .line 469
    invoke-static {p1, v0}, Lcom/miui/gallery/preference/GalleryPreferences$FileDownload;->setConnTimeout(Lcom/miui/gallery/sdk/download/DownloadType;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "increase conn timeout %d, type %s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/DownloadType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 472
    :cond_0
    return-void
.end method

.method private isValidUrl(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onPostDownload(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)V
    .locals 13
    .param p1, "request"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p2, "downloadTempPath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 216
    invoke-static {p2}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v6, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v6}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUriAdapter()Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    move-result-object v6

    iget-object v7, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v7}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;->getDBItemForUri(Landroid/net/Uri;)Lcom/miui/gallery/data/DBImage;

    move-result-object v1

    .line 222
    .local v1, "dbItem":Lcom/miui/gallery/data/DBImage;
    new-instance v0, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    iget-object v6, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-direct {v0, v6, v1}, Lcom/miui/gallery/sdk/download/assist/RequestItem;-><init>(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/data/DBImage;)V

    .line 223
    .local v0, "checkItem":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    invoke-direct {p0, v0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->checkItemValid(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->handleDownloadTempFile(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 229
    iget-object v6, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v6}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/preference/ThumbnailPreference;->putThumbnailKey(Ljava/lang/String;)V

    .line 230
    new-instance v6, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v7, Lcom/miui/gallery/error/core/ErrorCode;->WRITE_EXIF_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string/jumbo v8, "write exif error"

    invoke-direct {v6, v7, v8, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v5, v6}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto :goto_0

    .line 234
    :cond_2
    iget-object v6, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    iget-object v7, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v7}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->ensureDownloadFolder(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v4

    .line 235
    .local v4, "errorCode":Lcom/miui/gallery/error/core/ErrorCode;
    sget-object v6, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    if-eq v4, v6, :cond_3

    .line 236
    new-instance v6, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "error create folder: %s"

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    iget-object v11, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .line 237
    invoke-virtual {v11}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadFolderPath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    invoke-direct {p0, p1, v5, v6}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto :goto_0

    .line 240
    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v6, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    iget-object v7, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v7}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, "downloadFile":Ljava/io/File;
    iget-object v6, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v6}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 243
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v7}, Lcom/miui/gallery/data/DBImage;->getSecretKey()[B

    move-result-object v7

    invoke-static {p2, v6, v7}, Lcom/miui/gallery/util/GalleryAes;->encryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v3

    .line 244
    .local v3, "encodeResult":Z
    sget-object v6, Lcom/miui/gallery/util/MediaFileUtils$FileType;->TEMP:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v7, v9, [Ljava/lang/String;

    aput-object p2, v7, v12

    invoke-static {v6, v7}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 245
    if-nez v3, :cond_5

    .line 246
    new-instance v6, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v7, Lcom/miui/gallery/error/core/ErrorCode;->FILE_OPERATE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v8, "encrypt error"

    invoke-direct {v6, v7, v8, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v5, v6}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto/16 :goto_0

    .line 249
    .end local v3    # "encodeResult":Z
    :cond_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v2}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 250
    new-instance v6, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v7, Lcom/miui/gallery/error/core/ErrorCode;->FILE_OPERATE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v8, "rename error"

    invoke-direct {v6, v7, v8, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v5, v6}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto/16 :goto_0

    .line 253
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->updateDataBase(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Z

    .line 254
    iget-object v6, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    const/4 v7, 0x3

    invoke-virtual {v6, v12, v7}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->compareAnsSetStatus(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 255
    iget-object v6, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    new-instance v7, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v5, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getSecretKey()[B

    move-result-object v5

    :cond_6
    invoke-direct {v7, v8, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;-><init>(Ljava/lang/String;[B)V

    invoke-static {v6, v7}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackSuccess(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V

    goto/16 :goto_0
.end method

.method private requestUrls(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)Lorg/json/JSONObject;
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
            "Lcom/miui/gallery/sdk/download/assist/RequestItem;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 276
    .local p3, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v13, "ids":Ljava/lang/StringBuilder;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .line 278
    .local v15, "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 279
    const-string v4, ","

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_0
    iget-object v4, v15, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 284
    .end local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getRequestUrl(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "width"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getRequestWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "height"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getRequestHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ids"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "priority"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    iget-object v3, v3, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/DownloadType;->isBackground()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "low"

    :goto_1
    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    const/16 v17, 0x0

    .line 295
    .local v17, "thumbnails":Lorg/json/JSONObject;
    const/4 v11, 0x0

    .line 297
    .local v11, "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v14

    .line 298
    .local v14, "json":Lorg/json/JSONObject;
    if-eqz v14, :cond_6

    .line 299
    const-string v3, "code"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 300
    .local v7, "code":I
    if-nez v7, :cond_5

    .line 301
    const-string v3, "data"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 302
    .local v8, "data":Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    .line 303
    const-string v3, "content"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 305
    :cond_2
    if-nez v17, :cond_3

    .line 306
    new-instance v12, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->SERVER_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v4, "data empty"

    const/4 v5, 0x0

    invoke-direct {v12, v3, v4, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/miui/gallery/cloud/GalleryMiCloudServerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .local v12, "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    move-object v11, v12

    .line 326
    .end local v7    # "code":I
    .end local v8    # "data":Lorg/json/JSONObject;
    .end local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    :cond_3
    :goto_2
    if-eqz v11, :cond_8

    .line 327
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .line 328
    .restart local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4, v11}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto :goto_3

    .line 292
    .end local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .end local v14    # "json":Lorg/json/JSONObject;
    .end local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .end local v17    # "thumbnails":Lorg/json/JSONObject;
    :cond_4
    const-string v3, "high"

    goto :goto_1

    .line 309
    .restart local v7    # "code":I
    .restart local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v14    # "json":Lorg/json/JSONObject;
    .restart local v17    # "thumbnails":Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    const-string v3, "description"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 310
    .local v9, "desc":Ljava/lang/String;
    new-instance v12, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->SERVER_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const/4 v4, 0x0

    invoke-direct {v12, v3, v9, v4}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    move-object v11, v12

    .end local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    goto :goto_2

    .line 313
    .end local v7    # "code":I
    .end local v9    # "desc":Ljava/lang/String;
    :cond_6
    new-instance v12, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->SERVER_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v4, "data empty"

    const/4 v5, 0x0

    invoke-direct {v12, v3, v4, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/miui/gallery/cloud/GalleryMiCloudServerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    move-object v11, v12

    .end local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    goto :goto_2

    .line 315
    .end local v14    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 316
    .local v10, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v12, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->DATA_PARSE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v4, "parse data error"

    invoke-direct {v12, v3, v4, v10}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    .end local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    if-eqz v12, :cond_e

    .line 327
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .line 328
    .restart local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4, v12}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto :goto_4

    .end local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    :cond_7
    move-object v11, v12

    .line 332
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    :cond_8
    :goto_5
    return-object v17

    .line 317
    :catch_1
    move-exception v10

    .line 318
    .local v10, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_3
    new-instance v12, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->CONNECT_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v4, "connect timeout: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v3, v4, v10}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 326
    .end local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    if-eqz v12, :cond_e

    .line 327
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .line 328
    .restart local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4, v12}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto :goto_6

    .end local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    :cond_9
    move-object v11, v12

    .line 329
    .end local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    goto :goto_5

    .line 319
    .end local v10    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_2
    move-exception v10

    .line 320
    .local v10, "e":Ljava/net/SocketTimeoutException;
    :try_start_4
    new-instance v12, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->SOCKET_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v4, "connect timeout: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v3, v4, v10}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 326
    .end local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    if-eqz v12, :cond_e

    .line 327
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .line 328
    .restart local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4, v12}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto :goto_7

    .end local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    :cond_a
    move-object v11, v12

    .line 329
    .end local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    goto :goto_5

    .line 321
    .end local v10    # "e":Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v10

    .line 322
    .local v10, "e":Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
    :try_start_5
    new-instance v12, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    const/4 v3, 0x0

    invoke-static {v10, v3}, Lcom/miui/gallery/error/util/ErrorParseUtil;->parseError(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v3

    invoke-virtual {v10}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;->getCloudServerException()Ljava/lang/Exception;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;->getCloudServerException()Ljava/lang/Exception;

    move-result-object v5

    invoke-direct {v12, v3, v4, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 326
    .end local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    if-eqz v12, :cond_e

    .line 327
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .line 328
    .restart local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4, v12}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto :goto_8

    .end local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    :cond_b
    move-object v11, v12

    .line 329
    .end local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    goto/16 :goto_5

    .line 323
    .end local v10    # "e":Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
    :catch_4
    move-exception v16

    .line 324
    .local v16, "t":Ljava/lang/Throwable;
    :try_start_6
    new-instance v12, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/miui/gallery/error/util/ErrorParseUtil;->parseError(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v12, v3, v4, v0}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 326
    .end local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    if-eqz v12, :cond_e

    .line 327
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .line 328
    .restart local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4, v12}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto :goto_9

    .end local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    :cond_c
    move-object v11, v12

    .line 329
    .end local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    goto/16 :goto_5

    .line 326
    .end local v16    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_d

    .line 327
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .line 328
    .restart local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5, v11}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto :goto_a

    .line 329
    .end local v15    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    :cond_d
    throw v3

    .end local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    :cond_e
    move-object v11, v12

    .end local v12    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .restart local v11    # "failReason":Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    goto/16 :goto_5
.end method


# virtual methods
.method protected abstract checkAndReturnValidPath(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Ljava/lang/String;
.end method

.method public download(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)V
    .locals 20
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
    .line 75
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/DownloadItem;>;"
    if-eqz p3, :cond_8

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 76
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v10, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .line 78
    .local v5, "item":Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->checkConditionPermitted(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v14, "Download condition not ok type %s"

    invoke-virtual {v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v15

    invoke-static {v12, v14, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUriAdapter()Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    move-result-object v12

    invoke-virtual {v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-interface {v12, v14}, Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;->getDBItemForUri(Landroid/net/Uri;)Lcom/miui/gallery/data/DBImage;

    move-result-object v3

    .line 83
    .local v3, "dbItem":Lcom/miui/gallery/data/DBImage;
    new-instance v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    invoke-direct {v9, v5, v3}, Lcom/miui/gallery/sdk/download/assist/RequestItem;-><init>(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/data/DBImage;)V

    .line 84
    .local v9, "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->checkAndReturnValidPath(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "validPath":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 86
    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/miui/gallery/preference/ThumbnailPreference;->containsThumbnailKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v14, "build error sha1 %s"

    iget-object v15, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v14, v15}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const/4 v12, 0x0

    new-instance v14, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v15, Lcom/miui/gallery/error/core/ErrorCode;->THUMBNAIL_BUILD_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string/jumbo v16, "thumbnail can\'t build: %s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget-object v0, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12, v14}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->fireFailEvent(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto/16 :goto_0

    .line 91
    :cond_2
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 93
    :cond_3
    const/4 v12, 0x0

    const/4 v14, 0x3

    invoke-virtual {v5, v12, v14}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->compareAnsSetStatus(II)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 94
    iget-object v14, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    new-instance v15, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v9, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getSecretKey()[B

    move-result-object v12

    :goto_1
    invoke-direct {v15, v11, v12}, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;-><init>(Ljava/lang/String;[B)V

    invoke-static {v14, v15}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackSuccess(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V

    goto/16 :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 98
    .end local v3    # "dbItem":Lcom/miui/gallery/data/DBImage;
    .end local v5    # "item":Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    .end local v9    # "request":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .end local v11    # "validPath":Ljava/lang/String;
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 99
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 100
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;"
    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 101
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .line 102
    .local v5, "item":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->checkItemValid(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 103
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 106
    .end local v5    # "item":Lcom/miui/gallery/sdk/download/assist/RequestItem;
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 107
    invoke-static {v10}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->classifyRequest(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v6

    .line 108
    .local v6, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 109
    .local v8, "mapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;>;>;"
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 110
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 111
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->downloadInternal(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v13, "download batch %s"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 117
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;>;"
    .end local v6    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;>;"
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;"
    .end local v8    # "mapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;>;>;"
    .end local v10    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/RequestItem;>;"
    :cond_8
    return-void
.end method

.method protected abstract getRequestHeight()I
.end method

.method protected abstract getRequestWidth()I
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected handleDownloadTempFile(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p2, "downloadTemp"    # Ljava/lang/String;

    .prologue
    .line 554
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract updateDataBase(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Z
.end method
