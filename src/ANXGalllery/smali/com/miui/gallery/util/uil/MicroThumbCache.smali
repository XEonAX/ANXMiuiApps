.class public Lcom/miui/gallery/util/uil/MicroThumbCache;
.super Ljava/lang/Object;
.source "MicroThumbCache.java"


# static fields
.field private static final MICRO_THUMBNAIL_SIZE:I

.field private static final THUMB_CONFIG_ORDINAL:I

.field private static sCache:Lcom/miui/gallery/util/uil/MicroThumbCache;


# instance fields
.field private mBitmapPool:Lmiui/util/Pools$SoftReferencePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$SoftReferencePool",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;

.field private mBlobLock:Ljava/lang/Object;

.field private final mCacheDir:Ljava/io/File;

.field private final mCacheMaxSize:I

.field private mLookupRequestPool:Lmiui/util/Pools$SoftReferencePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$SoftReferencePool",
            "<",
            "Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    sput v0, Lcom/miui/gallery/util/uil/MicroThumbCache;->MICRO_THUMBNAIL_SIZE:I

    .line 32
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->getThumbConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v0

    sput v0, Lcom/miui/gallery/util/uil/MicroThumbCache;->THUMB_CONFIG_ORDINAL:I

    return-void
.end method

.method private constructor <init>(Ljava/io/File;II)V
    .locals 3
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxEntries"    # I
    .param p3, "cacheMaxSize"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mBlobLock:Ljava/lang/Object;

    .line 41
    const-string v0, "MicroThumbCache"

    const-string v1, "MicroThumbCache cache size %d"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mCacheDir:Ljava/io/File;

    .line 43
    iput p2, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mMaxEntries:I

    .line 44
    iput p3, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mCacheMaxSize:I

    .line 45
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/miui/gallery/util/uil/MicroThumbCache;->MICRO_THUMBNAIL_SIZE:I

    return v0
.end method

