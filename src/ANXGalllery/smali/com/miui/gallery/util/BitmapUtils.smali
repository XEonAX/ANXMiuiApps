.class public Lcom/miui/gallery/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/BitmapUtils$BitmapDimension;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final REGION_DECODER_SUPPORTED_MIMETYPES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/miui/gallery/util/BitmapUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/gallery/util/BitmapUtils;->$assertionsDisabled:Z

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/BitmapUtils;->REGION_DECODER_SUPPORTED_MIMETYPES:Ljava/util/HashSet;

    .line 53
    sget-object v0, Lcom/miui/gallery/util/BitmapUtils;->REGION_DECODER_SUPPORTED_MIMETYPES:Ljava/util/HashSet;

    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/miui/gallery/util/BitmapUtils;->REGION_DECODER_SUPPORTED_MIMETYPES:Ljava/util/HashSet;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/miui/gallery/util/BitmapUtils;->REGION_DECODER_SUPPORTED_MIMETYPES:Ljava/util/HashSet;

    const-string v1, "image/jpg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;I)[B
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # I

    .prologue
    .line 652
    invoke-static {p0}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    const/4 v1, 0x0

    .line 657
    :goto_0
    return-object v1

    .line 655
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 656
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 657
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static computeThumbNailSampleSize(IIII)I
    .locals 4
    .param p0, "bitmapWidth"    # I
    .param p1, "bitmapHeight"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    .line 151
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/util/BitmapUtils;->computeThumbNailScaleSize(IIII)F

    move-result v1

    .line 152
    .local v1, "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 153
    .local v0, "sampleSize":I
    invoke-static {v0}, Lcom/miui/gallery/util/BitmapUtils;->reviseSampleSize(I)I

    move-result v2

    return v2
.end method

.method public static computeThumbNailScaleSize(IIII)F
    .locals 8
    .param p0, "bitmapWidth"    # I
    .param p1, "bitmapHeight"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 133
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 134
    .local v2, "minO":I
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 135
    .local v0, "maxO":I
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 136
    .local v3, "minS":I
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 137
    .local v1, "maxS":I
    int-to-float v5, v3

    mul-float/2addr v5, v7

    int-to-float v6, v2

    div-float/2addr v5, v6

    int-to-float v6, v1

    mul-float/2addr v6, v7

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 138
    .local v4, "scale":F
    return v4
.end method

