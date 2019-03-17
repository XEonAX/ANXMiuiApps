.class public Lcom/miui/gallery/cloud/GalleryKssManager;
.super Ljava/lang/Object;
.source "GalleryKssManager.java"


# static fields
.field private static sMaster:[Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    sput-object v0, Lcom/miui/gallery/cloud/GalleryKssManager;->sMaster:[Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    return-void
.end method

.method private static declared-synchronized createRequestor(ZZ)Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;
    .locals 8
    .param p0, "isShared"    # Z
    .param p1, "isVideo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 29
    const-class v7, Lcom/miui/gallery/cloud/GalleryKssManager;

    monitor-enter v7

    if-eqz p0, :cond_0

    move v6, v5

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    add-int v1, v6, v5

    .line 30
    .local v1, "index":I
    :try_start_0
    sget-object v5, Lcom/miui/gallery/cloud/GalleryKssManager;->sMaster:[Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    aget-object v5, v5, v1

    if-nez v5, :cond_3

    .line 31
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccountInfo()Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 32
    .local v2, "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    if-nez v2, :cond_2

    .line 33
    const/4 v5, 0x0

    .line 48
    .end local v2    # "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    :goto_2
    monitor-exit v7

    return-object v5

    .line 29
    .end local v1    # "index":I
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_1

    .line 36
    .restart local v1    # "index":I
    .restart local v2    # "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "context":Landroid/content/Context;
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUrlProvider(ZZ)Lcom/miui/gallery/cloud/CloudUrlProvider;

    move-result-object v4

    .line 39
    .local v4, "urlProvider":Lcom/miui/gallery/cloud/CloudUrlProvider;
    if-eqz p0, :cond_4

    .line 40
    new-instance v3, Lcom/miui/gallery/cloud/CloudGallerySharerRequestor;

    iget-object v5, v2, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    invoke-direct {v3, v5, v4}, Lcom/miui/gallery/cloud/CloudGallerySharerRequestor;-><init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/CloudUrlProvider;)V

    .line 45
    .local v3, "requestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    :goto_3
    sget-object v5, Lcom/miui/gallery/cloud/GalleryKssManager;->sMaster:[Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    new-instance v6, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    invoke-direct {v6, v0, v3}, Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;-><init>(Landroid/content/Context;Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;)V

    aput-object v6, v5, v1

    .line 48
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    .end local v3    # "requestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    .end local v4    # "urlProvider":Lcom/miui/gallery/cloud/CloudUrlProvider;
    :cond_3
    sget-object v5, Lcom/miui/gallery/cloud/GalleryKssManager;->sMaster:[Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    aget-object v5, v5, v1

    goto :goto_2

    .line 42
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    .restart local v4    # "urlProvider":Lcom/miui/gallery/cloud/CloudUrlProvider;
    :cond_4
    new-instance v3, Lcom/miui/gallery/cloud/CloudGalleryOwnerRequestor;

    iget-object v5, v2, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    invoke-direct {v3, v5, v4}, Lcom/miui/gallery/cloud/CloudGalleryOwnerRequestor;-><init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/CloudUrlProvider;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v3    # "requestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    goto :goto_3

    .line 29
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    .end local v3    # "requestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    .end local v4    # "urlProvider":Lcom/miui/gallery/cloud/CloudUrlProvider;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method private static doDownload(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .locals 2
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "downloadFilePath"    # Ljava/lang/String;
    .param p3, "l"    # Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "master":Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    if-nez p0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "downloadTempFile":Ljava/io/File;
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0, p3}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->doFileSDKDownload(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    goto :goto_0
.end method

.method public static doOwnerDownload(Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .locals 2
    .param p0, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p1, "downloadFilePath"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/GalleryKssManager;->createRequestor(ZZ)Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/miui/gallery/cloud/GalleryKssManager;->doDownload(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    .line 72
    return-void
.end method

.method public static doOwnerUpload(Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/io/File;)V
    .locals 3
    .param p0, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/cloud/GalleryKssManager;->createRequestor(ZZ)Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    move-result-object v0

    .line 54
    .local v0, "master":Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/UploadTransferLisener;

    invoke-direct {v2, p0}, Lcom/miui/gallery/cloud/UploadTransferLisener;-><init>(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->doFileSDKUpload(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static doSharerDownload(Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .locals 2
    .param p0, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p1, "downloadFilePath"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/GalleryKssManager;->createRequestor(ZZ)Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/miui/gallery/cloud/GalleryKssManager;->doDownload(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    .line 77
    return-void
.end method

.method public static doSharerUpload(Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/io/File;)V
    .locals 3
    .param p0, "requestCloudItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/cloud/GalleryKssManager;->createRequestor(ZZ)Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    move-result-object v0

    .line 63
    .local v0, "master":Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/cloud/UploadTransferLisener;

    invoke-direct {v2, p0}, Lcom/miui/gallery/cloud/UploadTransferLisener;-><init>(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->doFileSDKUpload(Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/io/File;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static declared-synchronized reset()V
    .locals 4

    .prologue
    .line 23
    const-class v2, Lcom/miui/gallery/cloud/GalleryKssManager;

    monitor-enter v2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lcom/miui/gallery/cloud/GalleryKssManager;->sMaster:[Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 24
    sget-object v1, Lcom/miui/gallery/cloud/GalleryKssManager;->sMaster:[Lcom/xiaomi/micloudsdk/file/MiCloudFileMaster;

    const/4 v3, 0x0

    aput-object v3, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    monitor-exit v2

    return-void

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
