.class public Lcom/miui/gallery/util/CropUtil;
.super Ljava/lang/Object;
.source "CropUtil.java"


# direct methods
.method public static circleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 151
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    .line 154
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 155
    .local v0, "targetSize":I
    invoke-static {p0, v0}, Lcom/miui/gallery/util/CropUtil;->circleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static circleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "targetSize"    # I

    .prologue
    const/4 v5, 0x0

    .line 159
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v4, v5

    .line 175
    :goto_0
    return-object v4

    .line 162
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v6}, Lcom/miui/gallery/util/BitmapUtils;->safeCreateBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 164
    .local v4, "target":Landroid/graphics/Bitmap;
    if-nez v4, :cond_2

    move-object v4, v5

    .line 165
    goto :goto_0

    .line 167
    :cond_2
    div-int/lit8 v3, p1, 0x2

    .line 168
    .local v3, "radius":I
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p0, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 170
    .local v0, "bitmapShader":Landroid/graphics/BitmapShader;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 171
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 172
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 174
    int-to-float v5, v3

    int-to-float v6, v3

    int-to-float v7, v3

    invoke-virtual {v1, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static cropImage(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "cropWidth"    # I
    .param p2, "cropHeight"    # I
    .param p3, "recycle"    # Z

    .prologue
    const/4 v3, 0x0

    .line 109
    if-nez p0, :cond_0

    .line 110
    const/4 v8, 0x0

    .line 147
    :goto_0
    return-object v8

    .line 112
    :cond_0
    const/4 v8, 0x0

    .line 114
    .local v8, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 115
    .local v11, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 117
    .local v9, "srcHeight":I
    if-eqz v9, :cond_1

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v4, "wrong dimension"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/miui/gallery/util/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 118
    int-to-float v2, v11

    int-to-float v3, v9

    div-float v10, v2, v3

    .line 119
    .local v10, "srcRatio":F
    int-to-float v2, p1

    int-to-float v3, p2

    div-float v6, v2, v3

    .line 121
    .local v6, "cropRatio":F
    const/4 v0, 0x0

    .line 122
    .local v0, "widthSmaller":Z
    const/4 v7, 0x0

    .line 123
    .local v7, "minSrcSize":I
    cmpg-float v2, v10, v6

    if-gez v2, :cond_2

    .line 124
    const/4 v0, 0x1

    .line 125
    move v7, v11

    .line 131
    :goto_2
    const/4 v1, 0x0

    .line 133
    .local v1, "scale":F
    if-eqz v0, :cond_3

    .line 134
    int-to-float v2, p1

    int-to-float v3, v7

    div-float v1, v2, v3

    .line 140
    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 141
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/CropUtil;->cropLargeBitmap(ZFLandroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0

    .end local v0    # "widthSmaller":Z
    .end local v1    # "scale":F
    .end local v6    # "cropRatio":F
    .end local v7    # "minSrcSize":I
    .end local v10    # "srcRatio":F
    :cond_1
    move v2, v3

    .line 117
    goto :goto_1

    .line 127
    .restart local v0    # "widthSmaller":Z
    .restart local v6    # "cropRatio":F
    .restart local v7    # "minSrcSize":I
    .restart local v10    # "srcRatio":F
    :cond_2
    const/4 v0, 0x0

    .line 128
    move v7, v9

    goto :goto_2

    .line 136
    .restart local v1    # "scale":F
    :cond_3
    int-to-float v2, p2

    int-to-float v3, v7

    div-float v1, v2, v3

    goto :goto_3

    :cond_4
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 144
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/CropUtil;->cropSmallBitmap(ZFLandroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0
.end method

.method private static cropLargeBitmap(ZFLandroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "widthSmaller"    # Z
    .param p1, "scale"    # F
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "cropWidth"    # I
    .param p4, "cropHeight"    # I
    .param p5, "recycle"    # Z

    .prologue
    const/4 v5, 0x0

    .line 62
    invoke-static {p2, p1, p5}, Lcom/miui/gallery/util/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 99
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p2

    .line 66
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    move-object v3, v0

    .line 68
    .local v3, "tmpBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 69
    .local v1, "realCropX":I
    const/4 v2, 0x0

    .line 71
    .local v2, "realCropY":I
    if-eqz p0, :cond_5

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt p4, v4, :cond_1

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, p4

    div-int/lit8 v2, v4, 0x2

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 75
    invoke-static {v0, v5, v2, v4, p4}, Lcom/miui/gallery/util/BitmapUtils;->safeCreateBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 87
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 88
    move-object v3, v0

    .line 91
    :cond_2
    if-eq v0, v3, :cond_3

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    :cond_3
    if-eq v3, p2, :cond_4

    if-eqz p5, :cond_4

    .line 96
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object p2, v3

    .line 99
    goto :goto_0

    .line 80
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt p3, v4, :cond_1

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, p3

    div-int/lit8 v1, v4, 0x2

    .line 82
    invoke-static {v0, v1, v5, p3, p4}, Lcom/miui/gallery/util/BitmapUtils;->safeCreateBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1
.end method

.method private static cropSmallBitmap(ZFLandroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "widthSmaller"    # Z
    .param p1, "scale"    # F
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "cropWidth"    # I
    .param p4, "cropHeight"    # I
    .param p5, "recyle"    # Z

    .prologue
    const/4 v7, 0x0

    .line 18
    move-object v5, p2

    .line 20
    .local v5, "tmpBitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 21
    .local v3, "realCropX":I
    const/4 v4, 0x0

    .line 24
    .local v4, "realCropY":I
    const/4 v0, 0x0

    .line 25
    .local v0, "fitScreenHeight":I
    const/4 v1, 0x0

    .line 26
    .local v1, "fitScreenWidth":I
    const/4 v2, 0x0

    .line 28
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    .line 30
    int-to-float v6, p4

    div-float/2addr v6, p1

    float-to-int v0, v6

    .line 31
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lt v6, v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lcom/miui/gallery/util/Utils;->assertTrue(Z)V

    .line 32
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v4, v6, 0x2

    .line 34
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 33
    invoke-static {p2, v7, v4, v6, v0}, Lcom/miui/gallery/util/BitmapUtils;->safeCreateBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 46
    :goto_1
    if-nez v5, :cond_3

    .line 47
    const/4 v6, 0x0

    .line 56
    :goto_2
    return-object v6

    :cond_0
    move v6, v7

    .line 31
    goto :goto_0

    .line 37
    :cond_1
    int-to-float v6, p3

    div-float/2addr v6, p1

    float-to-int v1, v6

    .line 39
    if-nez v1, :cond_2

    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    div-int/lit8 v3, v6, 0x2

    .line 43
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 42
    invoke-static {p2, v3, v7, v1, v6}, Lcom/miui/gallery/util/BitmapUtils;->safeCreateBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    .line 50
    :cond_3
    invoke-static {v5, p1, p5}, Lcom/miui/gallery/util/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 52
    if-eq v5, v2, :cond_4

    if-eq v5, p2, :cond_4

    .line 53
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object v6, v2

    .line 56
    goto :goto_2
.end method
