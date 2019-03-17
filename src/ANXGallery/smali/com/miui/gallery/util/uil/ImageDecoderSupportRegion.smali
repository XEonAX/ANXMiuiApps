.class public Lcom/miui/gallery/util/uil/ImageDecoderSupportRegion;
.super Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;
.source "ImageDecoderSupportRegion.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;-><init>(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getRegionDecodeRect()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 62
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/uil/ImageDecoderSupportRegion;->getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v2

    .line 64
    .local v2, "imageStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v2, p1}, Lcom/miui/gallery/util/uil/ImageDecoderSupportRegion;->defineImageSizeAndRotation(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    move-result-object v1

    .line 66
    .local v1, "imageInfo":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    invoke-virtual {p0, v2, p1}, Lcom/miui/gallery/util/uil/ImageDecoderSupportRegion;->resetStream(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isRegionDecodeFace()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getRegionDecodeRect()Landroid/graphics/RectF;

    move-result-object v3

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 71
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v5

    iget-object v6, v1, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    iget v6, v6, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->exifOrientation:I

    .line 68
    invoke-static {v3, v2, v4, v5, v6}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->decodeFaceRegion(Landroid/graphics/RectF;Ljava/io/InputStream;FII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 80
    .local v0, "decodedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 83
    if-nez v0, :cond_1

    .line 84
    const-string v3, "Image can\'t be decoded [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .end local v0    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imageInfo":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    .end local v2    # "imageStream":Ljava/io/InputStream;
    :goto_1
    return-object v0

    .line 74
    .restart local v1    # "imageInfo":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    .restart local v2    # "imageStream":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getRegionDecodeRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 76
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v4

    .line 73
    invoke-static {v3, v2, v4}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->decodeRegion(Landroid/graphics/RectF;Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "decodedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 80
    .end local v0    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imageInfo":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .line 86
    .restart local v0    # "decodedBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "imageInfo":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    :cond_1
    iget-object v3, v1, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    iget v3, v3, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    iget-object v4, v1, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    iget-boolean v4, v4, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    invoke-virtual {p0, v0, p1, v3, v4}, Lcom/miui/gallery/util/uil/ImageDecoderSupportRegion;->considerExactScaleAndOrientation(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 92
    .end local v0    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imageInfo":Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    .end local v2    # "imageStream":Ljava/io/InputStream;
    :cond_2
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method protected getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
    .locals 2
    .param p1, "decodingInfo"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->isSecretImage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getSecretKey()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v0

    .line 101
    .local v0, "imageStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->getSecretKey()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/uil/CryptUtil;->getDecryptCipherInputStream(Ljava/io/InputStream;[B)Ljavax/crypto/CipherInputStream;

    move-result-object v1

    .line 107
    .end local v0    # "imageStream":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 104
    .restart local v0    # "imageStream":Ljava/io/InputStream;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 107
    .end local v0    # "imageStream":Ljava/io/InputStream;
    :cond_1
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method
