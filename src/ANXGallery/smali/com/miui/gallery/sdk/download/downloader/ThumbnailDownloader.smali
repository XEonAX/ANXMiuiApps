.class public Lcom/miui/gallery/sdk/download/downloader/ThumbnailDownloader;
.super Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;
.source "ThumbnailDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkAndReturnValidPath(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Ljava/lang/String;
    .locals 3
    .param p1, "request"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .prologue
    .line 54
    iget-object v1, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v1, v2}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->checkAndReturnValidFilePathForType(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string v1, "ThumbnailDownloader"

    const-string v2, "already exist thumbnail file"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 65
    :goto_0
    return-object v1

    .line 60
    :cond_0
    iget-object v1, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v1, v2}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->checkAndReturnValidOriginalFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    const-string v1, "ThumbnailDownloader"

    const-string v2, "already exist original file"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic download(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->download(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)V

    return-void
.end method

.method protected getRequestHeight()I
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenHeight()I

    move-result v0

    return v0
.end method

.method protected getRequestWidth()I
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "ThumbnailDownloader"

    return-object v0
.end method

.method protected handleDownloadTempFile(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Z
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p2, "downloadTemp"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;

    iget-object v1, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;-><init>(Lcom/miui/gallery/data/DBImage;)V

    invoke-virtual {v0, p2}, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->write(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected updateDataBase(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Z
    .locals 7
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p2, "downloadPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "downloadFile":Ljava/io/File;
    iget-object v2, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 28
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "thumbnailFile"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v2, "localFile"

    sget-object v3, Lcom/miui/gallery/provider/InternalContract$Cloud;->INVALID_FILE_PATH_NULL_MARK:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v2, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 35
    iget-object v2, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    new-array v2, v5, [Ljava/io/File;

    aput-object v0, v2, v6

    invoke-static {v5, v2}, Lcom/miui/gallery/util/MediaFileUtils;->triggerMediaScan(Z[Ljava/io/File;)V

    .line 38
    :cond_0
    return v5
.end method
