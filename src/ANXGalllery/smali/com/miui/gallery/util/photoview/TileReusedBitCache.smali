.class public Lcom/miui/gallery/util/photoview/TileReusedBitCache;
.super Lcom/miui/gallery/util/ReusedBitmapCache;
.source "TileReusedBitCache.java"


# static fields
.field private static sInstance:Lcom/miui/gallery/util/photoview/TileReusedBitCache;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/gallery/util/ReusedBitmapCache;-><init>()V

    .line 14
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/util/photoview/TileReusedBitCache;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/miui/gallery/util/photoview/TileReusedBitCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->sInstance:Lcom/miui/gallery/util/photoview/TileReusedBitCache;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/miui/gallery/util/photoview/TileReusedBitCache;

    invoke-direct {v0}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->sInstance:Lcom/miui/gallery/util/photoview/TileReusedBitCache;

    .line 20
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->sInstance:Lcom/miui/gallery/util/photoview/TileReusedBitCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 25
    invoke-virtual {p0}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->isSupportBytesCount()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 29
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0, v6}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->convertToPowerOf2(I)I

    move-result v1

    .line 30
    .local v1, "convertSampleSize":I
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v3, v6, v1

    .line 31
    .local v3, "width":I
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v6, v1

    .line 32
    .local v2, "height":I
    mul-int v6, v3, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v7

    mul-int v0, v6, v7

    .line 34
    .local v0, "byteCount":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    if-ne v0, v6, :cond_1

    .line 40
    .end local v0    # "byteCount":I
    .end local v1    # "convertSampleSize":I
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_0
    :goto_0
    return v4

    .restart local v0    # "byteCount":I
    .restart local v1    # "convertSampleSize":I
    .restart local v2    # "height":I
    .restart local v3    # "width":I
    :cond_1
    move v4, v5

    .line 35
    goto :goto_0

    .line 39
    .end local v0    # "byteCount":I
    .end local v1    # "convertSampleSize":I
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v6, v7, :cond_3

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v6, v7, :cond_3

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eq v6, v4, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method protected getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/miui/gallery/Config$TileConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method protected getMaxCount()I
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/miui/gallery/Config$TileConfig;->getMaxCacheCount()I

    move-result v0

    return v0
.end method

.method protected needMutable()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected needRecycle()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
