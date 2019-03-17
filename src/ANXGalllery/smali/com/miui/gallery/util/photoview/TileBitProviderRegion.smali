.class public Lcom/miui/gallery/util/photoview/TileBitProviderRegion;
.super Ljava/lang/Object;
.source "TileBitProviderRegion.java"

# interfaces
.implements Lcom/miui/gallery/util/photoview/TileBitProvider;


# instance fields
.field private mImageHeight:I

.field private mImageWidth:I

.field private mIsFlip:Z

.field private mLock:Ljava/lang/Object;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mRotation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "secretKey"    # [B

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mLock:Ljava/lang/Object;

    .line 24
    invoke-static {p1, v2, p2}, Lcom/miui/gallery/util/BitmapUtils;->safeCreateBitmapRegionDecoder(Ljava/lang/String;Z[B)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 25
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-static {v1}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/BitmapRegionDecoder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mImageWidth:I

    .line 27
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mImageHeight:I

    .line 28
    invoke-static {p1, p2}, Lcom/miui/gallery/util/ExifUtil;->parseRotationInfo(Ljava/lang/String;[B)Lcom/miui/gallery/util/ExifUtil$ExifInfo;

    move-result-object v0

    .line 29
    .local v0, "info":Lcom/miui/gallery/util/ExifUtil$ExifInfo;
    if-nez v0, :cond_1

    .line 30
    iput v2, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRotation:I

    .line 31
    iput-boolean v2, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mIsFlip:Z

    .line 37
    .end local v0    # "info":Lcom/miui/gallery/util/ExifUtil$ExifInfo;
    :cond_0
    :goto_0
    const-string v1, "TileBitProviderRegion"

    const-string v2, "create"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void

    .line 33
    .restart local v0    # "info":Lcom/miui/gallery/util/ExifUtil$ExifInfo;
    :cond_1
    iget v1, v0, Lcom/miui/gallery/util/ExifUtil$ExifInfo;->rotation:I

    iput v1, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRotation:I

    .line 34
    iget-boolean v1, v0, Lcom/miui/gallery/util/ExifUtil$ExifInfo;->flip:Z

    iput-boolean v1, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mIsFlip:Z

    goto :goto_0
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mImageWidth:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRotation:I

    return v0
.end method

.method public getTileBit(Landroid/graphics/Rect;I)Lcom/miui/gallery/util/photoview/TileBit;
    .locals 9
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "sampleSize"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 53
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v3

    .line 56
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v4, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mImageWidth:I

    iget v5, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mImageHeight:I

    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 58
    .local v1, "intersect":Landroid/graphics/Rect;
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/miui/gallery/Config$TileConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 62
    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 63
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 64
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 65
    invoke-static {}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->getInstance()Lcom/miui/gallery/util/photoview/TileReusedBitCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->get(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 68
    :try_start_0
    iget-object v5, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-static {v5}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/BitmapRegionDecoder;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    iget-object v5, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-static {v5, v1, v2}, Lcom/miui/gallery/util/BitmapUtils;->safeDecodeRegion(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-nez v0, :cond_3

    .line 74
    iget-object v4, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 75
    :try_start_1
    iget-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 76
    const-string v5, "TileBitProviderRegion"

    const-string v6, "fail in decoding region use inBitmap [width %d, height %d]"

    iget-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    iget-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 79
    iget-object v5, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-static {v5, v1, v2}, Lcom/miui/gallery/util/BitmapUtils;->safeDecodeRegion(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :cond_3
    invoke-static {v0}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    new-instance v3, Lcom/miui/gallery/util/photoview/TileBit;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, p2

    invoke-direct {v3, v0, v4, v5}, Lcom/miui/gallery/util/photoview/TileBit;-><init>(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 71
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 81
    :cond_4
    :try_start_3
    const-string v5, "TileBitProviderRegion"

    const-string v6, "fail in decoding region %s"

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 83
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public isFlip()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mIsFlip:Z

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-static {v0}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/BitmapRegionDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 46
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 47
    const-string v0, "TileBitProviderRegion"

    const-string v2, "release"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
