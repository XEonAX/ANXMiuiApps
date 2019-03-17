.class public Lcom/miui/gallery/cloud/DownloadPathHelper;
.super Ljava/lang/Object;
.source "DownloadPathHelper.java"


# direct methods
.method public static addPostfixToFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "postfix"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/miui/gallery/util/FileUtils;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "fileNameWithoutExt":Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/gallery/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "ext":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    .end local v1    # "fileNameWithoutExt":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "fileNameWithoutExt":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getAllFilePathForRead([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "candidateFolders"    # [Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 203
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p0, v3

    .line 204
    .local v2, "folder":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v2    # "folder":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getDownloadFileNameNotSecret(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 133
    if-nez p0, :cond_1

    .line 134
    const-string v4, "DownloadPathHelper"

    const-string v5, "dbImage is null!"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string p1, ""

    .line 169
    .end local p0    # "dbImage":Lcom/miui/gallery/data/DBImage;
    .end local p1    # "fileName":Ljava/lang/String;
    .local v0, "albumId":Ljava/lang/String;
    .local v2, "mainDBImage":Lcom/miui/gallery/data/DBImage;
    :cond_0
    :goto_0
    return-object p1

    .line 138
    .end local v0    # "albumId":Ljava/lang/String;
    .end local v2    # "mainDBImage":Lcom/miui/gallery/data/DBImage;
    .restart local p0    # "dbImage":Lcom/miui/gallery/data/DBImage;
    .restart local p1    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 140
    .restart local v0    # "albumId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 142
    .restart local v2    # "mainDBImage":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    check-cast p0, Lcom/miui/gallery/data/DBShareSubUbiImage;

    .end local p0    # "dbImage":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBShareSubUbiImage;->getUbiLocalId()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "mainImageId":Ljava/lang/String;
    sget-object v4, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    .line 145
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "_id"

    .line 144
    invoke-static {v4, v5, v6, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v2

    .line 147
    if-nez v2, :cond_3

    .line 148
    const-string v4, "DownloadPathHelper"

    const-string v5, "mainDBImage is null!"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string p1, ""

    goto :goto_0

    .line 153
    .end local v3    # "mainImageId":Ljava/lang/String;
    .restart local p0    # "dbImage":Lcom/miui/gallery/data/DBImage;
    :cond_2
    move-object v2, p0

    .line 156
    .end local p0    # "dbImage":Lcom/miui/gallery/data/DBImage;
    :cond_3
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 158
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getLocalGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/cloud/CloudUtils;->getDBShareAlbumByLocalId(Ljava/lang/String;)Lcom/miui/gallery/data/DBShareAlbum;

    move-result-object v1

    .line 159
    .local v1, "dbShareAlbum":Lcom/miui/gallery/data/DBShareAlbum;
    if-nez v1, :cond_4

    .line 160
    const-string v4, "DownloadPathHelper"

    const-string v5, "dbShareAlbum should not be null!"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string p1, ""

    goto :goto_0

    .line 163
    :cond_4
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBShareAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    .line 166
    .end local v1    # "dbShareAlbum":Lcom/miui/gallery/data/DBShareAlbum;
    :cond_5
    invoke-static {p1, v0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->addPostfixToFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getDownloadFolderPath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;
    .locals 2
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFolderRelativePath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "folderRelativePath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 29
    const-string v1, ""

    .line 31
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDownloadFolderRelativePath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;
    .locals 9
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 38
    if-nez p0, :cond_1

    .line 39
    const-string v6, "DownloadPathHelper"

    const-string v7, "dbImage is null!"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v3, 0x0

    .line 97
    :cond_0
    :goto_0
    return-object v3

    .line 43
    :cond_1
    const/4 v3, 0x0

    .line 45
    .local v3, "folderRelativePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 46
    const-string v3, "MIUI/Gallery/cloud/sharer"

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".ubifocus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v6

    if-nez v6, :cond_4

    .line 50
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v3

    .line 88
    :goto_1
    sget-object v6, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    const-string v3, ""

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v6

    if-nez v6, :cond_5

    .line 57
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "localGroupId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "albumId":Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudTableUtils;->isCameraGroup(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 66
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getCameraLocalFile()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 61
    .end local v0    # "albumId":Ljava/lang/String;
    .end local v5    # "localGroupId":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalGroupId()Ljava/lang/String;

    move-result-object v5

    .line 62
    .restart local v5    # "localGroupId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getGroupId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumId":Ljava/lang/String;
    goto :goto_2

    .line 68
    :cond_6
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudTableUtils;->isScreenshotGroup(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 69
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getScreenshotsLocalFile()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 71
    :cond_7
    invoke-static {v0, v5}, Lcom/miui/gallery/cloud/CloudTableUtils;->isSecretAlbum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 72
    const-string v3, "MIUI/Gallery/cloud/.secretAlbum"

    goto :goto_1

    .line 75
    :cond_8
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v6

    if-nez v6, :cond_9

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "albumName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getAppKey()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "appKey":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/miui/gallery/cloud/CloudUtils;->getOwnerAlbumLocalFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    goto :goto_1

    .line 81
    .end local v1    # "albumName":Ljava/lang/String;
    .end local v2    # "appKey":Ljava/lang/String;
    :cond_9
    sget-object v6, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    .line 82
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "_id"

    .line 81
    invoke-static {v6, v7, v8, v5}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v4

    .line 83
    .local v4, "groupDBImage":Lcom/miui/gallery/data/DBImage;
    invoke-static {v4}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFolderRelativePath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static getFilePathForRead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folderRelativePath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 214
    if-nez p0, :cond_0

    .line 215
    const-string v1, ""

    .line 220
    :goto_0
    return-object v1

    .line 219
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 218
    invoke-static {v1, p0}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "candidateFolders":[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getFilePathForRead([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFilePathForRead([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "candidateFolders"    # [Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 189
    if-eqz p0, :cond_1

    .line 190
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 191
    .local v1, "folder":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "folder":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 190
    .restart local v0    # "filePath":Ljava/lang/String;
    .restart local v1    # "folder":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "folder":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static getFolderRelativePathInCloud(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "albumName"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIUI/Gallery/cloud/owner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOriginDownloadFileNameNotSecret(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;
    .locals 3
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 110
    if-nez p0, :cond_0

    .line 111
    const-string v1, "DownloadPathHelper"

    const-string v2, "dbImage is null!"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, ""

    .line 116
    :goto_0
    return-object v1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFileNameNotSecret(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getShareFolderRelativePathInCloud()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "MIUI/Gallery/cloud/sharer"

    return-object v0
.end method

.method public static getThumbnailDownloadFileNameNotSecret(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;
    .locals 3
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    const-string v1, "DownloadPathHelper"

    const-string v2, "dbImage is null!"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, ""

    .line 129
    :goto_0
    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFileNameNotSecret(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    goto :goto_0
.end method

.method public static isShareFolderRelativePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v0, "MIUI/Gallery/cloud/sharer"

    invoke-static {p0, v0}, Lcom/miui/gallery/util/ExtraTextUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
