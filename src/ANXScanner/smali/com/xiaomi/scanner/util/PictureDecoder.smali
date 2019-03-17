.class public Lcom/xiaomi/scanner/util/PictureDecoder;
.super Ljava/lang/Object;
.source "PictureDecoder.java"


# static fields
.field public static final MAX_PICTURE_SIZE:I = 0x800

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "PictureDecoder"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 329
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 330
    .local v0, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 332
    .local v4, "width":I
    const/4 v1, 0x1

    .line 333
    .local v1, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v4, p1, :cond_2

    .line 334
    :cond_0
    if-le v4, v0, :cond_1

    .line 335
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 346
    :goto_0
    mul-int v5, v4, v0

    int-to-float v2, v5

    .line 349
    .local v2, "totalPixels":F
    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 351
    .local v3, "totalReqPixelsCap":F
    :goto_1
    mul-int v5, v1, v1

    int-to-float v5, v5

    div-float v5, v2, v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_2

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    .end local v2    # "totalPixels":F
    .end local v3    # "totalReqPixelsCap":F
    :cond_1
    int-to-float v5, v4

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 355
    :cond_2
    sget-object v5, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateInSampleSize reqWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reqHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", options.outHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", options.outWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", inSampleSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 358
    return v1
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "previewBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "wordRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 434
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v0, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 435
    .local v0, "bitmapRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 447
    :goto_0
    return-object v6

    .line 439
    :cond_0
    :try_start_0
    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 440
    .local v4, "x":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 441
    .local v5, "y":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 442
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 443
    .local v2, "height":I
    invoke-static {p0, v4, v5, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 444
    .end local v2    # "height":I
    .end local v3    # "width":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v7, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cropBitmap error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static decode(Landroid/content/Context;[BIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B
    .param p2, "downSampleFactor"    # I
    .param p3, "pictureOrientation"    # I
    .param p4, "needMirror"    # Z

    .prologue
    const/16 v5, 0x800

    .line 32
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/scanner/util/PictureDecoder;->decode(Landroid/content/Context;[BIIZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decode(Landroid/content/Context;[BIIZII)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B
    .param p2, "downSampleFactor"    # I
    .param p3, "pictureOrientation"    # I
    .param p4, "needMirror"    # Z
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I

    .prologue
    .line 61
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 62
    .local v11, "opts":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, p2

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "pictureBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 67
    .local v14, "startTime":J
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/scanner/util/AppUtil;->isInLowMemoryState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v12

    .line 69
    .local v12, "size":Landroid/graphics/Point;
    iget v3, v12, Landroid/graphics/Point;->x:I

    move/from16 v0, p5

    if-le v0, v3, :cond_0

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 p5, v0

    .line 70
    :cond_0
    iget v3, v12, Landroid/graphics/Point;->y:I

    move/from16 v0, p6

    if-le v0, v3, :cond_1

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 p6, v0

    .line 71
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 73
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v11, v0, v1}, Lcom/xiaomi/scanner/util/PictureDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 74
    const/4 v3, 0x0

    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 76
    .end local v12    # "size":Landroid/graphics/Point;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 81
    :goto_0
    if-nez p3, :cond_3

    if-nez p4, :cond_3

    .line 82
    sget-object v3, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeByte time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    .end local v2    # "pictureBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v2

    .line 77
    .restart local v2    # "pictureBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v10

    .line 78
    .local v10, "oom":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "decode oom"

    invoke-static {v3, v4, v10}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    .end local v10    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_3
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .local v7, "m":Landroid/graphics/Matrix;
    if-eqz p3, :cond_4

    .line 89
    move/from16 v0, p3

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 92
    :cond_4
    if-eqz p4, :cond_5

    .line 93
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 96
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 97
    .local v9, "bm":Landroid/graphics/Bitmap;
    sget-object v3, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeByte time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v2, v9

    .line 98
    goto :goto_1
.end method

.method public static decode(Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "pictureOrientation"    # I
    .param p4, "needMirror"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    sget-object v4, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "decode: null path"

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    const/4 v4, 0x0

    .line 194
    :goto_0
    return-object v4

    .line 181
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 182
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 183
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 184
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 186
    if-ne p1, v8, :cond_2

    move v3, v4

    .line 187
    .local v3, "widthSample":I
    :goto_1
    if-ne p2, v8, :cond_3

    move v1, v4

    .line 188
    .local v1, "heightSample":I
    :goto_2
    if-lt v1, v4, :cond_1

    if-lt v3, v4, :cond_1

    .line 189
    if-le v1, v3, :cond_4

    .end local v1    # "heightSample":I
    :goto_3
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 190
    sget-object v4, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]->["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] sample="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    :cond_1
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p3, p4}, Lcom/xiaomi/scanner/util/PictureDecoder;->processBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 186
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "widthSample":I
    :cond_2
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    int-to-float v6, p1

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    goto :goto_1

    .line 187
    .restart local v3    # "widthSample":I
    :cond_3
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    int-to-float v6, p2

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    goto :goto_2

    .restart local v1    # "heightSample":I
    :cond_4
    move v1, v3

    .line 189
    goto :goto_3
.end method

.method public static decodeSafely(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x800

    .line 205
    invoke-static {p0, v0, v0}, Lcom/xiaomi/scanner/util/PictureDecoder;->decodeSafely(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSafely(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    const/4 v5, -0x1

    .line 112
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v3, v4}, Lcom/xiaomi/scanner/util/PictureDecoder;->decode(Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 129
    :goto_0
    return-object v3

    .line 113
    :catch_0
    move-exception v1

    .line 115
    .local v1, "error":Ljava/lang/OutOfMemoryError;
    :try_start_1
    sget-object v3, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    if-eq p2, v5, :cond_0

    if-ne p1, v5, :cond_2

    .line 117
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 118
    .local v2, "size":Landroid/graphics/Point;
    if-ne p1, v5, :cond_1

    iget p1, v2, Landroid/graphics/Point;->x:I

    .line 119
    :cond_1
    if-ne p2, v5, :cond_2

    iget p2, v2, Landroid/graphics/Point;->y:I

    .line 121
    .end local v2    # "size":Landroid/graphics/Point;
    :cond_2
    sget-object v3, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    div-int/lit8 v3, p1, 0x2

    div-int/lit8 v4, p2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Lcom/xiaomi/scanner/util/PictureDecoder;->decode(Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 123
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v1    # "error":Ljava/lang/OutOfMemoryError;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 126
    :catch_2
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static decodeSafely(Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "pictureOrientation"    # I
    .param p4, "needMirror"    # Z

    .prologue
    const/4 v5, -0x1

    .line 146
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/scanner/util/PictureDecoder;->decode(Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 163
    :goto_0
    return-object v3

    .line 147
    :catch_0
    move-exception v1

    .line 149
    .local v1, "error":Ljava/lang/OutOfMemoryError;
    :try_start_1
    sget-object v3, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    if-eq p2, v5, :cond_0

    if-ne p1, v5, :cond_2

    .line 151
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 152
    .local v2, "size":Landroid/graphics/Point;
    if-ne p1, v5, :cond_1

    iget p1, v2, Landroid/graphics/Point;->x:I

    .line 153
    :cond_1
    if-ne p2, v5, :cond_2

    iget p2, v2, Landroid/graphics/Point;->y:I

    .line 155
    .end local v2    # "size":Landroid/graphics/Point;
    :cond_2
    sget-object v3, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    div-int/lit8 v3, p1, 0x2

    div-int/lit8 v4, p2, 0x2

    invoke-static {p0, v3, v4, p3, p4}, Lcom/xiaomi/scanner/util/PictureDecoder;->decode(Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 157
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v1    # "error":Ljava/lang/OutOfMemoryError;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 160
    :catch_2
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static decodeSafely(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "pictureOrientation"    # I
    .param p2, "needMirror"    # Z

    .prologue
    const/16 v0, 0x800

    .line 209
    invoke-static {p0, v0, v0, p1, p2}, Lcom/xiaomi/scanner/util/PictureDecoder;->decodeSafely(Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSafelyWithSameScale(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "pictureOrientation"    # I
    .param p2, "maxHeight"    # I

    .prologue
    const/16 v12, 0xb4

    const/high16 v3, 0x3f800000    # 1.0f

    .line 213
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    sget-object v1, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "decode: null path"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    const/4 v10, 0x0

    .line 251
    :goto_0
    return-object v10

    .line 217
    :cond_0
    const/4 v10, 0x0

    .line 218
    .local v10, "result":Landroid/graphics/Bitmap;
    sget v8, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    .line 220
    .local v8, "maxWidth":I
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 221
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 223
    invoke-static {p0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v1, v8

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 226
    .local v11, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-ne p1, v12, :cond_3

    .line 227
    :cond_2
    add-int/lit8 p1, p1, 0x5a

    .line 230
    :cond_3
    if-eqz p1, :cond_5

    .line 231
    int-to-float v1, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 236
    :cond_4
    :goto_1
    invoke-virtual {v5, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 237
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    if-nez p1, :cond_6

    .line 240
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_0

    .line 232
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 233
    int-to-float v1, v8

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 234
    const/16 p1, 0x5a

    goto :goto_1

    .line 241
    :cond_6
    if-ne p1, v12, :cond_7

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    goto/16 :goto_0

    .line 243
    :cond_7
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_8

    .line 244
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    goto/16 :goto_0

    .line 246
    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto/16 :goto_0

    .line 248
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "scale":F
    :catch_0
    move-exception v7

    .line 249
    .local v7, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeSafelyWithSameScale error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static decodeWithMaxHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "pictureBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxHeight"    # I

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, "result":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "oom":Ljava/lang/Throwable;
    sget-object v2, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "decode oom"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static processBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "orientation"    # I
    .param p2, "needMirror"    # Z

    .prologue
    const/4 v1, 0x0

    .line 255
    if-nez p0, :cond_1

    .line 276
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 258
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 262
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 263
    .local v8, "startTime":J
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 265
    .local v5, "m":Landroid/graphics/Matrix;
    if-eqz p1, :cond_3

    .line 266
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 269
    :cond_3
    if-eqz p2, :cond_4

    .line 270
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 274
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    .line 273
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 275
    .local v7, "bm":Landroid/graphics/Bitmap;
    sget-object v0, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object p0, v7

    .line 276
    goto :goto_0
.end method

.method public static rectifyBitmap(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "needMirror"    # Z
    .param p2, "savePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    sget-object v4, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "rectifyBitmap error null path"

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    .end local p2    # "savePath":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 302
    .restart local p2    # "savePath":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 303
    .local v0, "startTime":J
    invoke-static {p0}, Lcom/xiaomi/scanner/camera/Exif;->getOrientation(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v4, p1}, Lcom/xiaomi/scanner/util/PictureDecoder;->decodeSafely(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, p2, v5}, Lcom/xiaomi/scanner/util/Util;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v2

    .line 305
    .local v2, "success":Z
    sget-object v4, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rectifyBitmap success="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", savePath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 305
    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    if-eqz v2, :cond_1

    .end local p2    # "savePath":Ljava/lang/String;
    :goto_1
    move-object v3, p2

    goto :goto_0

    .restart local p2    # "savePath":Ljava/lang/String;
    :cond_1
    move-object p2, v3

    goto :goto_1
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 280
    if-nez p1, :cond_0

    .line 285
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 283
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 284
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 285
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static saveJpeg(Ljava/lang/String;[BZLjava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "rootPath"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "checkOrientation"    # Z
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 369
    if-nez p1, :cond_1

    .line 370
    sget-object v11, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v14, "savejpeg fail, data null"

    invoke-static {v11, v14}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    const/4 v6, 0x0

    .line 409
    :cond_0
    :goto_0
    return-object v6

    .line 373
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    .line 375
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 376
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ".jpg"

    .line 377
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 378
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, "jpegPath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 381
    .local v8, "start":J
    if-eqz p2, :cond_5

    .line 382
    const/4 v2, 0x0

    .line 384
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/scanner/camera/Exif;->getOrientation([B)I

    move-result v7

    .line 385
    .local v7, "rotation":I
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v11, v0, v14, v7, v15}, Lcom/xiaomi/scanner/util/PictureDecoder;->decode(Landroid/content/Context;[BIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 386
    const/4 v11, 0x1

    invoke-static {v2, v6, v11}, Lcom/xiaomi/scanner/util/Util;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v10

    .line 387
    .local v10, "succeed":Z
    if-eqz v10, :cond_2

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v4, v14, v8

    .line 389
    .local v4, "cost":J
    sget-object v11, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveJpeg: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " cost:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    if-eqz v2, :cond_0

    .line 396
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    const/4 v2, 0x0

    goto :goto_0

    .line 395
    .end local v4    # "cost":J
    :cond_2
    if-eqz v2, :cond_3

    .line 396
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    const/4 v2, 0x0

    .line 408
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "rotation":I
    .end local v10    # "succeed":Z
    :cond_3
    :goto_1
    sget-object v11, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "savejpeg fail, jpegPath="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 409
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 392
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 393
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v11, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v14, "save jpeg error"

    invoke-static {v11, v14, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    if-eqz v2, :cond_3

    .line 396
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    const/4 v2, 0x0

    goto :goto_1

    .line 395
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v2, :cond_4

    .line 396
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    const/4 v2, 0x0

    :cond_4
    throw v11

    .line 401
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/xiaomi/scanner/util/Util;->writeFile(Ljava/lang/String;[B)J

    move-result-wide v12

    .line 402
    .local v12, "written":J
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_3

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v4, v14, v8

    .line 404
    .restart local v4    # "cost":J
    sget-object v11, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveJpeg: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " cost:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "desWidth"    # I
    .param p2, "desHeight"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 413
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 430
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 416
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 417
    move v8, p1

    .line 418
    .local v8, "flag":I
    move p1, p2

    .line 419
    move p2, v8

    .line 421
    .end local v8    # "flag":I
    :cond_2
    int-to-float v0, p1

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 422
    .local v9, "scaleX":F
    int-to-float v0, p2

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v10, v0, v1

    .line 423
    .local v10, "scaleY":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 424
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 426
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v7

    .line 428
    .local v7, "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/xiaomi/scanner/util/PictureDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scale bitmap error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
