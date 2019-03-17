.class public Lcom/miui/gallery/sdk/download/downloader/MicroThumbnailDownloader;
.super Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;
.source "MicroThumbnailDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkAndReturnValidPath(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Ljava/lang/String;
    .locals 3
    .param p1, "request"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .prologue
    .line 43
    iget-object v1, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v1, v2}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->checkAndReturnValidFilePathForType(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const-string v1, "MicroThumbnailDownloader"

    const-string v2, "already exist micro thumbnail file"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 60
    :goto_0
    return-object v1

    .line 49
    :cond_0
    iget-object v1, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v1, v2}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->checkAndReturnValidFilePathForType(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    const-string v1, "MicroThumbnailDownloader"

    const-string v2, "already exist thumbnail file"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v1, v2}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->checkAndReturnValidOriginalFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    const-string v1, "MicroThumbnailDownloader"

    const-string v2, "already exist original file"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic download(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/sdk/download/downloader/AbsThumbnailDownloader;->download(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)V

    return-void
.end method

.method protected getRequestHeight()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0xfa

    return v0
.end method

.method protected getRequestWidth()I
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0xfa

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "MicroThumbnailDownloader"

    return-object v0
.end method

.method protected updateDataBase(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;)Z
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p2, "downloadPath"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "downloadFile":Ljava/io/File;
    iget-object v2, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 24
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 25
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "microthumbfile"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v2, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 27
    const/4 v2, 0x1

    return v2
.end method
