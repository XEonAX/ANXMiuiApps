.class public Lcom/cdv/utils/NvAndroidBitmap;
.super Ljava/lang/Object;
.source "NvAndroidBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO_MODE_IGNORE:I = 0x0

.field private static final ASPECT_RATIO_MODE_KEEP:I = 0x1

.field private static final ASPECT_RATIO_MODE_KEEP_EXPANDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 107
    if-nez p0, :cond_1

    move-object p0, v0

    .line 118
    :cond_0
    :goto_0
    return-object p0

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_0

    .line 114
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    .line 118
    goto :goto_0
.end method

.method public static createBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;IZ)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 124
    invoke-static {p0, p1}, Lcom/cdv/utils/NvAndroidBitmap;->getImageInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    move-object v0, v6

    .line 144
    :goto_0
    return-object v0

    .line 129
    :cond_0
    :try_start_0
    new-instance v2, Landroid/util/Size;

    iget v1, v0, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->width:I

    iget v0, v0, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->height:I

    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    .line 130
    const-string v0, "assets:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const/4 v1, 0x0

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/cdv/utils/NvAndroidBitmap;->createBitmap(Ljava/lang/String;Ljava/io/InputStream;Landroid/util/Size;Landroid/util/Size;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    if-nez p0, :cond_2

    move-object v0, v6

    .line 134
    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 137
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 138
    const/4 v0, 0x0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/cdv/utils/NvAndroidBitmap;->createBitmap(Ljava/lang/String;Ljava/io/InputStream;Landroid/util/Size;Landroid/util/Size;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    .line 144
    goto :goto_0
.end method

.method private static createBitmap(Ljava/lang/String;Ljava/io/InputStream;Landroid/util/Size;Landroid/util/Size;IZ)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 300
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 301
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    :cond_0
    if-eqz p0, :cond_2

    .line 304
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    :cond_1
    :goto_0
    return-object v0

    .line 306
    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_3
    if-eqz p4, :cond_4

    .line 312
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 313
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v4, v6

    .line 314
    const/4 v0, 0x1

    if-ne p4, v0, :cond_6

    .line 315
    cmpl-double v0, v2, v4

    if-ltz v0, :cond_5

    .line 316
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-double v6, v5

    div-double v2, v6, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v4, v2}, Landroid/util/Size;-><init>(II)V

    move-object p3, v0

    .line 327
    :cond_4
    :goto_1
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 328
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 329
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 332
    if-eqz p0, :cond_8

    .line 333
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 336
    :goto_2
    if-nez v0, :cond_9

    .line 337
    const/4 v0, 0x0

    goto :goto_0

    .line 318
    :cond_5
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object p3, v0

    goto :goto_1

    .line 320
    :cond_6
    cmpl-double v0, v2, v4

    if-ltz v0, :cond_7

    .line 321
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object p3, v0

    goto :goto_1

    .line 323
    :cond_7
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-double v6, v5

    div-double v2, v6, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v4, v2}, Landroid/util/Size;-><init>(II)V

    move-object p3, v0

    goto :goto_1

    .line 335
    :cond_8
    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 339
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_a

    .line 340
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 344
    :cond_a
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2, p5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static createBitmap([BLandroid/util/Size;IZ)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 150
    invoke-static {p0}, Lcom/cdv/utils/NvAndroidBitmap;->getImageInfo([B)Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;

    move-result-object v3

    .line 151
    if-nez v3, :cond_0

    move-object v0, v6

    .line 159
    :goto_0
    return-object v0

    .line 155
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 156
    const/4 v0, 0x0

    new-instance v2, Landroid/util/Size;

    iget v4, v3, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->width:I

    iget v3, v3, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->height:I

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/cdv/utils/NvAndroidBitmap;->createBitmap(Ljava/lang/String;Ljava/io/InputStream;Landroid/util/Size;Landroid/util/Size;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    .line 159
    goto :goto_0
.end method

.method public static createBitmapRegion(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 222
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 223
    const-string v2, "assets:/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 225
    invoke-virtual {v2, p2, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 231
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 232
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    .line 233
    invoke-virtual {v3, p2, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 234
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 235
    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createBitmapRegion([BLandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 246
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 247
    const/4 v1, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 248
    invoke-virtual {v1, p1, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createRgbaBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 258
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createRotatedBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;IZ)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 165
    invoke-static {p0, p1}, Lcom/cdv/utils/NvAndroidBitmap;->getImageInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;

    move-result-object v7

    .line 166
    if-nez v7, :cond_1

    move-object v0, v6

    .line 193
    :cond_0
    :goto_0
    return-object v0

    .line 170
    :cond_1
    :try_start_0
    new-instance v2, Landroid/util/Size;

    iget v0, v7, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->width:I

    iget v1, v7, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->height:I

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 172
    const-string v0, "assets:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    const/4 v1, 0x0

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/cdv/utils/NvAndroidBitmap;->createBitmap(Ljava/lang/String;Ljava/io/InputStream;Landroid/util/Size;Landroid/util/Size;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    :goto_1
    if-nez v0, :cond_4

    move-object v0, v6

    .line 185
    goto :goto_0

    .line 175
    :cond_2
    if-nez p0, :cond_3

    move-object v0, v6

    .line 176
    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 179
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 180
    const/4 v0, 0x0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/cdv/utils/NvAndroidBitmap;->createBitmap(Ljava/lang/String;Ljava/io/InputStream;Landroid/util/Size;Landroid/util/Size;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    .line 193
    goto :goto_0

    .line 187
    :cond_4
    :try_start_1
    iget v1, v7, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 190
    iget v1, v7, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->orientation:I

    invoke-static {v0, v1}, Lcom/cdv/utils/NvAndroidBitmap;->transformBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public static createRotatedBitmap([BLandroid/util/Size;IZ)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 199
    invoke-static {p0}, Lcom/cdv/utils/NvAndroidBitmap;->getImageInfo([B)Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;

    move-result-object v7

    .line 200
    if-nez v7, :cond_1

    move-object v0, v6

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 204
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 205
    const/4 v0, 0x0

    new-instance v2, Landroid/util/Size;

    iget v3, v7, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->width:I

    iget v4, v7, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->height:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/cdv/utils/NvAndroidBitmap;->createBitmap(Ljava/lang/String;Ljava/io/InputStream;Landroid/util/Size;Landroid/util/Size;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    if-nez v0, :cond_2

    move-object v0, v6

    .line 207
    goto :goto_0

    .line 209
    :cond_2
    iget v1, v7, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 212
    iget v1, v7, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->orientation:I

    invoke-static {v0, v1}, Lcom/cdv/utils/NvAndroidBitmap;->transformBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    .line 215
    goto :goto_0
.end method

.method public static getImageInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    :try_start_0
    const-string v1, "assets:/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 59
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/cdv/utils/NvAndroidBitmap;->getImageInfo(Ljava/io/InputStream;)Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;

    move-result-object v1

    .line 61
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move-object v0, v1

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 67
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 68
    iget-object v1, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ltz v1, :cond_3

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gez v1, :cond_4

    .line 69
    :cond_3
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get image information for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 73
    :cond_4
    :try_start_1
    new-instance v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;

    invoke-direct {v1}, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;-><init>()V

    .line 74
    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v3, v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->mimeType:Ljava/lang/String;

    .line 75
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->width:I

    .line 76
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->height:I

    .line 77
    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v3, "image/jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_5

    .line 79
    :try_start_2
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 80
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->orientation:I
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    move-object v0, v1

    .line 89
    goto/16 :goto_0

    .line 81
    :catch_1
    move-exception v2

    .line 82
    const/4 v3, 0x1

    :try_start_3
    iput v3, v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->orientation:I

    .line 83
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1

    .line 86
    :cond_5
    const/4 v2, 0x1

    iput v2, v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->orientation:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private static getImageInfo(Ljava/io/InputStream;)Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 395
    if-nez p0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-object v0

    .line 399
    :cond_1
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 401
    const/4 v1, 0x0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 402
    iget-object v1, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ltz v1, :cond_0

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ltz v1, :cond_0

    .line 405
    new-instance v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;

    invoke-direct {v1}, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;-><init>()V

    .line 406
    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v3, v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->mimeType:Ljava/lang/String;

    .line 407
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->width:I

    .line 408
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->height:I

    .line 409
    const/4 v3, 0x1

    iput v3, v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->orientation:I

    .line 411
    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v3, "image/jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    .line 412
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 413
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    .line 416
    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    .line 418
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getImageInfo([B)Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;
    .locals 1

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 102
    invoke-static {v0}, Lcom/cdv/utils/NvAndroidBitmap;->getImageInfo(Ljava/io/InputStream;)Lcom/cdv/utils/NvAndroidBitmap$ImageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 268
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 269
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 270
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveBitmapToFile(Landroid/graphics/Bitmap;ILjava/lang/String;)Z
    .locals 3

    .prologue
    .line 280
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 281
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 282
    const-string v2, ".png"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 285
    :cond_0
    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 288
    :goto_0
    return v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static transformBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    .line 352
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 353
    packed-switch p1, :pswitch_data_0

    .line 390
    :goto_0
    return-object p0

    .line 360
    :pswitch_0
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 390
    :goto_1
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

    .line 364
    :pswitch_1
    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 368
    :pswitch_2
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    .line 372
    :pswitch_3
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    .line 376
    :pswitch_4
    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    .line 380
    :pswitch_5
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 381
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    .line 385
    :pswitch_6
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 386
    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method
