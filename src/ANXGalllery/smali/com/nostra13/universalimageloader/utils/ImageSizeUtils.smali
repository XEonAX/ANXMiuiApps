.class public final Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# static fields
.field private static maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field private static sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
    .locals 9
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "powerOf2Scale"    # Z

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v4

    .line 188
    .local v4, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    .line 189
    .local v3, "srcHeight":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v6

    .line 190
    .local v6, "targetWidth":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v5

    .line 192
    .local v5, "targetHeight":I
    const/4 v2, 0x1

    .line 194
    .local v2, "scale":I
    sget-object v7, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$nostra13$universalimageloader$core$assist$ViewScaleType:[I

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    const/4 v7, 0x1

    if-ge v2, v7, :cond_1

    .line 220
    const/4 v2, 0x1

    .line 222
    :cond_1
    invoke-static {v4, v3, v2, p3}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->considerMaxTextureSize(IIIZ)I

    move-result v2

    .line 224
    return v2

    .line 196
    :pswitch_0
    if-eqz p3, :cond_3

    .line 197
    div-int/lit8 v1, v4, 0x2

    .line 198
    .local v1, "halfWidth":I
    div-int/lit8 v0, v3, 0x2

    .line 199
    .local v0, "halfHeight":I
    :goto_1
    div-int v7, v1, v2

    if-gt v7, v6, :cond_2

    div-int v7, v0, v2

    if-le v7, v5, :cond_0

    .line 200
    :cond_2
    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 203
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_3
    div-int v7, v4, v6

    div-int v8, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 205
    goto :goto_0

    .line 207
    :pswitch_1
    if-eqz p3, :cond_4

    .line 208
    div-int/lit8 v1, v4, 0x2

    .line 209
    .restart local v1    # "halfWidth":I
    div-int/lit8 v0, v3, 0x2

    .line 210
    .restart local v0    # "halfHeight":I
    :goto_2
    div-int v7, v1, v2

    if-le v7, v6, :cond_0

    div-int v7, v0, v2

    if-le v7, v5, :cond_0

    .line 211
    mul-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 214
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_4
    div-int v7, v4, v6

    div-int v8, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
    .locals 11
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "stretch"    # Z

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 311
    .local v5, "srcLongEdge":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 312
    .local v6, "srcShortEdge":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 313
    .local v7, "targetLongEdge":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 315
    .local v8, "targetShortEdge":I
    int-to-float v9, v5

    int-to-float v10, v7

    div-float v2, v9, v10

    .line 316
    .local v2, "longEdgeScale":F
    int-to-float v9, v6

    int-to-float v10, v8

    div-float v4, v9, v10

    .line 320
    .local v4, "shortEdgeScale":F
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v9, :cond_0

    cmpl-float v9, v2, v4

    if-gez v9, :cond_1

    :cond_0
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v9, :cond_5

    cmpg-float v9, v2, v4

    if-gez v9, :cond_5

    .line 321
    :cond_1
    move v0, v7

    .line 322
    .local v0, "destLongEdge":I
    int-to-float v9, v6

    div-float/2addr v9, v2

    float-to-int v1, v9

    .line 328
    .local v1, "destShortEdge":I
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 329
    .local v3, "scale":F
    if-nez p3, :cond_2

    if-ge v0, v5, :cond_2

    if-lt v1, v6, :cond_3

    :cond_2
    if-eqz p3, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v1, v6, :cond_4

    .line 330
    :cond_3
    int-to-float v9, v0

    int-to-float v10, v5

    div-float v3, v9, v10

    .line 333
    :cond_4
    return v3

    .line 324
    .end local v0    # "destLongEdge":I
    .end local v1    # "destShortEdge":I
    .end local v3    # "scale":F
    :cond_5
    int-to-float v9, v5

    div-float/2addr v9, v4

    float-to-int v0, v9

    .line 325
    .restart local v0    # "destLongEdge":I
    move v1, v8

    .restart local v1    # "destShortEdge":I
    goto :goto_0
.end method

.method public static computeMinImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/Bitmap$Config;)I
    .locals 10
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v4

    .line 266
    .local v4, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    .line 267
    .local v3, "srcHeight":I
    invoke-static {}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getMaxBitmapSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    .line 268
    .local v1, "maxSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v6

    .line 269
    .local v6, "targetWidth":I
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v5

    .line 271
    .local v5, "targetHeight":I
    int-to-float v8, v4

    int-to-float v9, v6

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 272
    .local v7, "widthScale":I
    int-to-float v8, v3

    int-to-float v9, v5

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 274
    .local v0, "heightScale":I
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 275
    .local v2, "scale":I
    invoke-static {p0, v2, p1}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->considerCanvasMaxBitmapSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;ILandroid/graphics/Bitmap$Config;)I

    move-result v8

    return v8
