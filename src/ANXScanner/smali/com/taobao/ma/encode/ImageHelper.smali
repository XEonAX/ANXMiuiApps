.class public Lcom/taobao/ma/encode/ImageHelper;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 67
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPixelData(Landroid/graphics/Bitmap;III)[B
    .locals 18
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "numChannelForPixel"    # I

    .prologue
    .line 41
    mul-int v16, p1, p2

    .line 43
    .local v16, "size":I
    mul-int v1, p3, v16

    new-array v14, v1, [B

    .line 44
    .local v14, "pixelData":[B
    move/from16 v0, v16

    new-array v2, v0, [I

    .line 45
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 47
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    .line 48
    aget v17, v2, v12

    .line 49
    .local v17, "value":I
    shr-int/lit8 v1, v17, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v9, v1

    .line 50
    .local v9, "a":B
    shr-int/lit8 v1, v17, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v15, v1

    .line 51
    .local v15, "r":B
    shr-int/lit8 v1, v17, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v11, v1

    .line 52
    .local v11, "g":B
    move/from16 v0, v17

    and-int/lit16 v1, v0, 0xff

    int-to-byte v10, v1

    .line 54
    .local v10, "b":B
    aput-byte v15, v14, v13

    .line 55
    add-int/lit8 v1, v13, 0x1

    aput-byte v11, v14, v1

    .line 56
    add-int/lit8 v1, v13, 0x2

    aput-byte v10, v14, v1

    .line 57
    const/4 v1, 0x4

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    .line 58
    add-int/lit8 v1, v13, 0x3

    aput-byte v9, v14, v1

    .line 47
    :cond_0
    add-int/lit8 v12, v12, 0x1

    add-int v13, v13, p3

    goto :goto_0

    .line 62
    .end local v9    # "a":B
    .end local v10    # "b":B
    .end local v11    # "g":B
    .end local v15    # "r":B
    .end local v17    # "value":I
    :cond_1
    return-object v14
.end method

.method public static getPixelDataRGB(Landroid/graphics/Bitmap;III)[B
    .locals 18
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "numChannelForPixel"    # I

    .prologue
    .line 14
    mul-int v16, p1, p2

    .line 16
    .local v16, "size":I
    mul-int/lit8 v1, v16, 0x3

    new-array v14, v1, [B

    .line 17
    .local v14, "pixelData":[B
    move/from16 v0, v16

    new-array v2, v0, [I

    .line 18
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 20
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_0

    .line 21
    aget v17, v2, v12

    .line 22
    .local v17, "value":I
    shr-int/lit8 v1, v17, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v9, v1

    .line 23
    .local v9, "a":B
    shr-int/lit8 v1, v17, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v15, v1

    .line 24
    .local v15, "r":B
    shr-int/lit8 v1, v17, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v11, v1

    .line 25
    .local v11, "g":B
    move/from16 v0, v17

    and-int/lit16 v1, v0, 0xff

    int-to-byte v10, v1

    .line 27
    .local v10, "b":B
    aput-byte v15, v14, v13

    .line 28
    add-int/lit8 v1, v13, 0x1

    aput-byte v11, v14, v1

    .line 29
    add-int/lit8 v1, v13, 0x2

    aput-byte v10, v14, v1

    .line 20
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x3

    goto :goto_0

    .line 35
    .end local v9    # "a":B
    .end local v10    # "b":B
    .end local v11    # "g":B
    .end local v15    # "r":B
    .end local v17    # "value":I
    :cond_0
    return-object v14
.end method
