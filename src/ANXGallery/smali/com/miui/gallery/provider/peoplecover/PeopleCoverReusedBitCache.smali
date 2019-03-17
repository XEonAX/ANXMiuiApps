.class public Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;
.super Lcom/miui/gallery/util/ReusedBitmapCache;
.source "PeopleCoverReusedBitCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/gallery/util/ReusedBitmapCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;->isSupportBytesCount()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 17
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0, v4}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;->convertToPowerOf2(I)I

    move-result v1

    .line 18
    .local v1, "convertSampleSize":I
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v3, v4, v1

    .line 19
    .local v3, "width":I
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v4, v1

    .line 20
    .local v2, "height":I
    mul-int v4, v3, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v5

    mul-int v0, v4, v5

    .line 21
    .local v0, "byteCount":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lt v4, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lt v4, v2, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v4

    if-gt v0, v4, :cond_0

    const/4 v4, 0x1

    .line 24
    .end local v0    # "byteCount":I
    .end local v1    # "convertSampleSize":I
    .end local v2    # "height":I
    .end local v3    # "width":I
    :goto_0
    return v4

    .line 22
    .restart local v0    # "byteCount":I
    .restart local v1    # "convertSampleSize":I
    .restart local v2    # "height":I
    .restart local v3    # "width":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 24
    .end local v0    # "byteCount":I
    .end local v1    # "convertSampleSize":I
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/util/ReusedBitmapCache;->canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    goto :goto_0
.end method

.method protected getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method protected getMaxCount()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x3

    return v0
.end method

.method protected needMutable()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected needRecycle()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