.end method

.method private static considerCanvasMaxBitmapSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;ILandroid/graphics/Bitmap$Config;)I
    .locals 4
    .param p0, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "scale"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 242
    invoke-static {}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getMaxCanvasBitmapSize()I

    move-result v1

    .line 243
    .local v1, "maxBitmapSize":I
    if-lez v1, :cond_1

    .line 244
    if-eqz p2, :cond_0

    .end local p2    # "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {p2}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 245
    .local v0, "bytesPerPixel":I
    :goto_1
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v2

    div-int/2addr v2, p1

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    div-int/2addr v3, p1

    mul-int/2addr v2, v3

    mul-int/2addr v2, v0

    if-le v2, v1, :cond_1

    .line 246
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 244
    .end local v0    # "bytesPerPixel":I
    .restart local p2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 249
    .end local p2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_1
    return p1
.end method

.method private static considerMaxTextureSize(IIIZ)I
    .locals 4
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "scale"    # I
    .param p3, "powerOf2"    # Z

    .prologue
    .line 228
    invoke-static {}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getMaxBitmapSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    .line 229
    .local v1, "maxSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v2

    .line 230
    .local v2, "maxWidth":I
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    .line 231
    .local v0, "maxHeight":I
    :goto_0
    div-int v3, p0, p2

    if-gt v3, v2, :cond_0

    div-int v3, p1, p2

    if-le v3, v0, :cond_2

    .line 232
    :cond_0
    if-eqz p3, :cond_1

    .line 233
    mul-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 235
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 238
    :cond_2
    return p2
.end method

.method public static defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 3
    .param p0, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p1, "maxImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 149
    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWidth()I

    move-result v1

    .line 150
    .local v1, "width":I
    if-gtz v1, :cond_0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    .line 152
    :cond_0
    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getHeight()I

    move-result v0

    .line 153
    .local v0, "height":I
    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    .line 155
    :cond_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v2, v1, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v2
.end method

.method private static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .locals 3
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 337
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p0, v2, :cond_1

    .line 338
    const/4 v0, 0x4

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 339
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq p0, v2, :cond_0

    .line 341
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-eq p0, v2, :cond_0

    .line 343
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_2

    move v0, v1

    .line 344
    goto :goto_0

    :cond_2
    move v0, v1

    .line 346
    goto :goto_0
.end method

.method private static getMaxBitmapSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 6

    .prologue
    .line 118
    sget-object v2, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    if-nez v2, :cond_1

    .line 119
    sget-object v3, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 120
    :try_start_0
    sget-object v2, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    if-nez v2, :cond_0

    .line 121
    invoke-static {}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getMaxTextureSizeInternal()I

    move-result v1

    .line 122
    .local v1, "maxTextureSize":I
    const-string v2, "ImageSizeUtils"

    const-string v4, "maxTextureSize: %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const/16 v2, 0x800

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 125
    .local v0, "maxBitmapDimension":I
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 126
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v2, v0, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    sput-object v2, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 128
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_1
    sget-object v2, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    return-object v2

    .line 128
    .end local v0    # "maxBitmapDimension":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static getMaxCanvasBitmapSize()I
    .locals 3

    .prologue
    .line 134
    const/high16 v0, 0x6400000

    .line 135
    .local v0, "maxCanvasBitmapSize":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-gt v1, v2, :cond_0

    .line 136
    const/high16 v0, 0x6400000

    .line 140
    :cond_0
    return v0
