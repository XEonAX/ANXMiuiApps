.class public abstract Lcom/miui/gallery/cloud/CreateImageBase;
.super Ljava/lang/Object;
.source "CreateImageBase.java"

# interfaces
.implements Lcom/miui/gallery/cloud/Operation;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/miui/gallery/cloud/CreateImageBase;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private ensureExifAndSha1Valid(Lcom/miui/gallery/data/DBImage;)Z
    .locals 20
    .param p1, "dbCloud"    # Lcom/miui/gallery/data/DBImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v8

    .line 228
    .local v8, "dateModified":J
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getSize()J

    move-result-wide v12

    .line 229
    .local v12, "fileSize":J
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, "localFile":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v10, "file":Ljava/io/File;
    invoke-static {v11}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 232
    .local v15, "originalSha1":Ljava/lang/String;
    invoke-static {v11}, Lcom/miui/gallery/cloud/CloudUtils;->readFileNameFromExif(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 233
    .local v14, "originalFileName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-nez v2, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v12, v2

    if-nez v2, :cond_0

    .line 234
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    const/4 v2, 0x1

    .line 299
    :goto_0
    return v2

    .line 238
    :cond_0
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v19, "values":Landroid/content/ContentValues;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 245
    :cond_1
    new-instance v2, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;

    const-string v3, ""

    const-string v4, ""

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4}, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;-><init>(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v2, v11}, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->write(Ljava/lang/String;)Z

    move-result v18

    .line 248
    .local v18, "succ":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/miui/gallery/data/DBImage;->setOriginInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    if-eqz v18, :cond_4

    .line 251
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v16, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v2, "version"

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v3, "hasSha1InExif"

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v2, "micloud_sync"

    const-string/jumbo v3, "upload_thumbnail"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 262
    invoke-static {v11}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 263
    .local v17, "sha1":Ljava/lang/String;
    const-string/jumbo v2, "sha1"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .end local v16    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "sha1":Ljava/lang/String;
    .end local v18    # "succ":Z
    :cond_2
    const-string/jumbo v2, "size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 271
    const-string v2, "dateModified"

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 273
    move-object/from16 v0, v19

    invoke-static {v11, v0}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->putValuesForVideo(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 274
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 254
    .restart local v16    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "succ":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 259
    .end local v16    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 277
    .end local v18    # "succ":Z
    :cond_5
    move-object/from16 v0, v19

    invoke-static {v11, v0}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->putValuesForImage(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 280
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 280
    move-object/from16 v0, v19

    invoke-static {v2, v0, v3, v4}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 286
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    new-instance v7, Lcom/miui/gallery/cloud/CreateImageBase$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1}, Lcom/miui/gallery/cloud/CreateImageBase$1;-><init>(Lcom/miui/gallery/cloud/CreateImageBase;Lcom/miui/gallery/data/DBImage;)V

    .line 285
    invoke-static/range {v2 .. v7}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    .line 299
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private isInvalidData(Lcom/miui/gallery/data/DBImage;)Z
    .locals 6
    .param p1, "newData"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    const/4 v1, 0x0

    .line 202
    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    sget-object v2, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/gallery/cloud/CreateImageBase;->mContext:Landroid/content/Context;

    const-string v4, "_id"

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    .line 205
    .local v0, "album":Lcom/miui/gallery/data/DBImage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/CreateImageBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 208
    .end local v0    # "album":Lcom/miui/gallery/data/DBImage;
    :cond_1
    return v1
.end method

.method private isNormalFlag(I)Z
    .locals 1
    .param p1, "localFlag"    # I

    .prologue
    .line 183
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private statCannotUpload(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/data/DBImage;Z)V
    .locals 4
    .param p1, "oldData"    # Lcom/miui/gallery/data/DBImage;
    .param p2, "newData"    # Lcom/miui/gallery/data/DBImage;
    .param p3, "isInvalid"    # Z

    .prologue
    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "localFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "localGroupId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getLocalGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "reason"

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->canUpload(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "Sync"

    const-string/jumbo v2, "sync_cannot_upload"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    if-eqz p3, :cond_0

    .line 194
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 195
    const-string v1, "localFile"

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "Sync"

    const-string/jumbo v2, "sync_invalid_data"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 198
    :cond_0
    return-void
.end method

.method private statImageCreate(Ljava/io/File;J)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cost"    # J

    .prologue
    .line 212
    const/high16 v1, 0x3f800000    # 1.0f

    long-to-float v8, p2

    mul-float/2addr v1, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v4, v1

    .line 213
    .local v4, "time":J
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-float v8, v8

    mul-float/2addr v1, v8

    const/high16 v8, 0x44800000    # 1024.0f

    div-float/2addr v1, v8

    const/high16 v8, 0x44800000    # 1024.0f

    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v2, v1

    .line 214
    .local v2, "size":J
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "size"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v1, "time"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v1, "Sync"

    const-string/jumbo v8, "sync_upload_time_one_photo"

    invoke-static {v1, v8, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v8, v8

    mul-float/2addr v1, v8

    const v8, 0x476a6000    # 60000.0f

    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v6, v1

    .line 220
    .local v6, "timely":J
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 221
    const-string/jumbo v1, "timely"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "Sync"

    const-string/jumbo v8, "sync_upload_timely"

    invoke-static {v1, v8, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 223
    return-void
.end method


# virtual methods
.method public checkState(Lcom/miui/gallery/cloud/RequestItemBase;)I
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 179
    invoke-static {p1}, Lcom/miui/gallery/cloud/SyncConditionManager;->checkForItem(Lcom/miui/gallery/cloud/RequestItemBase;)I

    move-result v0

    return v0
.end method

.method protected abstract doUpload(Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public execute(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 24
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p3, "ckey"    # Ljava/lang/String;
    .param p4, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 52
    .local v16, "startTime":J
    move-object/from16 v0, p4

    instance-of v0, v0, Lcom/miui/gallery/cloud/RequestCloudItem;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 53
    const-string v19, "CreateImageBase"

    const-string v20, "item is not instanceof RequestCloudItem."

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v14, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 174
    :cond_0
    :goto_0
    return-object v14

    :cond_1
    move-object/from16 v13, p4

    .line 57
    check-cast v13, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 58
    .local v13, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v12, v13, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 59
    .local v12, "oldImage":Lcom/miui/gallery/data/DBImage;
    const-string v19, "CreateImageBase"

    const-string v20, "create image start %s"

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/CreateImageBase;->getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;->isSpaceFull(Lcom/miui/gallery/cloud/RequestCloudItem;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 62
    sget-object v14, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotContinueError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 67
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/miui/gallery/cloud/CreateImageBase;->getDBImage(Lcom/miui/gallery/cloud/RequestCloudItem;)Lcom/miui/gallery/data/DBImage;

    move-result-object v10

    .line 70
    .local v10, "newImage":Lcom/miui/gallery/data/DBImage;
    if-nez v10, :cond_3

    .line 71
    const-string v19, "CreateImageBase"

    const-string v20, "item not exist %s"

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    sget-object v14, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 77
    const-string v19, "CreateImageBase"

    const-string v20, "item has changed old[%s], new[%s]"

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v19 .. v22}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    sget-object v14, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v19

    if-nez v19, :cond_5

    .line 83
    const-string v19, "CreateImageBase"

    const-string v20, "item already synced, id[%s], fileName[%s]"

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v19 .. v22}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    sget-object v14, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 88
    :cond_5
    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/CreateImageBase;->isNormalFlag(I)Z

    move-result v19

    if-nez v19, :cond_6

    .line 89
    const-string v19, "CreateImageBase"

    const-string v20, "item already deleted, id[%s], fileName[%s]"

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v19 .. v22}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    sget-object v14, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto/16 :goto_0

    .line 94
    :cond_6
    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/cloud/CloudUtils;->canUpload(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_8

    const/4 v4, 0x1

    .line 96
    .local v4, "canUpload":Z
    :goto_1
    if-nez v4, :cond_9

    .line 99
    const-string v19, "CreateImageBase"

    const-string/jumbo v20, "this type of media can\'t upload, id[%s], fileName[%s]"

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v19 .. v22}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/gallery/cloud/CreateImageBase;->isInvalidData(Lcom/miui/gallery/data/DBImage;)Z

    move-result v8

    .line 101
    .local v8, "isInvalid":Z
    if-eqz v8, :cond_7

    .line 102
    const-string v19, "CreateImageBase"

    const-string v20, "dirty data %s"

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/SyncLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-static {v10}, Lcom/miui/gallery/cloud/CloudUtils;->deleteDirty(Lcom/miui/gallery/data/DBImage;)V

    .line 105
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v8}, Lcom/miui/gallery/cloud/CreateImageBase;->statCannotUpload(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/data/DBImage;Z)V

    .line 106
    sget-object v14, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto/16 :goto_0

    .line 94
    .end local v4    # "canUpload":Z
    .end local v8    # "isInvalid":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    .line 109
    .restart local v4    # "canUpload":Z
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/gallery/cloud/CreateImageBase;->ensureExifAndSha1Valid(Lcom/miui/gallery/data/DBImage;)Z

    move-result v5

    .line 110
    .local v5, "dataValid":Z
    if-nez v5, :cond_a

    .line 111
    const-string v19, "CreateImageBase"

    const-string v20, "reject to upload!!"

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v14, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto/16 :goto_0

    .line 116
    :cond_a
    iput-object v10, v13, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 118
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 119
    const-string v19, "CreateImageBase"

    const-string v20, "file name changed old[%s], new[%s]"

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v19 .. v22}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    :cond_b
    new-instance v7, Ljava/io/File;

    iget-object v0, v13, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v7, "file":Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lcom/miui/gallery/cloud/CreateImageBase;->doUpload(Lcom/miui/gallery/cloud/RequestCloudItem;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/xiaomi/opensdk/exception/UnretriableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/CreateImageBase;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "_id"

    .line 138
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v22

    .line 137
    invoke-static/range {v19 .. v22}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v15

    .line 139
    .local v15, "updateToDateItem":Lcom/miui/gallery/data/DBImage;
    invoke-static {}, Lcom/miui/gallery/cloud/control/ServerTagCache;->getInstance()Lcom/miui/gallery/cloud/control/ServerTagCache;

    move-result-object v19

    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getServerTag()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/miui/gallery/cloud/control/ServerTagCache;->add(Ljava/lang/String;)Z

    .line 140
    if-eqz v15, :cond_c

    .line 141
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, "oldFileName":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, "newFileName":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getOriginSha1()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 144
    const-string v19, "CreateImageBase"

    const-string v20, "duplication is found by server, file=%s"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    sget-object v19, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ORIGINAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v7, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 148
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v18, "values":Landroid/content/ContentValues;
    const-string v19, "localFile"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v19, "thumbnailFile"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "_id = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 152
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    .line 151
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    .end local v9    # "newFileName":Ljava/lang/String;
    .end local v11    # "oldFileName":Ljava/lang/String;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_c
    :goto_2
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Storage;->getCloudWaitUploadFilePath()[Ljava/lang/String;

    move-result-object v19

    .line 160
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    .line 159
    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/deprecated/Storage;->startsWithFilePath([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 161
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/cloud/CloudUtils;->isFileNeedUpload(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 163
    sget-object v19, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ORIGINAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v7, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 166
    :cond_d
    const-string v19, "CreateImageBase"

    const-string v20, "create image end %s"

    iget-object v0, v13, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/miui/gallery/cloud/CreateImageBase;->statImageCreate(Ljava/io/File;J)V

    .line 172
    new-instance v19, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v22

    invoke-direct/range {v19 .. v23}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;-><init>(JJ)V

    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorUploadInfo(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;)V

    .line 174
    sget-object v14, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto/16 :goto_0

    .line 153
    .restart local v9    # "newFileName":Ljava/lang/String;
    .restart local v11    # "oldFileName":Ljava/lang/String;
    :cond_e
    invoke-static {v11, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 154
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v15, v9, v11, v0}, Lcom/miui/gallery/cloud/CloudUtils;->renameAnItemInLocal(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 125
    .end local v9    # "newFileName":Ljava/lang/String;
    .end local v11    # "oldFileName":Ljava/lang/String;
    .end local v15    # "updateToDateItem":Lcom/miui/gallery/data/DBImage;
    :catch_0
    move-exception v6

    .line 126
    .local v6, "e":Lcom/xiaomi/opensdk/exception/UnretriableException;
    :try_start_1
    invoke-virtual {v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;->printStackTrace()V

    .line 127
    iget-object v0, v13, Lcom/miui/gallery/cloud/RequestCloudItem;->result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 128
    iget-object v14, v13, Lcom/miui/gallery/cloud/RequestCloudItem;->result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 129
    .local v14, "result":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/miui/gallery/cloud/RequestCloudItem;->result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 130
    const-string v19, "CreateImageBase"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "upload error, result="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/CreateImageBase;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "_id"

    .line 138
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v22

    .line 137
    invoke-static/range {v19 .. v22}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v15

    .line 139
    .restart local v15    # "updateToDateItem":Lcom/miui/gallery/data/DBImage;
    invoke-static {}, Lcom/miui/gallery/cloud/control/ServerTagCache;->getInstance()Lcom/miui/gallery/cloud/control/ServerTagCache;

    move-result-object v19

    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getServerTag()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/miui/gallery/cloud/control/ServerTagCache;->add(Ljava/lang/String;)Z

    .line 140
    if-eqz v15, :cond_0

    .line 141
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 142
    .restart local v11    # "oldFileName":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v9

    .line 143
    .restart local v9    # "newFileName":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getOriginSha1()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 144
    const-string v19, "CreateImageBase"

    const-string v20, "duplication is found by server, file=%s"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    sget-object v19, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ORIGINAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v7, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 148
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .restart local v18    # "values":Landroid/content/ContentValues;
    const-string v19, "localFile"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v19, "thumbnailFile"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "_id = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 152
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    .line 151
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_f
    invoke-static {v11, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 154
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v15, v9, v11, v0}, Lcom/miui/gallery/cloud/CloudUtils;->renameAnItemInLocal(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 133
    .end local v9    # "newFileName":Ljava/lang/String;
    .end local v11    # "oldFileName":Ljava/lang/String;
    .end local v14    # "result":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .end local v15    # "updateToDateItem":Lcom/miui/gallery/data/DBImage;
    :cond_10
    :try_start_2
    const-string v19, "CreateImageBase"

    const-string/jumbo v20, "upload error, no result."

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v14, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryCurrent:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/CreateImageBase;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "_id"

    .line 138
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v22

    .line 137
    invoke-static/range {v19 .. v22}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v15

    .line 139
    .restart local v15    # "updateToDateItem":Lcom/miui/gallery/data/DBImage;
    invoke-static {}, Lcom/miui/gallery/cloud/control/ServerTagCache;->getInstance()Lcom/miui/gallery/cloud/control/ServerTagCache;

    move-result-object v19

    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getServerTag()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/miui/gallery/cloud/control/ServerTagCache;->add(Ljava/lang/String;)Z

    .line 140
    if-eqz v15, :cond_0

    .line 141
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 142
    .restart local v11    # "oldFileName":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v9

    .line 143
    .restart local v9    # "newFileName":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getOriginSha1()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 144
    const-string v19, "CreateImageBase"

    const-string v20, "duplication is found by server, file=%s"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    sget-object v19, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ORIGINAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v7, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 148
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .restart local v18    # "values":Landroid/content/ContentValues;
    const-string v19, "localFile"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v19, "thumbnailFile"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "_id = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 152
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    .line 151
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_11
    invoke-static {v11, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 154
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v15, v9, v11, v0}, Lcom/miui/gallery/cloud/CloudUtils;->renameAnItemInLocal(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 137
    .end local v6    # "e":Lcom/xiaomi/opensdk/exception/UnretriableException;
    .end local v9    # "newFileName":Ljava/lang/String;
    .end local v11    # "oldFileName":Ljava/lang/String;
    .end local v15    # "updateToDateItem":Lcom/miui/gallery/data/DBImage;
    :catchall_0
    move-exception v19

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/CreateImageBase;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "_id"

    .line 138
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v23

    .line 137
    invoke-static/range {v20 .. v23}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v15

    .line 139
    .restart local v15    # "updateToDateItem":Lcom/miui/gallery/data/DBImage;
    invoke-static {}, Lcom/miui/gallery/cloud/control/ServerTagCache;->getInstance()Lcom/miui/gallery/cloud/control/ServerTagCache;

    move-result-object v20

    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getServerTag()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/miui/gallery/cloud/control/ServerTagCache;->add(Ljava/lang/String;)Z

    .line 140
    if-eqz v15, :cond_12

    .line 141
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 142
    .restart local v11    # "oldFileName":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v9

    .line 143
    .restart local v9    # "newFileName":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getOriginSha1()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v15}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 144
    const-string v20, "CreateImageBase"

    const-string v21, "duplication is found by server, file=%s"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    sget-object v20, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ORIGINAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 148
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .restart local v18    # "values":Landroid/content/ContentValues;
    const-string v20, "localFile"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v20, "thumbnailFile"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "_id = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 152
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    .line 151
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    .end local v9    # "newFileName":Ljava/lang/String;
    .end local v11    # "oldFileName":Ljava/lang/String;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_12
    :goto_3
    throw v19

    .line 153
    .restart local v9    # "newFileName":Ljava/lang/String;
    .restart local v11    # "oldFileName":Ljava/lang/String;
    :cond_13
    invoke-static {v11, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_12

    .line 154
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v15, v9, v11, v0}, Lcom/miui/gallery/cloud/CloudUtils;->renameAnItemInLocal(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method protected abstract getDBImage(Lcom/miui/gallery/cloud/RequestCloudItem;)Lcom/miui/gallery/data/DBImage;
.end method

.method protected abstract getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
.end method
