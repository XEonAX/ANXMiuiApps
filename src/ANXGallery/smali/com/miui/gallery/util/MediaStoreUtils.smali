.class public Lcom/miui/gallery/util/MediaStoreUtils;
.super Ljava/lang/Object;
.source "MediaStoreUtils.java"


# static fields
.field private static final BASE_URI:Landroid/net/Uri;

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 195
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/util/MediaStoreUtils;->PROJECTION:[Ljava/lang/String;

    .line 205
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/MediaStoreUtils;->BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method private static fillByFile(Landroid/content/ContentValues;Ljava/io/File;)V
    .locals 6
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 68
    const-string v0, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "title"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "date_modified"

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string v0, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    return-void
.end method

.method private static fillByImage(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 4
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 75
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 76
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 77
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 78
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_0

    .line 79
    const-string/jumbo v2, "width"

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v2, "height"

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    :goto_0
    return v1

    .line 83
    :cond_0
    const-string v1, "MediaStoreUtils"

    const-string v2, "decode image bounds failed"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static fillByJpeg(Landroid/content/ContentValues;Ljava/io/File;)V
    .locals 10
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const-wide/16 v8, -0x1

    .line 89
    const-string v3, "mime_type"

    const-string v6, "image/jpeg"

    invoke-virtual {p0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :try_start_0
    new-instance v1, Landroid/support/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .local v1, "exif":Landroid/support/media/ExifInterface;
    invoke-virtual {v1}, Landroid/support/media/ExifInterface;->getLatLong()[D

    move-result-object v2

    .line 99
    .local v2, "latLong":[D
    if-eqz v2, :cond_0

    .line 100
    const-string v3, "latitude"

    const/4 v6, 0x0

    aget-wide v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 101
    const-string v3, "longitude"

    const/4 v6, 0x1

    aget-wide v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 105
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 106
    .local v4, "time":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 107
    const-string v3, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    :cond_1
    :goto_0
    const-string v3, "orientation"

    invoke-static {v1}, Lcom/miui/gallery/util/ExifUtil;->getRotationDegrees(Landroid/support/media/ExifInterface;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    .end local v1    # "exif":Landroid/support/media/ExifInterface;
    .end local v2    # "latLong":[D
    .end local v4    # "time":J
    :goto_1
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "MediaStoreUtils"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "exif":Landroid/support/media/ExifInterface;
    .restart local v2    # "latLong":[D
    .restart local v4    # "time":J
    :cond_2
    invoke-virtual {v1}, Landroid/support/media/ExifInterface;->getDateTime()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3

    .line 109
    const-string v3, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v1}, Landroid/support/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    .line 111
    const-string v3, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static fillByMp4(Landroid/content/ContentValues;Ljava/io/File;)V
    .locals 4
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 118
    const-string v0, "mime_type"

    const-string/jumbo v1, "video/mp4"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "duration"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/MediaStoreUtils;->getVideoDuration(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    return-void
.end method

.method private static getBucketIds()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 271
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 272
    .local v2, "context":Landroid/content/Context;
    const-string v5, "DCIM/Camera"

    invoke-static {v2, v5}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "bucketPaths":[Ljava/lang/String;
    array-length v4, v1

    .line 274
    .local v4, "length":I
    if-nez v4, :cond_1

    .line 275
    const/4 v0, 0x0

    .line 281
    :cond_0
    return-object v0

    .line 277
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    .line 278
    .local v0, "bucketIds":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 279
    aget-object v5, v1, v3

    invoke-static {v5}, Lcom/miui/gallery/util/FileUtils;->getBucketID(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getFileMediaUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 247
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-object v4

    .line 250
    :cond_0
    const-string v0, "%s=\'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "_data"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/util/MediaStoreUtils;->BASE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/util/MediaStoreUtils;->PROJECTION:[Ljava/lang/String;

    new-instance v6, Lcom/miui/gallery/util/MediaStoreUtils$4;

    invoke-direct {v6}, Lcom/miui/gallery/util/MediaStoreUtils$4;-><init>()V

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v4, v0

    goto :goto_0
.end method

.method public static getLastMediaUri()Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-static {}, Lcom/miui/gallery/util/MediaStoreUtils;->getBucketIds()[Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "bucketIds":[Ljava/lang/String;
    if-nez v7, :cond_0

    .line 221
    :goto_0
    return-object v4

    .line 219
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/MediaStoreUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v5, "1"

    invoke-virtual {v0, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 220
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "bucket_id in (%s) AND media_type in (1,3) AND _size > 0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ","

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/util/MediaStoreUtils;->PROJECTION:[Ljava/lang/String;

    const-string v5, "datetaken DESC, _id DESC"

    new-instance v6, Lcom/miui/gallery/util/MediaStoreUtils$3;

    invoke-direct {v6}, Lcom/miui/gallery/util/MediaStoreUtils$3;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v4, v0

    goto :goto_0
.end method

.method public static getMediaFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mediaUri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v3

    .line 158
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 159
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v0

    .line 163
    .local v2, "projection":[Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Lcom/miui/gallery/util/MediaStoreUtils$1;

    invoke-direct {v6}, Lcom/miui/gallery/util/MediaStoreUtils$1;-><init>()V

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "path":Ljava/lang/String;
    move-object v3, v7

    .line 173
    goto :goto_0
.end method

.method public static getMediaStoreId(Ljava/lang/String;)J
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    .line 177
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-wide v8

    .line 180
    :cond_0
    const-string v0, "%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "_data"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/util/MediaStoreUtils;->BASE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/util/MediaStoreUtils;->PROJECTION:[Ljava/lang/String;

    new-instance v6, Lcom/miui/gallery/util/MediaStoreUtils$2;

    invoke-direct {v6}, Lcom/miui/gallery/util/MediaStoreUtils$2;-><init>()V

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 192
    .local v7, "ret":Ljava/lang/Long;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    move-wide v8, v0

    goto :goto_0

    :cond_1
    move-wide v0, v8

    goto :goto_1
.end method

.method public static getMineTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-object v1

    .line 142
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "path":Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 144
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    :cond_2
    const-string v1, "image"

    goto :goto_0

    .line 147
    :cond_3
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 148
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    :cond_4
    const-string/jumbo v1, "video"

    goto :goto_0
.end method

.method private static getVideoDuration(Ljava/lang/String;)J
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 125
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 126
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 133
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 135
    :goto_0
    return-wide v2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "MediaStoreUtils"

    const-string v3, "IllegalArgumentException when getDuration()"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 135
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "MediaStoreUtils"

    const-string v3, "RuntimeException when getDuration()"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2
.end method

.method public static insert(Landroid/content/Context;Ljava/io/File;I)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    :goto_0
    return-object v1

    .line 43
    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 44
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {v0, p1}, Lcom/miui/gallery/util/MediaStoreUtils;->fillByFile(Landroid/content/ContentValues;Ljava/io/File;)V

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/util/MediaStoreUtils;->fillByImage(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-static {v0, p1}, Lcom/miui/gallery/util/MediaStoreUtils;->fillByJpeg(Landroid/content/ContentValues;Ljava/io/File;)V

    .line 48
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/miui/gallery/util/MediaStoreUtils;->submit(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_1
    const-string v2, "MediaStoreUtils"

    const-string v3, "fill image bounds failed, skip"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .restart local v0    # "values":Landroid/content/ContentValues;
    invoke-static {v0, p1}, Lcom/miui/gallery/util/MediaStoreUtils;->fillByFile(Landroid/content/ContentValues;Ljava/io/File;)V

    .line 56
    invoke-static {v0, p1}, Lcom/miui/gallery/util/MediaStoreUtils;->fillByMp4(Landroid/content/ContentValues;Ljava/io/File;)V

    .line 57
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/miui/gallery/util/MediaStoreUtils;->submit(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 59
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "not support type"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static insert(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s is not a valid path"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/miui/gallery/util/MediaStoreUtils;->insert(Landroid/content/Context;Ljava/io/File;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static submit(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/SafeDBUtil;->safeInsert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static submitUpdate(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "baseUri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, v1, v1}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public static update(Landroid/net/Uri;)V
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 290
    const-string v3, "MediaStoreUtils"

    const-string/jumbo v4, "update uri is null"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/MediaStoreUtils;->getMediaFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 295
    const-string v3, "MediaStoreUtils"

    const-string v4, "getMediaFilePath is null"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 300
    const-string v3, "MediaStoreUtils"

    const-string/jumbo v4, "update file not exist"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 304
    .local v2, "values":Landroid/content/ContentValues;
    invoke-static {v2, v0}, Lcom/miui/gallery/util/MediaStoreUtils;->fillByFile(Landroid/content/ContentValues;Ljava/io/File;)V

    .line 305
    invoke-static {v2, v1}, Lcom/miui/gallery/util/MediaStoreUtils;->fillByImage(Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 306
    invoke-static {p0, v2}, Lcom/miui/gallery/util/MediaStoreUtils;->submitUpdate(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method