.end method

.method public static getMaxTextureSize()I
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getMaxBitmapSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    return v0
.end method

.method private static getMaxTextureSizeInternal()I
    .locals 22

    .prologue
    .line 63
    const/4 v4, 0x1

    new-array v13, v4, [I

    .line 64
    .local v13, "maxSize":[I
    const/16 v4, 0xd33

    const/4 v6, 0x0

    invoke-static {v4, v13, v6}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 65
    const/4 v4, 0x0

    aget v4, v13, v4

    if-lez v4, :cond_0

    .line 66
    const-string v4, "ImageSizeUtils"

    const-string v6, "got GL_MAX_TEXTURE_SIZE without GLContext %d"

    const/4 v7, 0x0

    aget v7, v13, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const/4 v4, 0x0

    aget v4, v13, v4

    .line 114
    :goto_0
    return v4

    .line 69
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v4, v6, :cond_1

    .line 70
    const-string v4, "ImageSizeUtils"

    const-string v6, "call in main thread, skip"

    invoke-static {v4, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v4, 0x0

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 75
    .local v14, "start":J
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    .line 76
    .local v2, "dpy":Landroid/opengl/EGLDisplay;
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v18, v0

    .line 77
    .local v18, "vers":[I
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-static {v2, v0, v4, v1, v6}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 79
    const/16 v4, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 86
    .local v3, "configAttr":[I
    const/4 v4, 0x1

    new-array v5, v4, [Landroid/opengl/EGLConfig;

    .line 87
    .local v5, "configs":[Landroid/opengl/EGLConfig;
    const/4 v4, 0x1

    new-array v8, v4, [I

    .line 88
    .local v8, "numConfig":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 89
    const/4 v4, 0x0

    aget v4, v8, v4

    if-nez v4, :cond_2

    .line 90
    const-string v4, "ImageSizeUtils"

    const-string v6, "no config found"

    invoke-static {v4, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v4, 0x0

    goto :goto_0

    .line 93
    :cond_2
    const/4 v4, 0x0

    aget-object v10, v5, v4

    .line 94
    .local v10, "config":Landroid/opengl/EGLConfig;
    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    .line 99
    .local v17, "surfAttr":[I
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v10, v0, v4}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v16

    .line 100
    .local v16, "surf":Landroid/opengl/EGLSurface;
    const/4 v4, 0x3

    new-array v12, v4, [I

    fill-array-data v12, :array_2

    .line 104
    .local v12, "ctxAttrib":[I
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v6, 0x0

    invoke-static {v2, v10, v4, v12, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v11

    .line 105
    .local v11, "ctx":Landroid/opengl/EGLContext;
    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-static {v2, v0, v1, v11}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 106
    const/16 v4, 0xd33

    const/4 v6, 0x0

    invoke-static {v4, v13, v6}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 108
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v4, v6, v7}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 110
    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 111
    invoke-static {v2, v11}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 112
    invoke-static {v2}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 113
    const-string v4, "ImageSizeUtils"

    const-string v6, "get GL_MAX_TEXTURE_SIZE cost %s"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const/4 v4, 0x0

    aget v4, v13, v4

    goto/16 :goto_0

    .line 79
    :array_0
    .array-data 4
        0x303f
        0x308e
        0x3029
        0x0
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    .line 94
    :array_1
    .array-data 4
        0x3057
        0x40
        0x3056
        0x40
        0x3038
    .end array-data

    .line 100
    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method