.method private declared-synchronized ensureInitialized()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 57
    .local v8, "start":J
    iget-object v0, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mCacheDir:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mCacheDir:Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/io/File;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :cond_1
    :try_start_2
    new-instance v0, Lcom/miui/gallery/util/uil/BlobCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "micro_thumbnail_blob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mMaxEntries:I

    iget v3, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mCacheMaxSize:I

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/uil/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    iput-object v0, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :try_start_3
    new-instance v0, Lcom/miui/gallery/util/uil/MicroThumbCache$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/uil/MicroThumbCache$1;-><init>(Lcom/miui/gallery/util/uil/MicroThumbCache;)V

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mLookupRequestPool:Lmiui/util/Pools$SoftReferencePool;

    .line 75
    new-instance v0, Lcom/miui/gallery/util/uil/MicroThumbCache$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/uil/MicroThumbCache$2;-><init>(Lcom/miui/gallery/util/uil/MicroThumbCache;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mBitmapPool:Lmiui/util/Pools$SoftReferencePool;

    .line 82
    const-string v0, "MicroThumbCache"

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

    .line 52
    .end local v8    # "start":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    .restart local v8    # "start":J
    :catch_0
    move-exception v6

    .line 65
    .local v6, "e":Ljava/io/IOException;
    :try_start_4
    const-string v0, "MicroThumbCache"

    const-string v1, "cache creation failed, use dummy"

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static getInstance()Lcom/miui/gallery/util/uil/MicroThumbCache;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/miui/gallery/util/uil/MicroThumbCache;->sCache:Lcom/miui/gallery/util/uil/MicroThumbCache;

    return-object v0
.end method

.method public static init(Ljava/io/File;II)V
    .locals 1
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "maxEntries"    # I
    .param p2, "cacheMaxSize"    # I

    .prologue
    .line 48
    new-instance v0, Lcom/miui/gallery/util/uil/MicroThumbCache;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/util/uil/MicroThumbCache;-><init>(Ljava/io/File;II)V

    sput-object v0, Lcom/miui/gallery/util/uil/MicroThumbCache;->sCache:Lcom/miui/gallery/util/uil/MicroThumbCache;

    .line 49
    return-void
.end method

.method private isCorrectConfig(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->getThumbConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCorrectSize(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget v1, Lcom/miui/gallery/util/uil/MicroThumbCache;->MICRO_THUMBNAIL_SIZE:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReusableBitmap(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 194
    if-nez p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v3

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 198
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 199
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 200
    .local v1, "height":I
    sget v4, Lcom/miui/gallery/util/uil/MicroThumbCache;->MICRO_THUMBNAIL_SIZE:I

    if-ne v2, v4, :cond_0

    if-ne v2, v1, :cond_0

    sget v4, Lcom/miui/gallery/util/uil/MicroThumbCache;->THUMB_CONFIG_ORDINAL:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCenterCropBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "memoryKey"    # Ljava/lang/String;
    .param p2, "reusedBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v13, 0x0

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    .line 139
    .local v8, "start":J
    const/4 v2, 0x0

    .line 141
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/util/uil/MicroThumbCache;->ensureInitialized()V

    .line 142
    iget-object v10, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mLookupRequestPool:Lmiui/util/Pools$SoftReferencePool;

    invoke-virtual {v10}, Lmiui/util/Pools$SoftReferencePool;->acquire()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;

    .line 143
    .local v7, "lookRequest":Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/util/MiscUtil;->crc64Long([B)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;->key:J

    .line 144
    const/4 v10, 0x0

    iput v10, v7, Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;->length:I

    .line 146
    iget-object v11, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mBlobLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :try_start_1
    iget-object v10, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;

    invoke-virtual {v10, v7}, Lcom/miui/gallery/util/uil/BlobCache;->lookup(Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :goto_0
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    :try_start_3
    iget v10, v7, Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;->length:I

    if-lez v10, :cond_0

    .line 155
    iget-object v10, v7, Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;->buffer:[B

    const/4 v11, 0x0

    iget v12, v7, Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;->length:I

    invoke-static {v10, v11, v12}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 156
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/miui/gallery/util/uil/MicroThumbCache;->isReusableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 157
    move-object/from16 v2, p2

    .line 161
    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 163
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v10, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mLookupRequestPool:Lmiui/util/Pools$SoftReferencePool;

    invoke-virtual {v10, v7}, Lmiui/util/Pools$SoftReferencePool;->release(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 167
    .end local v7    # "lookRequest":Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    sub-long v4, v10, v8

    .line 168
    .local v4, "cost":J
    if-eqz v2, :cond_1

    .line 170
    invoke-static {v13, v4, v5}, Lcom/miui/gallery/util/uil/LoadMonitor;->record(IJ)V

    .line 172
    :cond_1
    return-object v2

    .line 149
    .end local v4    # "cost":J
    .restart local v7    # "lookRequest":Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;
    :catch_0
    move-exception v6

    .line 150
    .local v6, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 164
    .end local v7    # "lookRequest":Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;
    :catch_1
    move-exception v6

    .line 165
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 159
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "lookRequest":Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;
    :cond_2
    :try_start_6
    iget-object v10, p0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mBitmapPool:Lmiui/util/Pools$SoftReferencePool;

    invoke-virtual {v10}, Lmiui/util/Pools$SoftReferencePool;->acquire()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 19
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/util/uil/MicroThumbCache;->ensureInitialized()V

    .line 87
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    const/4 v2, 0x0

    .line 134
    :goto_0
    return v2

    .line 90
    :cond_1
    const/16 v16, 0x0

    .line 91
    .local v16, "buffer":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 93
    .local v8, "target":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 94
    .local v5, "width":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 96
    .local v6, "height":I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 97
    .local v17, "minSize":I
    if-lez v17, :cond_5

    sget v2, Lcom/miui/gallery/util/uil/MicroThumbCache;->MICRO_THUMBNAIL_SIZE:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    .line 98
    sget v2, Lcom/miui/gallery/util/uil/MicroThumbCache;->MICRO_THUMBNAIL_SIZE:I

    int-to-float v2, v2

    move/from16 v0, v17

    int-to-float v3, v0

    div-float v18, v2, v3

    .line 99
    .local v18, "scale":F
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->getThumbConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/ReusedBitmapCache;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v2

    mul-int/2addr v2, v5

    mul-int/2addr v2, v6

    int-to-float v2, v2

    mul-float v2, v2, v18

    mul-float v2, v2, v18

    const/high16 v3, 0x4a000000    # 2097152.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 101
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    :cond_2
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 104
    .local v7, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 105
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .end local v8    # "target":Landroid/graphics/Bitmap;
    move-result-object v8

    .line 110
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v18    # "scale":F
    .restart local v8    # "target":Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/miui/gallery/util/uil/MicroThumbCache;->isCorrectSize(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 112
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 114
    sget v2, Lcom/miui/gallery/util/uil/MicroThumbCache;->MICRO_THUMBNAIL_SIZE:I

    sub-int v2, v5, v2

    div-int/lit8 v9, v2, 0x2

    .line 115
    .local v9, "x":I
    sget v2, Lcom/miui/gallery/util/uil/MicroThumbCache;->MICRO_THUMBNAIL_SIZE:I

    sub-int v2, v6, v2

    div-int/lit8 v10, v2, 0x2

    .line 116
    .local v10, "y":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/miui/gallery/util/uil/MicroThumbCache;->isCorrectConfig(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 117
    sget v2, Lcom/miui/gallery/util/uil/MicroThumbCache;->MICRO_THUMBNAIL_SIZE:I

    sget v3, Lcom/miui/gallery/util/uil/MicroThumbCache;->MICRO_THUMBNAIL_SIZE:I

    invoke-static {v8, v9, v10, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 122
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/miui/gallery/util/uil/MicroThumbCache;->isCorrectConfig(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 124
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 128
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_3
    if-eqz v16, :cond_4

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mBlobLock:Ljava/lang/Object;

    monitor-enter v3

    .line 130
    :try_start_0
    const-string v2, "MicroThumbCache"

    const-string v4, "save data size %d"

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2, v4, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/util/uil/MicroThumbCache;->mBlobCache:Lcom/miui/gallery/util/uil/BlobCache;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->crc64Long([B)J

    move-result-wide v12

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v12, v13, v4}, Lcom/miui/gallery/util/uil/BlobCache;->insert(J[B)V

    .line 132
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 107
    :cond_5
    move-object/from16 v8, p2

    goto :goto_1

    .line 119
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :cond_6
    const-string v2, "MicroThumbCache"

    const-string v3, "is not correct config %s, %s"

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    sget v11, Lcom/miui/gallery/util/uil/MicroThumbCache;->MICRO_THUMBNAIL_SIZE:I

    sget v12, Lcom/miui/gallery/util/uil/MicroThumbCache;->MICRO_THUMBNAIL_SIZE:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->getThumbConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    invoke-static/range {v8 .. v15}, Lcom/miui/gallery/util/BitmapUtils;->safeCreateBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;ZLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    .line 132
    .end local v9    # "x":I
    .end local v10    # "y":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
