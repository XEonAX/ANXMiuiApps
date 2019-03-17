.class public Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;
.super Ljava/lang/Object;
.source "CloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/CloudUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecretAlbumUtils"
.end annotation


# direct methods
.method public static decodeFile(Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 6
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "tarPath"    # Ljava/lang/String;
    .param p2, "secretId"    # J
    .param p4, "deleteOrigin"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object p1, v1

    .line 3120
    .end local p1    # "tarPath":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 3103
    .restart local p1    # "tarPath":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/miui/gallery/model/SecretInfo;

    invoke-direct {v0}, Lcom/miui/gallery/model/SecretInfo;-><init>()V

    .line 3104
    .local v0, "secretInfo":Lcom/miui/gallery/model/SecretInfo;
    iput-wide p2, v0, Lcom/miui/gallery/model/SecretInfo;->mSecretId:J

    .line 3105
    iput-object p0, v0, Lcom/miui/gallery/model/SecretInfo;->mSecretPath:Ljava/lang/String;

    .line 3107
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, v0, Lcom/miui/gallery/model/SecretInfo;->mSecretId:J

    invoke-static {v2, v4, v5, v0}, Lcom/miui/gallery/provider/CloudUtils;->getSecretInfo(Landroid/content/Context;JLcom/miui/gallery/model/SecretInfo;)Lcom/miui/gallery/model/SecretInfo;

    move-result-object v0

    .line 3108
    iget-object v2, v0, Lcom/miui/gallery/model/SecretInfo;->mSecretPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p1, v1

    .line 3109
    goto :goto_0

    .line 3111
    :cond_2
    iget-object v1, v0, Lcom/miui/gallery/model/SecretInfo;->mSecretKey:[B

    if-eqz v1, :cond_3

    .line 3112
    iget-object v1, v0, Lcom/miui/gallery/model/SecretInfo;->mSecretPath:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/gallery/model/SecretInfo;->mSecretKey:[B

    invoke-static {v1, p1, v2, p4}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->decodeFile(Ljava/lang/String;Ljava/lang/String;[BZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3114
    :cond_3
    if-eqz p4, :cond_4

    .line 3115
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/miui/gallery/model/SecretInfo;->mSecretPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/miui/gallery/util/FileUtils;->renameFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    .line 3118
    :cond_4
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/miui/gallery/model/SecretInfo;->mSecretPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/miui/gallery/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private static decodeFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "decodedFileName"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .prologue
    const/4 v2, 0x0

    .line 3065
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3073
    :cond_0
    :goto_0
    return-object v2

    .line 3068
    :cond_1
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 3069
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 3072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3073
    .local v0, "decodedFilePath":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v0, p2, v2}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->decodeFile(Ljava/lang/String;Ljava/lang/String;[BZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;Ljava/lang/String;[BZ)Ljava/lang/String;
    .locals 5
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "tarPath"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "deleteOrigin"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 3077
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object p1, v1

    .line 3095
    .end local p1    # "tarPath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 3081
    .restart local p1    # "tarPath":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3082
    .local v0, "src":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_3

    move-object p1, v1

    .line 3083
    goto :goto_0

    .line 3086
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/GalleryAes;->decryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3087
    if-eqz p3, :cond_1

    .line 3088
    sget-object v1, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v2, v3, [Ljava/io/File;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    goto :goto_0

    .line 3092
    :cond_4
    if-eqz p3, :cond_5

    .line 3093
    sget-object v2, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    :cond_5
    move-object p1, v1

    .line 3095
    goto :goto_0
.end method

.method public static decodeFiles(Lcom/miui/gallery/data/DBImage;Landroid/content/ContentValues;)V
    .locals 9
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 3149
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSecretKeyNoGenerate()[B

    move-result-object v6

    if-nez v6, :cond_1

    .line 3188
    :cond_0
    :goto_0
    return-void

    .line 3154
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getMicroThumbnailFile()Ljava/lang/String;

    move-result-object v4

    .line 3155
    .local v4, "microThumbnailPath":Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3156
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailNameBySha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3157
    .local v2, "fileName":Ljava/lang/String;
    const-string v6, "microthumbfile"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSecretKey()[B

    move-result-object v7

    invoke-static {v4, v2, v7}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->decodeFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v3

    .line 3162
    .local v3, "localPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3163
    .local v0, "decodeLocalFileSucceed":Z
    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3164
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSecretKey()[B

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->decodeFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    .line 3165
    .local v1, "decodeLocalPath":Ljava/lang/String;
    const-string v6, "localFile"

    invoke-virtual {p1, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    invoke-static {v1}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3167
    const/4 v0, 0x1

    .line 3172
    .end local v1    # "decodeLocalPath":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v5

    .line 3173
    .local v5, "thumbPath":Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3174
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailNameByTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3175
    .restart local v2    # "fileName":Ljava/lang/String;
    if-nez v0, :cond_4

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3181
    :cond_4
    sget-object v6, Lcom/miui/gallery/util/MediaFileUtils$FileType;->THUMBNAIL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 3182
    const-string/jumbo v6, "thumbnailFile"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 3185
    :cond_5
    const-string/jumbo v6, "thumbnailFile"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSecretKey()[B

    move-result-object v7

    invoke-static {v5, v2, v7}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->decodeFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static encodeFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 8
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "encodedFileName"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 3125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 3144
    :goto_0
    return-object v0

    .line 3128
    :cond_0
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 3129
    .local v1, "index":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    move-object v0, v3

    .line 3130
    goto :goto_0

    .line 3132
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3134
    .local v0, "encodedFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3135
    .local v2, "src":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v3

    .line 3136
    goto :goto_0

    .line 3139
    :cond_2
    invoke-static {p0, v0, p2}, Lcom/miui/gallery/util/GalleryAes;->encryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3140
    sget-object v3, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v4, v7, [Ljava/io/File;

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    goto :goto_0

    .line 3143
    :cond_3
    sget-object v4, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    move-object v0, v3

    .line 3144
    goto :goto_0
.end method

.method public static encodeFiles(Lcom/miui/gallery/data/DBImage;Landroid/content/ContentValues;)V
    .locals 6
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 3200
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSecretKeyNoGenerate()[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3223
    :cond_0
    :goto_0
    return-void

    .line 3203
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/GalleryAes;->generateRandomKey()[B

    move-result-object v0

    .line 3204
    .local v0, "key":[B
    const-string v4, "secretKey"

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 3207
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getMicroThumbnailFile()Ljava/lang/String;

    move-result-object v2

    .line 3208
    .local v2, "microThumbnailPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3209
    const-string v4, "microthumbfile"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSha1ThumbnailSA()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->encodeFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v1

    .line 3214
    .local v1, "localPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3215
    const-string v4, "localFile"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getEncodedFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->encodeFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v3

    .line 3220
    .local v3, "thumbPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3221
    const-string/jumbo v4, "thumbnailFile"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSha1ThumbnailSA()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->encodeFile(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getEncodedFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "md5key"    # Ljava/lang/String;

    .prologue
    .line 3026
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 3027
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 3028
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3030
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMD5Key([B)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # [B

    .prologue
    .line 3036
    const/4 v1, 0x0

    .line 3039
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 3040
    .local v2, "sha1":Ljava/security/MessageDigest;
    const/4 v3, 0x0

    array-length v4, p0

    invoke-virtual {v2, p0, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 3041
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcn/kuaipan/kss/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3045
    .end local v2    # "sha1":Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    .line 3042
    :catch_0
    move-exception v0

    .line 3043
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "CloudUtils"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSha1ThumbnailSA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sha1"    # Ljava/lang/String;
    .param p1, "md5Key"    # Ljava/lang/String;

    .prologue
    .line 3022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmpty([B)Z
    .locals 1
    .param p0, "key"    # [B

    .prologue
    .line 3049
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
