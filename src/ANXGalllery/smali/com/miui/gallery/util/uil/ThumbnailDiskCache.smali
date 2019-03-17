.class public Lcom/miui/gallery/util/uil/ThumbnailDiskCache;
.super Ljava/lang/Object;
.source "ThumbnailDiskCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/disc/DiskCache;


# instance fields
.field private mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;

.field private mBlobLock:Ljava/lang/Object;

.field private final mCacheDir:Ljava/io/File;

.field private final mCacheMaxSize:I

.field private final mMaxEntries:I


# direct methods
.method public constructor <init>(Ljava/io/File;II)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxEntries"    # I
    .param p3, "cacheMaxSize"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mBlobLock:Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mCacheDir:Ljava/io/File;

    .line 31
    iput p2, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mMaxEntries:I

    .line 32
    div-int/lit8 v0, p3, 0x4

    iput v0, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mCacheMaxSize:I

    .line 33
    iget v0, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mCacheMaxSize:I

    sub-int v0, p3, v0

    invoke-static {p1, p2, v0}, Lcom/miui/gallery/util/uil/MicroThumbCache;->init(Ljava/io/File;II)V

    .line 34
    return-void
.end method

.method private declared-synchronized ensureInitialized()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    monitor-exit p0

    return-void

    .line 41
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 42
    .local v8, "start":J
    iget-object v0, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mCacheDir:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mCacheDir:Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/io/File;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :cond_1
    :try_start_2
    new-instance v0, Lcom/miui/gallery/util/uil/BlobCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "thumbnail_blob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mMaxEntries:I

    iget v3, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mCacheMaxSize:I

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/uil/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    iput-object v0, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :try_start_3
    const-string v0, "ThumbnailDiskCache"

    const-string v1, "init cost %s"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 37
    .end local v8    # "start":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 48
    .restart local v8    # "start":J
    :catch_0
    move-exception v6

    .line 49
    .local v6, "e":Ljava/io/IOException;
    :try_start_4
    const-string v0, "ThumbnailDiskCache"

    const-string v1, "cache creation failed, use dummy"

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "get File: Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateThumbnailKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "thumbnailKey":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    .line 109
    .local v6, "start":J
    const/4 v1, 0x0

    .line 110
    .local v1, "data":[B
    const/4 v0, 0x0

    .line 111
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mBlobLock:Ljava/lang/Object;

    monitor-enter v9

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->ensureInitialized()V

    .line 114
    iget-object v8, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->crc64Long([B)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/miui/gallery/util/uil/BlobCache;->lookup(J)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 118
    :goto_0
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    if-eqz v1, :cond_0

    .line 120
    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    sub-long v2, v8, v6

    .line 123
    .local v2, "cost":J
    if-eqz v0, :cond_1

    .line 125
    const/4 v8, 0x1

    invoke-static {v8, v2, v3}, Lcom/miui/gallery/util/uil/LoadMonitor;->record(IJ)V

    .line 127
    :cond_1
    return-object v0

    .line 115
    .end local v2    # "cost":J
    :catch_0
    move-exception v4

    .line 116
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 8
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->ensureInitialized()V

    .line 63
    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateThumbnailKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "thumbnailKey":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 68
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 69
    iget-object v4, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mBlobLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    const-string v3, "ThumbnailDiskCache"

    const-string v5, "Save data size %d"

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object v3, p0, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->crc64Long([B)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v1}, Lcom/miui/gallery/util/uil/BlobCache;->insert(J[B)V

    .line 72
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 77
    invoke-static {}, Lcom/miui/gallery/util/uil/MicroThumbCache;->getInstance()Lcom/miui/gallery/util/uil/MicroThumbCache;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/util/uil/MicroThumbCache;->save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v3

    return v3

    .line 72
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    .end local v1    # "data":[B
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v3
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "imageStream"    # Ljava/io/InputStream;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "save: Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