.method public static createInputStream(Ljava/lang/String;[B)Ljava/io/InputStream;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "secretKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    if-eqz p1, :cond_0

    .line 767
    invoke-static {p0, p1}, Lcom/miui/gallery/util/uil/CryptUtil;->getDecryptCipherInputStream(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v0

    .line 769
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fitBitmapToScreen(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I
    .param p3, "recycle"    # Z

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, p1, p2}, Lcom/miui/gallery/util/BitmapUtils;->computeThumbNailScaleSize(IIII)F

    move-result v0

    .line 265
    .local v0, "scale":F
    invoke-static {p0, v0, p3}, Lcom/miui/gallery/util/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 247
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 248
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 250
    :cond_0
    return-object v0
.end method

.method public static getConfigSize(Landroid/graphics/Bitmap$Config;)S
    .locals 3
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v0, 0x2

    .line 839
    sget-object v1, Lcom/miui/gallery/util/BitmapUtils$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 851
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 841
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 845
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 847
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static isBitmapInScreen(IIII)Z
    .locals 5
    .param p0, "bitmapWidth"    # I
    .param p1, "bitmapHeight"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    .line 277
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 278
    .local v2, "minO":I
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 279
    .local v0, "maxO":I
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 280
    .local v3, "minS":I
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 281
    .local v1, "maxS":I
    if-gt v2, v3, :cond_0

    if-gt v0, v1, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isRotationSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 646
    if-nez p0, :cond_1

    .line 648
    :cond_0
    :goto_0
    return v0

    .line 647
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 648
    const-string v1, "image/jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportedByRegionDecoder(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 642
    sget-object v0, Lcom/miui/gallery/util/BitmapUtils;->REGION_DECODER_SUPPORTED_MIMETYPES:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isValidate(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 831
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidate(Landroid/graphics/BitmapRegionDecoder;)Z
    .locals 1
    .param p0, "regionDecoder"    # Landroid/graphics/BitmapRegionDecoder;

    .prologue
    .line 835
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
    .param p2, "recycle"    # Z

    .prologue
    const/4 v6, 0x0

    .line 229
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 230
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 231
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 232
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 242
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 233
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/util/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/miui/gallery/util/BitmapUtils;->safeCreateBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 234
    .local v3, "target":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 235
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 238
    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 239
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 240
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "paint":Landroid/graphics/Paint;
    :cond_1
    move-object p0, v3

    .line 242
    goto :goto_0
.end method

.method private static reviseSampleSize(I)I
    .locals 1
    .param p0, "sampleSize"    # I

    .prologue
    .line 166
    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    .line 167
    :cond_0
    const/16 v0, 0x8

    if-gt p0, v0, :cond_1

    invoke-static {p0}, Lcom/miui/gallery/util/Utils;->prevPowerOf2(I)I

    move-result p0

    .line 169
    :goto_0
    return p0

    .line 168
    :cond_1
    div-int/lit8 v0, p0, 0x8

    mul-int/lit8 p0, v0, 0x8

    goto :goto_0
.end method

.method public static safeCreateBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 661
    const/4 v1, 0x0

    .line 663
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 670
    :goto_0
    return-object v1

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "BitmapUtils"

    const-string v3, "safeCreateBitmap() failed OOM: %s"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 666
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BitmapUtils"

    const-string v3, "safeCreateBitmap() failed: %s"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static safeCreateBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 674
    const/4 v1, 0x0

    .line 676
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 680
    :goto_0
    return-object v1

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "BitmapUtils"

    const-string v3, "safeCreateBitmap() failed OOM %s"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static safeCreateBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;ZLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "m"    # Landroid/graphics/Matrix;
    .param p6, "filter"    # Z
    .param p7, "newConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 775
    invoke-static {p0}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/Bitmap;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 776
    const/4 p0, 0x0

    .line 827
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 779
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    move-object/from16 v0, p7

    if-ne v10, v0, :cond_2

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    .line 780
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move/from16 v0, p4

    if-ne v0, v10, :cond_2

    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v10

    if-nez v10, :cond_0

    .line 784
    :cond_2
    move/from16 v6, p3

    .line 785
    .local v6, "neww":I
    move/from16 v5, p4

    .line 786
    .local v5, "newh":I
    const/4 v3, 0x0

    .line 790
    .local v3, "deviceR":Landroid/graphics/RectF;
    new-instance v8, Landroid/graphics/Rect;

    add-int v10, p1, p3

    add-int v11, p2, p4

    move/from16 v0, p2

    invoke-direct {v8, p1, v0, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 791
    .local v8, "srcR":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v0, p3

    int-to-float v12, v0

    move/from16 v0, p4

    int-to-float v13, v0

    invoke-direct {v4, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 793
    .local v4, "dstR":Landroid/graphics/RectF;
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 794
    :cond_3
    move-object/from16 v0, p7

    invoke-static {v6, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 795
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 816
    .local v7, "paint":Landroid/graphics/Paint;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 817
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v10, v11, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v10

    if-nez v10, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_6
    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v1, v10}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 819
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 820
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-eqz v3, :cond_7

    .line 821
    iget v10, v3, Landroid/graphics/RectF;->left:F

    neg-float v10, v10

    iget v11, v3, Landroid/graphics/RectF;->top:F

    neg-float v11, v11

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 822
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 824
    :cond_7
    invoke-virtual {v2, p0, v8, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 825
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p0, v1

    .line 827
    goto/16 :goto_0

    .line 797
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "paint":Landroid/graphics/Paint;
    :cond_8
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v9, 0x1

    .line 799
    .local v9, "transformed":Z
    :goto_3
    new-instance v3, Landroid/graphics/RectF;

    .end local v3    # "deviceR":Landroid/graphics/RectF;
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 800
    .restart local v3    # "deviceR":Landroid/graphics/RectF;
    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 802
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 803
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 805
    move-object/from16 v0, p7

    invoke-static {v6, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 807
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 808
    .restart local v7    # "paint":Landroid/graphics/Paint;
    move/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 809
    if-eqz v9, :cond_4

    .line 810
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_1

    .line 797
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v9    # "transformed":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 817
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "paint":Landroid/graphics/Paint;
    :cond_a
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public static safeCreateBitmapRegionDecoder(Ljava/lang/String;Z[B)Landroid/graphics/BitmapRegionDecoder;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "shareable"    # Z
    .param p2, "secretKey"    # [B

    .prologue
    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v2, 0x0

    .line 701
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p2}, Lcom/miui/gallery/util/BitmapUtils;->createInputStream(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v2

    .line 702
    invoke-static {v2, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 708
    if-eqz v2, :cond_0

    .line 710
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 716
    :cond_0
    :goto_0
    return-object v0

    .line 711
    :catch_0
    move-exception v1

    .line 712
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "BitmapUtils"

    const-string v4, "close inputStream failed %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 703
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 704
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v3, "BitmapUtils"

    const-string v4, "safeCreateBitmapRegionDecoder() failed OOM %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 708
    if-eqz v2, :cond_0

    .line 710
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 711
    :catch_2
    move-exception v1

    .line 712
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "BitmapUtils"

    const-string v4, "close inputStream failed %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 705
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 706
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BitmapUtils"

    const-string v4, "safeCreateBitmapRegionDecoder() failed %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 708
    if-eqz v2, :cond_0

    .line 710
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 711
    :catch_4
    move-exception v1

    .line 712
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "BitmapUtils"

    const-string v4, "close inputStream failed %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 708
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 710
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 713
    :cond_1
    :goto_1
    throw v3

    .line 711
    :catch_5
    move-exception v1

    .line 712
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "BitmapUtils"

    const-string v5, "close inputStream failed %s"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static safeDecodeBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 746
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 747
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 753
    if-eqz v2, :cond_0

    .line 755
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 761
    :cond_0
    :goto_0
    return-object v0

    .line 756
    :catch_0
    move-exception v1

    .line 757
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "BitmapUtils"

    const-string v4, "close inputStream failed %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 748
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 749
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v3, "BitmapUtils"

    const-string v4, "safeDecodeBitmap() failed OOM %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    if-eqz v2, :cond_0

    .line 755
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 756
    :catch_2
    move-exception v1

    .line 757
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "BitmapUtils"

    const-string v4, "close inputStream failed %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 750
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 751
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BitmapUtils"

    const-string v4, "safeDecodeBitmap() failed %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 753
    if-eqz v2, :cond_0

    .line 755
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 756
    :catch_4
    move-exception v1

    .line 757
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "BitmapUtils"

    const-string v4, "close inputStream failed %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 753
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 755
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 758
    :cond_1
    :goto_1
    throw v3

    .line 756
    :catch_5
    move-exception v1

    .line 757
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "BitmapUtils"

    const-string v5, "close inputStream failed %s"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static safeDecodeBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;[B)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "secretKey"    # [B

    .prologue
    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 724
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p2}, Lcom/miui/gallery/util/BitmapUtils;->createInputStream(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v2

    .line 725
    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 731
    if-eqz v2, :cond_0

    .line 733
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 739
    :cond_0
    :goto_0
    return-object v0

    .line 734
    :catch_0
    move-exception v1

    .line 735
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "BitmapUtils"

    const-string v4, "close inputStream failed %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 726
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 727
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v3, "BitmapUtils"

    const-string v4, "safeDecodeBitmap() failed OOM %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 731
    if-eqz v2, :cond_0

    .line 733
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 734
    :catch_2
    move-exception v1

    .line 735
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "BitmapUtils"

    const-string v4, "close inputStream failed %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 728
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 729
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BitmapUtils"

    const-string v4, "safeDecodeBitmap() failed %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 731
    if-eqz v2, :cond_0

    .line 733
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 734
    :catch_4
    move-exception v1

    .line 735
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "BitmapUtils"

    const-string v4, "close inputStream failed %s"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 731
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 733
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 736
    :cond_1
    :goto_1
    throw v3

    .line 734
    :catch_5
    move-exception v1

    .line 735
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "BitmapUtils"

    const-string v5, "close inputStream failed %s"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static safeDecodeRegion(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "regionDecoder"    # Landroid/graphics/BitmapRegionDecoder;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 684
    const/4 v1, 0x0

    .line 686
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 693
    :goto_0
    return-object v1

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "BitmapUtils"

    const-string v3, "safeDecodeRegion() failed OOM %s"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 689
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BitmapUtils"

    const-string v3, "safeDecodeRegion() failed %s"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
