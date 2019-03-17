.class public Lcom/miui/gallery/cloud/RequestCloudItem;
.super Lcom/miui/gallery/cloud/RequestItemBase;
.source "RequestCloudItem.java"


# instance fields
.field public dbCloud:Lcom/miui/gallery/data/DBImage;


# direct methods
.method public constructor <init>(ILcom/miui/gallery/data/DBImage;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "dbCloud"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(ILcom/miui/gallery/data/DBImage;Z)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "dbCloud"    # Lcom/miui/gallery/data/DBImage;
    .param p3, "noDelay"    # Z

    .prologue
    .line 30
    if-eqz p3, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/cloud/RequestItemBase;-><init>(IJ)V

    .line 31
    iput-object p2, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->init()V

    .line 33
    return-void

    .line 30
    :cond_0
    invoke-static {p2}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDelay(Lcom/miui/gallery/data/DBImage;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getDownloadOriginalFilePath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;
    .locals 2
    .param p0, "dbCloud"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    .line 241
    .local v0, "priority":I
    :goto_0
    new-instance v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-direct {v1, v0, p0}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;)V

    invoke-virtual {v1}, Lcom/miui/gallery/cloud/RequestCloudItem;->getVerifiedDownloadFilePathForRead()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 239
    .end local v0    # "priority":I
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private isOriginFileValidate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "originPath"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldHideDownloadFolder(Ljava/lang/String;)Z
    .locals 2
    .param p0, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "relativePath":Ljava/lang/String;
    const-string v1, "MIUI/Gallery/cloud/.microthumbnailFile"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ExtraTextUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MIUI/Gallery/cloud/.secretAlbum"

    .line 115
    invoke-static {v0, v1}, Lcom/miui/gallery/util/ExtraTextUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

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


# virtual methods
.method public getDownloadFilePathForRead()Ljava/lang/String;
    .locals 6

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 162
    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0

    .line 132
    :pswitch_0
    iget-object v4, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getMicroThumbnailFile()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "microThumbnailFileFromDB":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 134
    goto :goto_0

    .line 137
    :cond_2
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/StorageUtils;->getMicroThumbnailDirectories(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getFilePathForRead([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    .end local v1    # "microThumbnailFileFromDB":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "thumbnailFileFromDB":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v3

    .line 143
    goto :goto_0

    .line 145
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v4}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFolderRelativePath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "relativePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getFilePathForRead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    .end local v2    # "relativePath":Ljava/lang/String;
    .end local v3    # "thumbnailFileFromDB":Ljava/lang/String;
    :pswitch_2
    iget-object v4, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "downloadFileFromDB":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/RequestCloudItem;->isOriginFileValidate(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    iget-object v4, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v4}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFolderRelativePath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .restart local v2    # "relativePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getFilePathForRead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/RequestCloudItem;->isOriginFileValidate(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadFilePathForWrite()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 121
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isUbiFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 123
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getSubUbiIndex()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getSubUbiImageCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/data/UbiIndexMapper;->cloudToLocal(II)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 124
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getSubUbiImageCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 122
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/data/LocalUbifocus;->createInnerFileName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getFolderPathForWrite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDownloadTempFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 234
    const-string v0, ""

    :goto_0
    return-object v0

    .line 225
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadFilePathForWrite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getThumbnailTempDirectory()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :pswitch_2
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getOriginTempDirectory()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    const-string v0, ""

    .line 66
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 85
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad checktype, checktype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->isSecretItem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getSha1ThumbnailSA()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 69
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getSha1Thumbnail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->isSecretItem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getSha1ThumbnailSA()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v1}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getThumbnailDownloadFileNameNotSecret(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v0

    .line 78
    goto :goto_0

    .line 81
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->isSecretItem()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getEncodedFileName()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_1
    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 82
    invoke-static {v1}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getOriginDownloadFileNameNotSecret(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getFolderPathForWrite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    const-string v0, ""

    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFolderPath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getTagId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestItemBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItemBase;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-object v0
.end method

.method public getRequestLimitAGroup()I
    .locals 1

    .prologue
    .line 264
    const/16 v0, 0xa

    return v0
.end method

.method public getVerifiedDownloadFilePathForRead()Ljava/lang/String;
    .locals 7

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadFilePathForRead()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "filePath":Ljava/lang/String;
    move-object v4, v0

    .line 172
    .local v4, "verifiedFilePath":Ljava/lang/String;
    const-string v1, ""

    .line 174
    .local v1, "filePathColumnName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadType()I

    move-result v2

    .line 175
    .local v2, "type":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 214
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v5, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v6}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 219
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    return-object v4

    .line 177
    :cond_2
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 179
    iget-object v5, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getMicroThumbnailFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 180
    const-string v1, "microthumbfile"

    goto :goto_0

    .line 182
    :cond_3
    const/4 v5, 0x2

    if-ne v2, v5, :cond_6

    .line 183
    iget-object v5, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->isSecretItem()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 185
    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    :cond_4
    const-string/jumbo v1, "thumbnailFile"

    .line 187
    iget-object v5, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5, v4}, Lcom/miui/gallery/data/DBImage;->setThumbnailFile(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_5
    const-string v4, ""

    goto :goto_0

    .line 192
    :cond_6
    const/4 v5, 0x3

    if-eq v2, v5, :cond_7

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    .line 194
    :cond_7
    iget-object v5, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->isSecretItem()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 196
    const-string v1, "localFile"

    .line 197
    iget-object v5, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5, v4}, Lcom/miui/gallery/data/DBImage;->setLocalFile(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_8
    invoke-static {v0}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v6}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 199
    iget-object v5, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 200
    const-string/jumbo v1, "thumbnailFile"

    .line 201
    iget-object v5, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5, v4}, Lcom/miui/gallery/data/DBImage;->setThumbnailFile(Ljava/lang/String;)V

    .line 203
    :cond_9
    const-string v4, ""

    goto/16 :goto_0

    .line 204
    :cond_a
    iget-object v5, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 205
    const-string v1, "localFile"

    .line 206
    iget-object v5, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5, v4}, Lcom/miui/gallery/data/DBImage;->setLocalFile(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :cond_b
    const-string v4, ""

    goto/16 :goto_0
.end method

.method public isInSameAlbum(Lcom/miui/gallery/cloud/RequestItemBase;)Z
    .locals 3
    .param p1, "another"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    const/4 v1, 0x1

    .line 246
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 247
    .local v0, "anotherRequestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadType()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadType()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 249
    iget-object v2, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v1, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getShareAlbumId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 251
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getShareAlbumId()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 254
    :cond_0
    return v1
.end method

.method public isSecretItem()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v0

    return v0
.end method

.method public supportMultiRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 259
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
