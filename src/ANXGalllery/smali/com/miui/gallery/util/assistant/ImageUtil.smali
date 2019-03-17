.class public Lcom/miui/gallery/util/assistant/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 14
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 15
    .local v0, "height":I
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 18
    .local v2, "width":I
    const/4 v1, 0x1

    .local v1, "inSampleSize":I
    :goto_0
    shr-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    shr-int/lit8 v0, v0, 0x1

    if-lt v0, p2, :cond_0

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return v1
.end method

.method public static getPixelsBGR(Landroid/graphics/Bitmap;)[B
    .locals 7
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 28
    .local v1, "bytes":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 33
    .local v4, "temp":[B
    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x3

    new-array v3, v5, [B

    .line 36
    .local v3, "pixels":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    if-ge v2, v5, :cond_0

    .line 37
    mul-int/lit8 v5, v2, 0x3

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, v4, v6

    aput-byte v6, v3, v5

    .line 38
    mul-int/lit8 v5, v2, 0x3

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v4, v6

    aput-byte v6, v3, v5

    .line 39
    mul-int/lit8 v5, v2, 0x3

    add-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v2, 0x4

    aget-byte v6, v4, v6

    aput-byte v6, v3, v5

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-object v3
.end method
