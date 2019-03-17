.class public Lcom/miui/gallery/data/OldThumbnailTransferer;
.super Ljava/lang/Object;
.source "OldThumbnailTransferer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/OldThumbnailTransferer$SingletonHolder;
    }
.end annotation


# instance fields
.field private final mThumbnailWrittenExif:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/OldThumbnailTransferer;->mThumbnailWrittenExif:Ljava/util/Set;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/data/OldThumbnailTransferer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/data/OldThumbnailTransferer$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/data/OldThumbnailTransferer;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/data/OldThumbnailTransferer;Lcom/miui/gallery/data/DBImage;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/data/OldThumbnailTransferer;
    .param p1, "x1"    # Lcom/miui/gallery/data/DBImage;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/data/OldThumbnailTransferer;->transfer(Lcom/miui/gallery/data/DBImage;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static getInstance()Lcom/miui/gallery/data/OldThumbnailTransferer;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/miui/gallery/data/OldThumbnailTransferer$SingletonHolder;->access$100()Lcom/miui/gallery/data/OldThumbnailTransferer;

    move-result-object v0

    return-object v0
.end method

.method private inThumbnailFolder([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "thumbnailFolders"    # [Ljava/lang/String;
    .param p2, "thumbnail"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 172
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 173
    .local v0, "thumbnailFolder":Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/miui/gallery/util/ExtraTextUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    const/4 v1, 0x1

    .line 178
    .end local v0    # "thumbnailFolder":Ljava/lang/String;
    :cond_0
    return v1

    .line 172
    .restart local v0    # "thumbnailFolder":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isTheSameItem(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;)Z
    .locals 6
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 265
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "sha1":Ljava/lang/String;
    invoke-static {p2}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentData(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-result-object v0

    .line 267
    .local v0, "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "exifSha1":Ljava/lang/String;
    :goto_0
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 277
    .end local v0    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .end local v2    # "exifSha1":Ljava/lang/String;
    .end local v3    # "sha1":Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 267
    .restart local v0    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .restart local v3    # "sha1":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 271
    .restart local v2    # "exifSha1":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 277
    .end local v0    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .end local v2    # "exifSha1":Ljava/lang/String;
    .end local v3    # "sha1":Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private refillMetaForSecretItem(Ljava/lang/String;Lcom/miui/gallery/data/DBImage;)Z
    .locals 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "ret":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "tmpFile":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getSecretKey()[B

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/miui/gallery/util/GalleryAes;->decryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    new-instance v2, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;

    invoke-direct {v2, p2}, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;-><init>(Lcom/miui/gallery/data/DBImage;)V

    invoke-virtual {v2, v1}, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->write(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getSecretKey()[B

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/miui/gallery/util/GalleryAes;->encryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 287
    const-string v2, "OldThumbnailTransferer"

    const-string v3, "refill meta for file %s successfully"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 298
    return v0

    .line 289
    :cond_0
    const-string v2, "OldThumbnailTransferer"

    const-string v3, "fail to encrypt file %s"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 292
    :cond_1
    const-string v2, "OldThumbnailTransferer"

    const-string v3, "fail to write meta for %s"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    :cond_2
    const-string v2, "OldThumbnailTransferer"

    const-string v3, "fail to decrypt file %s"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static transfer(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string v0, "old_thumbnail_transfered"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/miui/gallery/data/BackgroundJobService;->startJobTransferOldThumbnail(Landroid/content/Context;)V

    .line 57
    :cond_0
    return-void
.end method

.method private transfer(Landroid/net/Uri;[ILjava/util/List;Ljava/util/List;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxTransferCount"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, "transferedUbiIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "transferedUbiServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    aget v0, p2, v0

    if-gtz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Storage;->getCloudThumbnailFilePath()[Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "thumbnailFolders":[Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v11

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "*"

    aput-object v1, v7, v0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s=%d OR %s=%d) AND (%s IS NULL OR %s=\'\' OR %s=\'%s\') AND %s!=%d AND %s NOT NULL"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "serverType"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const/4 v5, 0x1

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "serverType"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const/4 v5, 0x2

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "serverStatus"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-string v5, "serverStatus"

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const-string v5, "serverStatus"

    aput-object v5, v2, v3

    const/4 v3, 0x7

    const-string v5, "custom"

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string v5, "localFlag"

    aput-object v5, v2, v3

    const/16 v3, 0x9

    const/4 v5, 0x2

    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v5, "thumbnailFile"

    aput-object v5, v2, v3

    .line 100
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "mixedDateTime DESC"

    new-instance v0, Lcom/miui/gallery/data/OldThumbnailTransferer$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/data/OldThumbnailTransferer$1;-><init>(Lcom/miui/gallery/data/OldThumbnailTransferer;[ILandroid/net/Uri;[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    move-object v5, v11

    move-object v6, p1

    move-object v11, v0

    .line 97
    invoke-static/range {v5 .. v11}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private transfer(Lcom/miui/gallery/data/DBImage;[Ljava/lang/String;)Z
    .locals 18
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p2, "thumbnailFolders"    # [Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "id":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, "thumbnail":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "sha1":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadOriginalFilePath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "origin":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 190
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "thumbnailFile"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v10, v12}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 193
    const-string v11, "OldThumbnailTransferer"

    const-string v12, "original file %s for %s exists. skip transfering"

    invoke-static {v11, v12, v6, v5}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    const/4 v11, 0x0

    .line 260
    .end local v10    # "values":Landroid/content/ContentValues;
    :goto_0
    return v11

    .line 195
    :cond_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lcom/miui/gallery/data/OldThumbnailTransferer;->inThumbnailFolder([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 198
    :cond_1
    const-string v11, "OldThumbnailTransferer"

    const-string/jumbo v12, "skip transfering thumbnail %s for %s"

    invoke-static {v11, v12, v9, v5}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    const/4 v11, 0x0

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Lcom/miui/gallery/data/OldThumbnailTransferer;->refillMetaForSecretItem(Ljava/lang/String;Lcom/miui/gallery/data/DBImage;)Z

    move-result v8

    .line 205
    .local v8, "succ":Z
    if-nez v8, :cond_5

    .line 206
    const-string v11, "OldThumbnailTransferer"

    const-string v12, "failed to refill meta for %s. end transfering"

    invoke-static {v11, v12, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    const/4 v11, 0x0

    goto :goto_0

    .line 209
    .end local v8    # "succ":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/data/OldThumbnailTransferer;->mThumbnailWrittenExif:Ljava/util/Set;

    invoke-interface {v11, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 210
    new-instance v11, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;-><init>(Lcom/miui/gallery/data/DBImage;)V

    invoke-virtual {v11, v9}, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->write(Ljava/lang/String;)Z

    move-result v8

    .line 211
    .restart local v8    # "succ":Z
    if-nez v8, :cond_4

    .line 212
    const-string v11, "OldThumbnailTransferer"

    const-string v12, "failed to write exif for %s. end transfering"

    invoke-static {v11, v12, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    const/4 v11, 0x0

    goto :goto_0

    .line 216
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/data/OldThumbnailTransferer;->mThumbnailWrittenExif:Ljava/util/Set;

    invoke-interface {v11, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v8    # "succ":Z
    :cond_5
    const/4 v2, 0x0

    .line 221
    .local v2, "destFileName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 222
    invoke-static {v9}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFolderPath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "destFolderPath":Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "destFilePath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v11

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/data/OldThumbnailTransferer;->isTheSameItem(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 231
    :cond_6
    const-string v11, "OldThumbnailTransferer"

    const-string v12, "destFile %s already exists"

    invoke-static {v11, v12, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    :goto_2
    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 246
    const-string v11, "OldThumbnailTransferer"

    const-string v12, "failed to transfer %s to "

    invoke-static {v11, v12, v9, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 225
    .end local v3    # "destFilePath":Ljava/lang/String;
    .end local v4    # "destFolderPath":Ljava/lang/String;
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getThumbnailDownloadFileNameNotSecret(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 234
    .restart local v3    # "destFilePath":Ljava/lang/String;
    .restart local v4    # "destFolderPath":Ljava/lang/String;
    :cond_8
    const-string v11, "OldThumbnailTransferer"

    const-string v12, "rename before transfering %s"

    invoke-static {v11, v12, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->renameForPhotoConflict(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v11

    .line 237
    invoke-static {v9, v3, v11}, Lcom/miui/gallery/cloud/CloudUtils;->copyImage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 243
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v11

    .line 242
    invoke-static {v9, v3, v11}, Lcom/miui/gallery/cloud/CloudUtils;->copyImage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 251
    :cond_a
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 252
    .restart local v10    # "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "thumbnailFile"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v11

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "%s=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "_id"

    aput-object v17, v15, v16

    .line 256
    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 257
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 253
    invoke-static {v11, v12, v10, v13, v14}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 259
    const-string v11, "OldThumbnailTransferer"

    const-string/jumbo v12, "transfered %s to %s successfully"

    invoke-static {v11, v12, v9, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private transferSubUbiImage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "subUbiTable"    # Ljava/lang/String;
    .param p3, "mainUbiTable"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p4, "transferedUbiIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "transferedUbiServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Lcom/miui/gallery/data/OldThumbnailTransferer$2;

    invoke-direct {v8, p0}, Lcom/miui/gallery/data/OldThumbnailTransferer$2;-><init>(Lcom/miui/gallery/data/OldThumbnailTransferer;)V

    .line 141
    .local v8, "converter":Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;, "Lcom/miui/gallery/util/GalleryUtils$ConcatConverter<Ljava/lang/String;>;"
    const-string v1, ","

    move-object/from16 v0, p4

    invoke-static {v0, v1, v8}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;)Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "ubiIds":Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, p5

    invoke-static {v0, v1, v8}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;)Ljava/lang/String;

    move-result-object v11

    .line 143
    .local v11, "ubiServerIds":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Storage;->getCloudThumbnailFilePath()[Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "thumbnailFolders":[Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "*"

    aput-object v4, v3, v2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "(%s IN (%s) OR %s IN (%s))"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "ubiLocalId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v10, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "ubiServerId"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v11, v5, v6

    .line 151
    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/miui/gallery/data/OldThumbnailTransferer$3;

    invoke-direct {v7, p0, p1, v9}, Lcom/miui/gallery/data/OldThumbnailTransferer$3;-><init>(Lcom/miui/gallery/data/OldThumbnailTransferer;Landroid/net/Uri;[Ljava/lang/String;)V

    move-object v2, p2

    .line 148
    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method transfer()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 60
    new-array v8, v12, [I

    const/16 v0, 0x1f4

    aput v0, v8, v11

    .line 61
    .local v8, "maxTransferCount":[I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v4, "transferedUbiIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v5, "transferedUbiServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v8, v4, v5}, Lcom/miui/gallery/data/OldThumbnailTransferer;->transfer(Landroid/net/Uri;[ILjava/util/List;Ljava/util/List;)V

    .line 65
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    const-string v2, "ownerSubUbifocus"

    const-string v3, "cloud"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/data/OldThumbnailTransferer;->transferSubUbiImage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 69
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 70
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 71
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v8, v4, v5}, Lcom/miui/gallery/data/OldThumbnailTransferer;->transfer(Landroid/net/Uri;[ILjava/util/List;Ljava/util/List;)V

    .line 72
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    const-string/jumbo v2, "shareSubUbifocus"

    const-string/jumbo v3, "shareImage"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/data/OldThumbnailTransferer;->transferSubUbiImage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 76
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Storage;->getCloudThumbnailFilePath()[Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "thumbnailFolders":[Ljava/lang/String;
    array-length v1, v9

    move v0, v11

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v7, v9, v0

    .line 78
    .local v7, "folder":Ljava/lang/String;
    const-string v2, "OldThumbnailTransferer"

    const-string/jumbo v3, "thumbnails transfered. delete old thumbnail folder: %s"

    invoke-static {v2, v3, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    sget-object v2, Lcom/miui/gallery/util/MediaFileUtils$FileType;->FOLDER:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v7, v3, v11

    invoke-static {v2, v3}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v7    # "folder":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Storage;->getCloudThumbnailModifiedTimeMapFilePath()[Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, "thumbnailModifiedTimeMapFiles":[Ljava/lang/String;
    array-length v1, v10

    move v0, v11

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v6, v10, v0

    .line 83
    .local v6, "file":Ljava/lang/String;
    const-string v2, "OldThumbnailTransferer"

    const-string/jumbo v3, "thumbnails transfered. delete thumbnail modified time file: %s"

    invoke-static {v2, v3, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    sget-object v2, Lcom/miui/gallery/util/MediaFileUtils$FileType;->THUMBNAIL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v6, v3, v11

    invoke-static {v2, v3}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    .end local v6    # "file":Ljava/lang/String;
    :cond_1
    const-string v0, "old_thumbnail_transfered"

    invoke-static {v0, v12}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    return-void
.end method
