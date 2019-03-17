.class public Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;,
        Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    }
.end annotation


# instance fields
.field protected final loggingEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    .line 72
    return-void
.end method

.method private canDefineExifFromPath(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Z
    .locals 3
    .param p1, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "imageUri":Ljava/lang/String;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private canDefineExifParams(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v0, "image/jpeg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private convertToFileScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v1

    .line 181
    .local v1, "scheme":Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v1, v2, :cond_0

    .line 190
    .end local p1    # "uri":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 184
    .restart local p1    # "uri":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->CONTENT:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v1, v2, :cond_1

    .line 185
    invoke-static {p1}, Lcom/miui/gallery/util/MediaStoreUtils;->getMediaFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 190
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private decodeInternal(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    .param p2, "inImageStream"    # Ljava/io/InputStream;
    .param p3, "considerOrientation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "decodedBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 141
    .local v2, "imageInfo":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    move-object v3, p2

    .line 143
    .local v3, "imageStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 145
    .local v1, "decodingOptions":Landroid/graphics/BitmapFactory$Options;
    if-eqz p3, :cond_2

    .line 146
    :try_start_0
    invoke-virtual {p0, v3, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->defineImageSizeAndRotation(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    move-result-object v2

    .line 150
    :goto_0
    invoke-virtual {p0, v3, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->resetStream(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v3

    .line 151
    iget-object v5, v2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->imageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {p0, v5, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->prepareDecodingOptions(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 152
    const/4 v5, 0x0

    invoke-static {v3, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    :cond_0
    :goto_1
    if-nez v0, :cond_4

    .line 166
    const-string v5, "Image can\'t be decoded [%s]"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :goto_2
    if-eq v3, p2, :cond_1

    .line 173
    invoke-static {v3}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 176
    :cond_1
    return-object v0

    .line 148
    :cond_2
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->defineImageSize(Ljava/io/InputStream;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 153
    :catch_0
    move-exception v4

    .line 154
    .local v4, "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 155
    const-string v5, "decode (%1$s) (inSampleSize=%2$d) error use inBitmap (width=%3$d height=%4$d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->imageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    aput-object v7, v6, v10

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x2

    iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v5, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 157
    iget-object v5, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    :cond_3
    iput-object v9, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 160
    invoke-virtual {p0, v3, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->resetStream(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v3

    .line 161
    invoke-static {v3, v9, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 168
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_4
    iget-object v5, v2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    iget v5, v5, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    iget-object v6, v2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    iget-boolean v6, v6, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    invoke-virtual {p0, v0, p1, v5, v6}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->considerExactScaleAndOrientation(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2
.end method

.method private defineExifOrientation(Ljava/io/InputStream;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 262
    :try_start_0
    sget-object v3, Lcom/miui/gallery/util/ExifUtil;->sSupportExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    invoke-interface {v3, p1}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface;

    .line 263
    .local v1, "exif":Landroid/support/media/ExifInterface;
    if-eqz v1, :cond_0

    .line 264
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 265
    .local v2, "orientation":I
    invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->packageExifInfo(I)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 270
    .end local v1    # "exif":Landroid/support/media/ExifInterface;
    .end local v2    # "orientation":I
    :goto_0
    return-object v3

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Can\'t read EXIF tags from stream"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    invoke-direct {v3}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>()V

    goto :goto_0
.end method

.method private defineExifOrientation(Ljava/lang/String;[B)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "secretKey"    # [B

    .prologue
    .line 252
    invoke-static {p1, p2}, Lcom/miui/gallery/util/ExifUtil;->parseRotationInfo(Ljava/lang/String;[B)Lcom/miui/gallery/util/ExifUtil$ExifInfo;

    move-result-object v0

    .line 253
    .local v0, "exifInfo":Lcom/miui/gallery/util/ExifUtil$ExifInfo;
    if-eqz v0, :cond_0

    .line 254
    new-instance v1, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    iget v2, v0, Lcom/miui/gallery/util/ExifUtil$ExifInfo;->rotation:I

    iget-boolean v3, v0, Lcom/miui/gallery/util/ExifUtil$ExifInfo;->flip:Z

    iget v4, v0, Lcom/miui/gallery/util/ExifUtil$ExifInfo;->exifOrientation:I

    invoke-direct {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>(IZI)V

    .line 256
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>()V

    goto :goto_0
.end method

.method private packageExifInfo(I)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    .locals 3
    .param p1, "exifOrientation"    # I

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "rotation":I
    const/4 v0, 0x0

    .line 276
    .local v0, "flip":Z
    packed-switch p1, :pswitch_data_0

    .line 298
    :goto_0
    new-instance v2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    invoke-direct {v2, v1, v0, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>(IZI)V

    return-object v2

    .line 278
    :pswitch_0
    const/4 v0, 0x1

    .line 280
    :pswitch_1
    const/4 v1, 0x0

    .line 281
    goto :goto_0

    .line 283
    :pswitch_2
    const/4 v0, 0x1

    .line 285
    :pswitch_3
    const/16 v1, 0x5a

    .line 286
    goto :goto_0

    .line 288
    :pswitch_4
    const/4 v0, 0x1

    .line 290
    :pswitch_5
    const/16 v1, 0xb4

    .line 291
    goto :goto_0

    .line 293
    :pswitch_6
    const/4 v0, 0x1

    .line 295
    :pswitch_7
    const/16 v1, 0x10e

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method private usePowerOf2(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Z
    .locals 1
    .param p1, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .prologue
    .line 308
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected considerExactScaleAndOrientation(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "subsampledBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    .param p3, "rotation"    # I
    .param p4, "flipHorizontal"    # Z

    .prologue
    .line 358
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 361
    .local v5, "m":Landroid/graphics/Matrix;
    const/4 v10, 0x0

    .line 363
    .local v10, "shouldMatrix":Z
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v9

    .line 364
    .local v9, "scaleType":Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-eq v9, v0, :cond_0

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v9, v0, :cond_1

    .line 365
    :cond_0
    new-instance v11, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v11, v0, v1, p3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V

    .line 366
    .local v11, "srcSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    .line 367
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v2

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v9, v0, :cond_5

    const/4 v0, 0x1

    .line 366
    :goto_0
    invoke-static {v11, v1, v2, v0}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F

    move-result v8

    .line 368
    .local v8, "scale":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v8, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 370
    const/4 v10, 0x1

    .line 371
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v0, :cond_1

    .line 372
    const-string v0, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v11, v8}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->scale(F)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    .end local v8    # "scale":F
    .end local v11    # "srcSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    :cond_1
    if-eqz p4, :cond_2

    .line 378
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 379
    const/4 v10, 0x1

    .line 380
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v0, :cond_2

    const-string v0, "Flip image horizontally [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    :cond_2
    if-eqz p3, :cond_3

    .line 384
    int-to-float v0, p3

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 385
    const/4 v10, 0x1

    .line 386
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v0, :cond_3

    const-string v0, "Rotate image on %1$d\u00b0 [%2$s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_3
    if-eqz v10, :cond_7

    .line 390
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    .line 390
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 392
    .local v7, "finalBitmap":Landroid/graphics/Bitmap;
    if-eq v7, p1, :cond_4

    .line 393
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getInBitmapCache()Lcom/miui/gallery/util/ReusedBitmapCache;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 394
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getInBitmapCache()Lcom/miui/gallery/util/ReusedBitmapCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/ReusedBitmapCache;->put(Landroid/graphics/Bitmap;)V

    .line 401
    .end local v7    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object v7

    .line 367
    .restart local v11    # "srcSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 396
    .end local v11    # "srcSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .restart local v7    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .end local v7    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_7
    move-object v7, p1

    .line 401
    goto :goto_1
.end method

.method public decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v3, 0x0

    .line 86
    .local v3, "decodedBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 88
    .local v5, "imageStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 89
    .local v9, "tryLoadFromBigPhoto":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "bigPhotoUri":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isConsiderFileLength()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getFileLength()J

    move-result-wide v6

    .line 91
    .local v6, "imageSize":J
    :goto_0
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isLoadFromBigPhotoCache()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 92
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->convertToFileScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "fileUri":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 94
    move-object v1, v4

    .line 95
    const/4 v9, 0x1

    .line 97
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v10

    const-wide/16 v12, 0x1

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v1, v12, v13, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->waitLockForUri(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 100
    .end local v4    # "fileUri":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 101
    .local v2, "bytes":[B
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isCacheBigPhoto()Z

    move-result v10

    if-nez v10, :cond_1

    if-eqz v9, :cond_2

    .line 102
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/uil/PhotoBytesCache;->getInstance()Lcom/miui/gallery/util/uil/PhotoBytesCache;

    move-result-object v10

    invoke-static {v1, v6, v7}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateBigPhotoKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/miui/gallery/util/uil/PhotoBytesCache;->getData(Ljava/lang/String;)[B

    move-result-object v2

    .line 104
    :cond_2
    if-eqz v2, :cond_4

    array-length v10, v2

    if-lez v10, :cond_4

    .line 105
    if-eqz v9, :cond_3

    .line 106
    sget-object v10, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "try load from big photo cache successfully"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_3
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v5    # "imageStream":Ljava/io/InputStream;
    .local v8, "imageStream":Ljava/io/InputStream;
    const/4 v10, 0x0

    :try_start_1
    invoke-direct {p0, p1, v8, v10}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->decodeInternal(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 110
    sget-object v10, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decode from cache "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v8

    .line 112
    .end local v8    # "imageStream":Ljava/io/InputStream;
    .restart local v5    # "imageStream":Ljava/io/InputStream;
    :cond_4
    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 113
    :cond_5
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "bigPhotoKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isCacheBigPhoto()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isDecodeThumbnail()Z

    move-result v10

    if-nez v10, :cond_6

    .line 117
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6, v7}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateBigPhotoKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_6
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v5

    .line 120
    if-nez v5, :cond_8

    .line 121
    const-string v10, "No stream for image [%s]"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    const/4 v10, 0x0

    .line 133
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 135
    .end local v0    # "bigPhotoKey":Ljava/lang/String;
    :goto_1
    return-object v10

    .line 90
    .end local v2    # "bytes":[B
    .end local v6    # "imageSize":J
    :cond_7
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 124
    .restart local v0    # "bigPhotoKey":Ljava/lang/String;
    .restart local v2    # "bytes":[B
    .restart local v6    # "imageSize":J
    :cond_8
    const/4 v10, 0x1

    :try_start_3
    invoke-direct {p0, p1, v5, v10}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->decodeInternal(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 125
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isCacheBigPhoto()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isDecodeThumbnail()Z

    move-result v10

    if-nez v10, :cond_9

    .line 126
    const/16 v10, 0x64

    invoke-static {v3, v10}, Lcom/miui/gallery/util/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    .line 127
    if-eqz v2, :cond_9

    array-length v10, v2

    if-lez v10, :cond_9

    .line 128
    invoke-static {}, Lcom/miui/gallery/util/uil/PhotoBytesCache;->getInstance()Lcom/miui/gallery/util/uil/PhotoBytesCache;

    move-result-object v10

    invoke-virtual {v10, v0, v2}, Lcom/miui/gallery/util/uil/PhotoBytesCache;->putData(Ljava/lang/String;[B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    .end local v0    # "bigPhotoKey":Ljava/lang/String;
    :cond_9
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v10, v3

    .line 135
    goto :goto_1

    .line 133
    .end local v1    # "bigPhotoUri":Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v6    # "imageSize":J
    :catchall_0
    move-exception v10

    :goto_2
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .end local v5    # "imageStream":Ljava/io/InputStream;
    .restart local v1    # "bigPhotoUri":Ljava/lang/String;
    .restart local v2    # "bytes":[B
    .restart local v6    # "imageSize":J
    .restart local v8    # "imageStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v5, v8

    .end local v8    # "imageStream":Ljava/io/InputStream;
    .restart local v5    # "imageStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method protected defineExifOrientation(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    .locals 5
    .param p1, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->canDefineExifFromPath(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isSecretImage()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getSecretKey()[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getSecretKey()[B

    move-result-object v1

    .line 234
    .local v1, "secretKey":[B
    :goto_0
    sget-object v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->defineExifOrientation(Ljava/lang/String;[B)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    move-result-object v3

    .line 248
    .end local v1    # "secretKey":[B
    :goto_1
    return-object v3

    .line 233
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :cond_1
    const/4 v2, 0x0

    .line 238
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_2

    .line 240
    invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->defineExifOrientation(Ljava/io/InputStream;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 245
    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 248
    :goto_2
    new-instance v3, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    invoke-direct {v3}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>()V

    goto :goto_1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method protected defineImageSize(Ljava/io/InputStream;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    .locals 7
    .param p1, "imageStream"    # Ljava/io/InputStream;

    .prologue
    .line 198
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 199
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 200
    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 202
    new-instance v0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>()V

    .line 203
    .local v0, "exif":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    new-instance v2, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    invoke-direct {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V

    invoke-direct {v2, v3, v0}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;-><init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;)V

    return-object v2
.end method

.method protected defineImageSizeAndRotation(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    .locals 8
    .param p1, "imageStream"    # Ljava/io/InputStream;
    .param p2, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 209
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 210
    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 213
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "imageUri":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->shouldConsiderExifParams()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->canDefineExifParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->defineExifOrientation(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    move-result-object v0

    .line 219
    .local v0, "exif":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    :goto_0
    new-instance v3, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    new-instance v4, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, v0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    invoke-direct {v4, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V

    invoke-direct {v3, v4, v0}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;-><init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;)V

    return-object v3

    .line 217
    .end local v0    # "exif":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>()V

    .restart local v0    # "exif":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
    goto :goto_0
.end method

.method protected getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
    .locals 3
    .param p1, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected prepareDecodingOptions(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;
    .locals 11
    .param p1, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    .prologue
    const/4 v10, 0x1

    .line 314
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v4

    .line 316
    .local v4, "scaleType":Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v4, v6, :cond_2

    .line 317
    const/4 v3, 0x1

    .line 325
    .local v3, "scale":I
    :goto_0
    if-le v3, v10, :cond_0

    iget-boolean v6, p0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v6, :cond_0

    .line 326
    const-string v6, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {p1, v3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->scaleDown(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :cond_0
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getDecodingOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 330
    .local v0, "decodingOptions":Landroid/graphics/BitmapFactory$Options;
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 332
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getInBitmapCache()Lcom/miui/gallery/util/ReusedBitmapCache;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 333
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 334
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v6

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 335
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v6

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 336
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 337
    iget-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v6, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 338
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getInBitmapCache()Lcom/miui/gallery/util/ReusedBitmapCache;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/miui/gallery/util/ReusedBitmapCache;->get(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 339
    iput-boolean v10, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 341
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    return-object v0

    .line 318
    .end local v0    # "decodingOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "scale":I
    :cond_2
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE_SAFE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne v4, v6, :cond_3

    .line 319
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getDecodingOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    iget-object v6, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v6}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->computeMinImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/Bitmap$Config;)I

    move-result v3

    .restart local v3    # "scale":I
    goto :goto_0

    .line 321
    .end local v3    # "scale":I
    :cond_3
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v5

    .line 322
    .local v5, "targetSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->usePowerOf2(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Z

    move-result v2

    .line 323
    .local v2, "powerOf2":Z
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v6

    invoke-static {p1, v5, v6, v2}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I

    move-result v3

    .restart local v3    # "scale":I
    goto :goto_0
.end method

.method protected resetStream(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
    .locals 1
    .param p1, "imageStream"    # Ljava/io/InputStream;
    .param p2, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local p1    # "imageStream":Ljava/io/InputStream;
    :goto_0
    return-object p1

    .line 349
    .restart local p1    # "imageStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 352
    :cond_0
    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 353
    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0
.end method
