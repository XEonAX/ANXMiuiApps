.class public Lcom/miui/gallery/editor/photo/app/crop/AutoCropUtils;
.super Ljava/lang/Object;
.source "AutoCropUtils.java"


# direct methods
.method public static getAutoCropData(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;)V
    .locals 8
    .param p0, "origin"    # Landroid/graphics/Bitmap;
    .param p1, "autoCropData"    # Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;

    .prologue
    const/4 v5, 0x1

    .line 34
    const-string v3, "AutoCropUtils"

    const-string v4, "autoCrop start"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/gallery/editor/photo/app/crop/AutoCropJni;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 36
    :cond_0
    const/4 v3, -0x1

    iput v3, p1, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;->rotationResult:I

    .line 51
    :goto_0
    return-void

    .line 39
    :cond_1
    const/16 v1, 0x280

    .line 40
    .local v1, "maxSize":I
    move-object v2, p0

    .line 41
    .local v2, "resizeBitmap":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_2

    .line 42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 43
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {p0, v1, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 48
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/crop/AutoCropUtils;->getGrayBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 49
    .local v0, "data":[B
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v0, v3, v4, p1}, Lcom/miui/gallery/editor/photo/app/crop/AutoCropJni;->autoRotation([BIILcom/miui/gallery/editor/photo/app/crop/AutoCropData;)I

    move-result v3

    iput v3, p1, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;->rotationResult:I

    .line 50
    const-string v3, "AutoCropUtils"

    const-string v4, "autoCrop result: %f: %d"

    iget-wide v6, p1, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;->angle:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget v6, p1, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;->rotationResult:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    .end local v0    # "data":[B
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {p0, v3, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1
.end method

.method private static getGrayBytes(Landroid/graphics/Bitmap;)[B
    .locals 22
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 13
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 14
    .local v9, "height":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 15
    .local v3, "pix":[I
    mul-int v2, v5, v9

    new-array v15, v2, [B

    .line 16
    .local v15, "re":[B
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 18
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v9, :cond_1

    .line 19
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    if-ge v14, v5, :cond_0

    .line 20
    mul-int v2, v5, v13

    add-int/2addr v2, v14

    aget v11, v3, v2

    .line 21
    .local v11, "color":I
    const/high16 v2, 0xff0000

    and-int/2addr v2, v11

    shr-int/lit8 v16, v2, 0x10

    .line 22
    .local v16, "red":I
    const v2, 0xff00

    and-int/2addr v2, v11

    shr-int/lit8 v12, v2, 0x8

    .line 23
    .local v12, "green":I
    and-int/lit16 v10, v11, 0xff

    .line 26
    .local v10, "blue":I
    move/from16 v0, v16

    int-to-float v2, v0

    float-to-double v6, v2

    const-wide v18, 0x3fd3333333333333L    # 0.3

    mul-double v6, v6, v18

    int-to-float v2, v12

    float-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe2e147ae147ae1L    # 0.59

    mul-double v18, v18, v20

    add-double v6, v6, v18

    int-to-float v2, v10

    float-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double v18, v18, v20

    add-double v6, v6, v18

    double-to-int v11, v6

    .line 27
    mul-int v2, v5, v13

    add-int/2addr v2, v14

    int-to-byte v4, v11

    aput-byte v4, v15, v2

    .line 19
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 18
    .end local v10    # "blue":I
    .end local v11    # "color":I
    .end local v12    # "green":I
    .end local v16    # "red":I
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 30
    .end local v14    # "j":I
    :cond_1
    return-object v15
.end method
