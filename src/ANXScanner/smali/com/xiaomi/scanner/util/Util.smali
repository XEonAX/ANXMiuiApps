.class public Lcom/xiaomi/scanner/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final AMAZON_ASSISTANT_PACKAGE:Ljava/lang/String; = "com.amazon.aa"

.field public static final JPEG_POSTFIX:Ljava/lang/String; = ".jpg"

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field public static hasNativageBar:Z

.field public static isNotchPhone:Z

.field private static sPixelDensity:F

.field public static screenHeight:I

.field public static screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Util"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/xiaomi/scanner/util/Util;->sPixelDensity:F

    .line 37
    sput v2, Lcom/xiaomi/scanner/util/Util;->screenHeight:I

    .line 38
    sput v2, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    .line 39
    sput-boolean v2, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    .line 40
    sput-boolean v2, Lcom/xiaomi/scanner/util/Util;->isNotchPhone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImageToMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;JIJLjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "orientation"    # I
    .param p5, "jpegLength"    # J
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-static/range {p1 .. p10}, Lcom/xiaomi/scanner/util/Util;->getContentValuesForData(Ljava/lang/String;JIJLjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 269
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 271
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 280
    :goto_0
    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 278
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write MediaStore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 257
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 259
    .end local p2    # "max":F
    :goto_0
    return p2

    .line 258
    .restart local p2    # "max":F
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 259
    goto :goto_0
.end method

.method public static convertYUVToBitmap([BIIIZ)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "data"    # [B
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotated"    # Z

    .prologue
    .line 79
    const/4 v10, 0x0

    .line 80
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    .line 82
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 83
    .local v14, "time":J
    new-instance v2, Landroid/graphics/YuvImage;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 84
    .local v2, "image":Landroid/graphics/YuvImage;
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .local v13, "stream":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v13}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 89
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    .line 88
    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 90
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 93
    if-eqz p4, :cond_0

    .line 94
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 95
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 96
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 97
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 98
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    .line 97
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 100
    .local v12, "rotateBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    move-object v3, v12

    .line 104
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "rotateBitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v4, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "util convertYUVToBitmap cost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v14

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .end local v2    # "image":Landroid/graphics/YuvImage;
    .end local v13    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "time":J
    :goto_0
    return-object v3

    .line 105
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    move-object v3, v10

    .line 106
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .local v11, "ex":Ljava/lang/Exception;
    :goto_1
    sget-object v4, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertYUVToBitmap Error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v11    # "ex":Ljava/lang/Exception;
    .restart local v2    # "image":Landroid/graphics/YuvImage;
    .restart local v13    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "time":J
    :catch_1
    move-exception v11

    goto :goto_1

    .end local v2    # "image":Landroid/graphics/YuvImage;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "time":J
    .restart local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object v3, v10

    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private static createDirectoryIfNeeded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 126
    .local v0, "parentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 132
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0
.end method

.method public static cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 231
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    :cond_0
    sget-object v3, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cropImage: invalid bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, v2

    .line 253
    :goto_0
    return-object v1

    .line 236
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 237
    :cond_2
    sget-object v2, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cropImage: src="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dst="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, p0

    .line 238
    goto :goto_0

    .line 241
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 242
    :cond_4
    sget-object v3, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cropImage: dst="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, v2

    .line 243
    goto :goto_0

    .line 246
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 245
    invoke-static {v3, v4, v5}, Lcom/xiaomi/scanner/util/Util;->safeCreateBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 247
    .local v1, "result":Landroid/graphics/Bitmap;
    if-nez v1, :cond_6

    .line 248
    sget-object v3, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "cropImage: null result!"

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, v2

    .line 249
    goto :goto_0

    .line 251
    :cond_6
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 252
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, p1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static dpToPixel(F)I
    .locals 1
    .param p0, "dp"    # F

    .prologue
    .line 62
    sget v0, Lcom/xiaomi/scanner/util/Util;->sPixelDensity:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static getContentValuesForData(Ljava/lang/String;JIJLjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;
    .locals 10
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "date"    # J
    .param p3, "orientation"    # I
    .param p4, "jpegLength"    # J
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v4, "file":Ljava/io/File;
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 290
    .local v2, "dateModifiedSeconds":J
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 291
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {v5, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v6, "_display_name"

    invoke-virtual {v5, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v6, "datetaken"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 294
    const-string v6, "mime_type"

    move-object/from16 v0, p9

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v6, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 297
    const-string v6, "orientation"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v6, "_data"

    move-object/from16 v0, p6

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v6, "_size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    const-string v6, "width"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v6, "height"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    return-object v5
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 44
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    .line 45
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 46
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 47
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/xiaomi/scanner/util/Util;->sPixelDensity:F

    .line 49
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 50
    .local v1, "p":Landroid/graphics/Point;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 51
    iget v4, v1, Landroid/graphics/Point;->y:I

    sput v4, Lcom/xiaomi/scanner/util/Util;->screenHeight:I

    .line 52
    iget v4, v1, Landroid/graphics/Point;->x:I

    sput v4, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    .line 54
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 55
    .local v2, "point":Landroid/graphics/Point;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 56
    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    sput-boolean v4, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    .line 58
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isNotchPhone()Z

    move-result v4

    sput-boolean v4, Lcom/xiaomi/scanner/util/Util;->isNotchPhone:Z

    .line 59
    return-void

    .line 56
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static launchDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 314
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 315
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 316
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.browser"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    const/4 v3, 0x1

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "launchDefaultBrowser exception"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static safeCreateBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    sget-object v2, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "safeCreateBitmap() failed OOM: "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "safeCreateBitmap() failed: "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "recycleBitmap"    # Z

    .prologue
    const/4 v7, 0x0

    .line 175
    if-nez p0, :cond_1

    .line 176
    sget-object v8, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveBitmap: bitmap=null, path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    return v7

    .line 179
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/xiaomi/scanner/util/Util;->createDirectoryIfNeeded(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 180
    :cond_2
    sget-object v8, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveBitmap: failed to create parent directory for file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 187
    :cond_3
    const/4 v7, 0x1

    .line 188
    .local v7, "result":Z
    const/4 v3, 0x0

    .line 189
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 191
    .local v5, "outputStreamDebug":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p0, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 193
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 195
    invoke-static {}, Lcom/xiaomi/scanner/debug/LogHelper;->instance()Lcom/xiaomi/scanner/debug/LogHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/scanner/debug/LogHelper;->isDebugMode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 196
    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 197
    .local v2, "index":I
    const/4 v8, -0x1

    if-le v2, v8, :cond_7

    .line 198
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_debug_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "debugPath":Ljava/lang/String;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    .end local v5    # "outputStreamDebug":Ljava/io/FileOutputStream;
    .local v6, "outputStreamDebug":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p0, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 201
    sget-object v8, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveBitmap: backup path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v6

    .line 208
    .end local v0    # "debugPath":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v6    # "outputStreamDebug":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStreamDebug":Ljava/io/FileOutputStream;
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_5

    .line 209
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    :cond_5
    if-eqz v4, :cond_6

    .line 213
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 218
    :cond_6
    :goto_2
    if-eqz v5, :cond_d

    .line 220
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 223
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 197
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "index":I
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :cond_7
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    goto :goto_1

    .line 214
    .end local v2    # "index":I
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 222
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v3, v4

    .line 223
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 204
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 205
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    sget-object v8, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveBitmap: exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 206
    const/4 v7, 0x0

    .line 208
    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_8

    .line 209
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    :cond_8
    if-eqz v3, :cond_9

    .line 213
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 218
    :cond_9
    :goto_4
    if-eqz v5, :cond_0

    .line 220
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 221
    :catch_3
    move-exception v1

    .line 222
    sget-object v8, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :catch_4
    move-exception v1

    .line 215
    sget-object v8, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_4

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz p2, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_a

    .line 209
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    :cond_a
    if-eqz v3, :cond_b

    .line 213
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 218
    :cond_b
    :goto_6
    if-eqz v5, :cond_c

    .line 220
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 223
    :cond_c
    :goto_7
    throw v8

    .line 214
    :catch_5
    move-exception v1

    .line 215
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v9, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_6

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 222
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v9, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_7

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .end local v5    # "outputStreamDebug":Ljava/io/FileOutputStream;
    .restart local v0    # "debugPath":Ljava/lang/String;
    .restart local v2    # "index":I
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outputStreamDebug":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "outputStreamDebug":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStreamDebug":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 204
    .end local v0    # "debugPath":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .end local v5    # "outputStreamDebug":Ljava/io/FileOutputStream;
    .restart local v0    # "debugPath":Ljava/lang/String;
    .restart local v2    # "index":I
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outputStreamDebug":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    move-object v5, v6

    .end local v6    # "outputStreamDebug":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStreamDebug":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v0    # "debugPath":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :cond_d
    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public static writeFile(Ljava/lang/String;[B)J
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    const-wide/16 v4, -0x1

    .line 143
    invoke-static {p0}, Lcom/xiaomi/scanner/util/Util;->createDirectoryIfNeeded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    sget-object v3, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create parent directory for file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return-wide v4

    .line 147
    :cond_1
    const/4 v1, 0x0

    .line 149
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 151
    array-length v3, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v4, v3

    .line 156
    if-eqz v2, :cond_0

    .line 157
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "Failed to close file after write"

    invoke-static {v3, v6, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v3, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "Failed to write data"

    invoke-static {v3, v6, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    if-eqz v1, :cond_0

    .line 157
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 159
    :catch_2
    move-exception v0

    .line 160
    sget-object v3, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "Failed to close file after write"

    invoke-static {v3, v6, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 156
    :goto_2
    if-eqz v1, :cond_2

    .line 157
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 161
    :cond_2
    :goto_3
    throw v3

    .line 159
    :catch_3
    move-exception v0

    .line 160
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/xiaomi/scanner/util/Util;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "Failed to close file after write"

    invoke-static {v4, v5, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 152
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
