.class public Lcom/miui/gallery/util/uil/PhotoBytesCache;
.super Ljava/lang/Object;
.source "PhotoBytesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/uil/PhotoBytesCache$Singleton;
    }
.end annotation


# instance fields
.field private mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;

.field private mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/io/File;II)V
    .locals 7
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxEntries"    # I
    .param p3, "cacheMaxSize"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/uil/PhotoBytesCache;->mLock:Ljava/lang/Object;

    .line 29
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/io/File;Z)Z

    .line 33
    :cond_0
    new-instance v0, Lcom/miui/gallery/util/uil/BlobCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "photo_blob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x4

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/uil/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    iput-object v0, p0, Lcom/miui/gallery/util/uil/PhotoBytesCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v6

    .line 36
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "PhotoBytesCache"

    invoke-static {v0, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    invoke-direct {p0, v6, p1}, Lcom/miui/gallery/util/uil/PhotoBytesCache;->recordInitError(Ljava/lang/Exception;Ljava/io/File;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/io/File;IILcom/miui/gallery/util/uil/PhotoBytesCache$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/File;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/miui/gallery/util/uil/PhotoBytesCache$1;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/util/uil/PhotoBytesCache;-><init>(Ljava/io/File;II)V

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/util/uil/PhotoBytesCache;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/miui/gallery/util/uil/PhotoBytesCache$Singleton;->access$100()Lcom/miui/gallery/util/uil/PhotoBytesCache;

    move-result-object v0

    return-object v0
.end method

.method private recordInitError(Ljava/lang/Exception;Ljava/io/File;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 42
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v0

    .line 43
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "cacheDir"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "exception"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "pager_decode_bitmap"

    const-string v2, "pager_photo_cache_init_error"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getData(Ljava/lang/String;)[B
    .locals 10
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "data":[B
    iget-object v5, p0, Lcom/miui/gallery/util/uil/PhotoBytesCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 67
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/util/uil/PhotoBytesCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;

    if-eqz v4, :cond_0

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 69
    .local v2, "start":J
    iget-object v4, p0, Lcom/miui/gallery/util/uil/PhotoBytesCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->crc64Long([B)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/miui/gallery/util/uil/BlobCache;->lookup(J)[B

    move-result-object v0

    .line 70
    const-string v4, "PhotoBytesCache"

    const-string v6, "getData [%s] cost %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v6, p1, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v2    # "start":J
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v5

    .line 76
    return-object v0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public putData(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 49
    iget-object v2, p0, Lcom/miui/gallery/util/uil/PhotoBytesCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/util/uil/PhotoBytesCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 52
    :try_start_1
    const-string v1, "PhotoBytesCache"

    const-string v3, "Save data size %d"

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    iget-object v1, p0, Lcom/miui/gallery/util/uil/PhotoBytesCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->crc64Long([B)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, p2}, Lcom/miui/gallery/util/uil/BlobCache;->insert(J[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :cond_0
    const/4 v1, 0x1

    :try_start_2
    monitor-exit v2

    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PhotoBytesCache"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
