.class public Lcom/miui/gallery/sdk/download/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# static fields
.field private static volatile sInstance:Lcom/miui/gallery/sdk/download/ImageDownloader;


# instance fields
.field private mEngine:Lcom/miui/gallery/sdk/download/DownloadEngine;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/miui/gallery/sdk/download/DownloadEngine;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/download/DownloadEngine;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/ImageDownloader;->mEngine:Lcom/miui/gallery/sdk/download/DownloadEngine;

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/miui/gallery/sdk/download/ImageDownloader;->sInstance:Lcom/miui/gallery/sdk/download/ImageDownloader;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/miui/gallery/sdk/download/ImageDownloader;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/miui/gallery/sdk/download/ImageDownloader;->sInstance:Lcom/miui/gallery/sdk/download/ImageDownloader;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/miui/gallery/sdk/download/ImageDownloader;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/download/ImageDownloader;-><init>()V

    sput-object v0, Lcom/miui/gallery/sdk/download/ImageDownloader;->sInstance:Lcom/miui/gallery/sdk/download/ImageDownloader;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/miui/gallery/sdk/download/ImageDownloader;->sInstance:Lcom/miui/gallery/sdk/download/ImageDownloader;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/ImageDownloader;->mEngine:Lcom/miui/gallery/sdk/download/DownloadEngine;

    new-instance v1, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setUri(Landroid/net/Uri;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setType(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->build()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/sdk/download/DownloadEngine;->cancel(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z

    .line 160
    return-void
.end method

.method public cancelAll()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/ImageDownloader;->mEngine:Lcom/miui/gallery/sdk/download/DownloadEngine;

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/DownloadEngine;->cancelAll()V

    .line 168
    return-void
.end method

.method public cancelAll(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/ImageDownloader;->mEngine:Lcom/miui/gallery/sdk/download/DownloadEngine;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/sdk/download/DownloadEngine;->cancelAll(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 164
    return-void
.end method

.method public contains(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/ImageDownloader;->mEngine:Lcom/miui/gallery/sdk/download/DownloadEngine;

    new-instance v1, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setUri(Landroid/net/Uri;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setType(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->build()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/sdk/download/DownloadEngine;->contains(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z

    move-result v0

    return v0
.end method

.method public ensureDownloadOptions(Lcom/miui/gallery/sdk/download/DownloadOptions;)Lcom/miui/gallery/sdk/download/DownloadOptions;
    .locals 2
    .param p1, "options"    # Lcom/miui/gallery/sdk/download/DownloadOptions;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    const-string v0, "ImageDownloader"

    const-string v1, "download options is null, use default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/ImageDownloader;->mEngine:Lcom/miui/gallery/sdk/download/DownloadEngine;

    iget-object p1, v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->mDefaultDownloadOptions:Lcom/miui/gallery/sdk/download/DownloadOptions;

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/DownloadOptions;->getUriAdapter()Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 151
    const-string v0, "ImageDownloader"

    const-string/jumbo v1, "uri adapter is null, use default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->cloneFrom(Lcom/miui/gallery/sdk/download/DownloadOptions;)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;

    invoke-direct {v1}, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setUriAdapter(Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->build()Lcom/miui/gallery/sdk/download/DownloadOptions;

    move-result-object p1

    .line 154
    :cond_1
    return-object p1
.end method

.method public getStatusSync(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 179
    sget-object v5, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_NONE:Lcom/miui/gallery/sdk/SyncStatus;

    .line 180
    .local v5, "status":Lcom/miui/gallery/sdk/SyncStatus;
    const/4 v1, 0x0

    .line 181
    .local v1, "downloadedItem":Lcom/miui/gallery/sdk/download/assist/DownloadedItem;
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/miui/gallery/sdk/download/ImageDownloader;->contains(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 182
    sget-object v5, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_INIT:Lcom/miui/gallery/sdk/SyncStatus;

    .line 211
    :cond_0
    :goto_0
    new-instance v6, Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;

    invoke-direct {v6, v5, v1}, Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;-><init>(Lcom/miui/gallery/sdk/SyncStatus;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V

    return-object v6

    .line 183
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/gallery/sdk/download/ImageDownloader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 184
    new-instance v6, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;

    invoke-direct {v6}, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;-><init>()V

    invoke-virtual {v6, p1}, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;->getDBItemForUri(Landroid/net/Uri;)Lcom/miui/gallery/data/DBImage;

    move-result-object v2

    .line 185
    .local v2, "image":Lcom/miui/gallery/data/DBImage;
    if-eqz v2, :cond_0

    .line 186
    new-instance v3, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p2}, Lcom/miui/gallery/sdk/download/DownloadType;->getPriority()I

    move-result v6

    invoke-direct {v3, v6, v2}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;)V

    .line 187
    .local v3, "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    invoke-virtual {v3}, Lcom/miui/gallery/cloud/RequestCloudItem;->getVerifiedDownloadFilePathForRead()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 189
    sget-object v5, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_SUCCESS:Lcom/miui/gallery/sdk/SyncStatus;

    .line 190
    new-instance v1, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    .end local v1    # "downloadedItem":Lcom/miui/gallery/sdk/download/assist/DownloadedItem;
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getSecretKeyNoGenerate()[B

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;-><init>(Ljava/lang/String;[B)V

    .restart local v1    # "downloadedItem":Lcom/miui/gallery/sdk/download/assist/DownloadedItem;
    goto :goto_0

    .line 192
    :cond_2
    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->getDownloadFileStatusFromDB(Lcom/miui/gallery/data/DBImage;)I

    move-result v0

    .line 193
    .local v0, "dbStatus":I
    const/4 v6, 0x2

    if-ne v6, v0, :cond_3

    .line 194
    const/4 v0, -0x1

    .line 195
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->persistDownloadStatus(Lcom/miui/gallery/data/DBImage;I)V

    .line 197
    :cond_3
    invoke-static {v0}, Lcom/miui/gallery/sdk/SyncStatus;->toSyncStatus(I)Lcom/miui/gallery/sdk/SyncStatus;

    move-result-object v5

    goto :goto_0

    .line 201
    .end local v0    # "dbStatus":I
    .end local v2    # "image":Lcom/miui/gallery/data/DBImage;
    .end local v3    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    .end local v4    # "path":Ljava/lang/String;
    :cond_4
    new-instance v6, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;

    invoke-direct {v6}, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;-><init>()V

    invoke-virtual {v6, p1}, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;->getDBItemForUri(Landroid/net/Uri;)Lcom/miui/gallery/data/DBImage;

    move-result-object v2

    .line 202
    .restart local v2    # "image":Lcom/miui/gallery/data/DBImage;
    if-eqz v2, :cond_0

    .line 203
    new-instance v3, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p2}, Lcom/miui/gallery/sdk/download/DownloadType;->getPriority()I

    move-result v6

    invoke-direct {v3, v6, v2}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;)V

    .line 204
    .restart local v3    # "item":Lcom/miui/gallery/cloud/RequestCloudItem;
    invoke-virtual {v3}, Lcom/miui/gallery/cloud/RequestCloudItem;->getVerifiedDownloadFilePathForRead()Ljava/lang/String;

    move-result-object v4

    .line 205
    .restart local v4    # "path":Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 206
    sget-object v5, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_SUCCESS:Lcom/miui/gallery/sdk/SyncStatus;

    .line 207
    new-instance v1, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    .end local v1    # "downloadedItem":Lcom/miui/gallery/sdk/download/assist/DownloadedItem;
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getSecretKeyNoGenerate()[B

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;-><init>(Ljava/lang/String;[B)V

    .restart local v1    # "downloadedItem":Lcom/miui/gallery/sdk/download/assist/DownloadedItem;
    goto :goto_0
.end method

.method public isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 1
    .param p1, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 175
    if-eqz p1, :cond_1

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/DownloadOptions;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "options"    # Lcom/miui/gallery/sdk/download/DownloadOptions;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/gallery/sdk/download/ImageDownloader;->load(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/DownloadOptions;Lcom/miui/gallery/sdk/download/listener/DownloadListener;)V

    .line 52
    return-void
.end method

.method public load(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/DownloadOptions;Lcom/miui/gallery/sdk/download/listener/DownloadListener;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "options"    # Lcom/miui/gallery/sdk/download/DownloadOptions;
    .param p4, "downloadListener"    # Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    .prologue
    .line 55
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/sdk/download/ImageDownloader;->load(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/DownloadOptions;Lcom/miui/gallery/sdk/download/listener/DownloadListener;Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;)V

    .line 56
    return-void
.end method

.method public load(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/DownloadOptions;Lcom/miui/gallery/sdk/download/listener/DownloadListener;Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "options"    # Lcom/miui/gallery/sdk/download/DownloadOptions;
    .param p4, "downloadListener"    # Lcom/miui/gallery/sdk/download/listener/DownloadListener;
    .param p5, "progressListener"    # Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 60
    :cond_0
    if-eqz p4, :cond_1

    .line 61
    new-instance v4, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->PARAMS_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v6, ""

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p4, p1, p2, v4}, Lcom/miui/gallery/sdk/download/listener/DownloadListener;->onDownloadFail(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    invoke-virtual {p0, p3}, Lcom/miui/gallery/sdk/download/ImageDownloader;->ensureDownloadOptions(Lcom/miui/gallery/sdk/download/DownloadOptions;)Lcom/miui/gallery/sdk/download/DownloadOptions;

    move-result-object p3

    .line 68
    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->getUriAdapter()Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    move-result-object v0

    .line 69
    .local v0, "adapter":Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;
    iget-object v4, p0, Lcom/miui/gallery/sdk/download/ImageDownloader;->mEngine:Lcom/miui/gallery/sdk/download/DownloadEngine;

    invoke-virtual {v4, p1, p2}, Lcom/miui/gallery/sdk/download/DownloadEngine;->getLockForUri(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    .line 70
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v4, p0, Lcom/miui/gallery/sdk/download/ImageDownloader;->mEngine:Lcom/miui/gallery/sdk/download/DownloadEngine;

    invoke-virtual {v4, p2}, Lcom/miui/gallery/sdk/download/DownloadEngine;->getDownloader(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    move-result-object v1

    .line 71
    .local v1, "downloader":Lcom/miui/gallery/sdk/download/downloader/IDownloader;
    new-instance v4, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    invoke-direct {v4}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;-><init>()V

    .line 72
    invoke-virtual {v4, p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setUri(Landroid/net/Uri;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v4

    .line 73
    invoke-virtual {v4, p2}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setType(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v4

    .line 74
    invoke-virtual {v4, v0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setUriAdapter(Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v4

    .line 75
    invoke-virtual {v4, v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setUriLock(Ljava/util/concurrent/locks/ReentrantLock;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v4

    .line 76
    invoke-virtual {v4, p4}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setDownloadListener(Lcom/miui/gallery/sdk/download/listener/DownloadListener;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v4

    .line 77
    invoke-virtual {v4, p5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setProgressListener(Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v4

    .line 78
    invoke-virtual {v4, v1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setDownloader(Lcom/miui/gallery/sdk/download/downloader/IDownloader;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v4

    .line 79
    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isRequirePower()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setRequirePower(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v4

    .line 80
    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isRequireCharging()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setRequireCharging(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v4

    .line 81
    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isRequireWLAN()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setRequireWLAN(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v4

    .line 82
    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isRequireDeviceStorage()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setRequireDeviceStorage(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v4

    .line 83
    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isManual()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setManual(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v4

    .line 84
    invoke-virtual {v4}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->build()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v2

    .line 85
    .local v2, "item":Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    iget-object v4, p0, Lcom/miui/gallery/sdk/download/ImageDownloader;->mEngine:Lcom/miui/gallery/sdk/download/DownloadEngine;

    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isQueueFirst()Z

    move-result v5

    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isInterruptExecuting()Z

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/miui/gallery/sdk/download/DownloadEngine;->download(Lcom/miui/gallery/sdk/download/assist/DownloadItem;ZZ)V

    goto :goto_0
.end method

.method public loadSync(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/DownloadOptions;)Lcom/miui/gallery/sdk/download/assist/DownloadedItem;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "options"    # Lcom/miui/gallery/sdk/download/DownloadOptions;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v8

    .line 93
    :cond_1
    invoke-virtual {p0, p3}, Lcom/miui/gallery/sdk/download/ImageDownloader;->ensureDownloadOptions(Lcom/miui/gallery/sdk/download/DownloadOptions;)Lcom/miui/gallery/sdk/download/DownloadOptions;

    move-result-object p3

    .line 95
    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->getUriAdapter()Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    move-result-object v0

    .line 96
    .local v0, "adapter":Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;
    iget-object v9, p0, Lcom/miui/gallery/sdk/download/ImageDownloader;->mEngine:Lcom/miui/gallery/sdk/download/DownloadEngine;

    invoke-virtual {v9, p1, p2}, Lcom/miui/gallery/sdk/download/DownloadEngine;->getLockForUri(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    .line 97
    .local v7, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v9, p0, Lcom/miui/gallery/sdk/download/ImageDownloader;->mEngine:Lcom/miui/gallery/sdk/download/DownloadEngine;

    invoke-virtual {v9, p2}, Lcom/miui/gallery/sdk/download/DownloadEngine;->getDownloader(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    move-result-object v3

    .line 99
    .local v3, "downloader":Lcom/miui/gallery/sdk/download/downloader/IDownloader;
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccountInfo()Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    move-result-object v4

    .line 100
    .local v4, "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    if-eqz v4, :cond_0

    .line 104
    const/4 v9, 0x1

    new-array v2, v9, [Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    aput-object v8, v2, v10

    .line 105
    .local v2, "downloadedItem":[Lcom/miui/gallery/sdk/download/assist/DownloadedItem;
    new-instance v1, Lcom/miui/gallery/sdk/download/ImageDownloader$1;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/sdk/download/ImageDownloader$1;-><init>(Lcom/miui/gallery/sdk/download/ImageDownloader;[Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V

    .line 125
    .local v1, "downloadListener":Lcom/miui/gallery/sdk/download/listener/DownloadListener;
    new-instance v8, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    invoke-direct {v8}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;-><init>()V

    .line 126
    invoke-virtual {v8, p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setUri(Landroid/net/Uri;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v8

    .line 127
    invoke-virtual {v8, p2}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setType(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v8

    .line 128
    invoke-virtual {v8, v0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setUriAdapter(Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v8

    .line 129
    invoke-virtual {v8, v7}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setUriLock(Ljava/util/concurrent/locks/ReentrantLock;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v8

    .line 130
    invoke-virtual {v8, v1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setDownloadListener(Lcom/miui/gallery/sdk/download/listener/DownloadListener;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v8

    .line 131
    invoke-virtual {v8, v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setDownloader(Lcom/miui/gallery/sdk/download/downloader/IDownloader;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v8

    .line 132
    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isRequirePower()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setRequirePower(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v8

    .line 133
    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isRequireCharging()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setRequireCharging(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v8

    .line 134
    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isRequireWLAN()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setRequireWLAN(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v8

    .line 135
    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isRequireDeviceStorage()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setRequireDeviceStorage(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v8

    .line 136
    invoke-virtual {p3}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isManual()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setManual(Z)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v8

    .line 137
    invoke-virtual {v8}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->build()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v5

    .line 138
    .local v5, "item":Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 139
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/DownloadItem;>;"
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v8, v4, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    iget-object v9, v4, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    invoke-interface {v3, v8, v9, v6}, Lcom/miui/gallery/sdk/download/downloader/IDownloader;->download(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)V

    .line 142
    aget-object v8, v2, v10

    goto :goto_0
.end method
