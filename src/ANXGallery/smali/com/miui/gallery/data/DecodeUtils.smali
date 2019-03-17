.class public Lcom/miui/gallery/data/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;
    }
.end annotation


# static fields
.field private static final GIF_CVT_JPEG_CACHE:Lcom/miui/gallery/data/GifCvtJpegCache;

.field public static final LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/DecodeUtils;->LOCK:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/miui/gallery/data/GifCvtJpegCache;

    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->getInternalCacheDir()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/data/GifCvtJpegCache;-><init>(Ljava/io/File;I)V

    sput-object v0, Lcom/miui/gallery/data/DecodeUtils;->GIF_CVT_JPEG_CACHE:Lcom/miui/gallery/data/GifCvtJpegCache;

    return-void
.end method

.method public static considerOrientation(Landroid/graphics/Bitmap;Lcom/miui/gallery/util/ExifUtil$ExifInfo;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "exifInfo"    # Lcom/miui/gallery/util/ExifUtil$ExifInfo;

    .prologue
    const/4 v1, 0x0

    .line 47
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 50
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz p1, :cond_0

    .line 53
    const/4 v9, 0x0

    .line 54
    .local v9, "shouldMatrix":Z
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 56
    .local v5, "m":Landroid/graphics/Matrix;
    iget-boolean v0, p1, Lcom/miui/gallery/util/ExifUtil$ExifInfo;->flip:Z

    if-eqz v0, :cond_2

    .line 57
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 58
    const/4 v9, 0x1

    .line 61
    :cond_2
    iget v0, p1, Lcom/miui/gallery/util/ExifUtil$ExifInfo;->rotation:I

    if-eqz v0, :cond_3

    .line 62
    iget v0, p1, Lcom/miui/gallery/util/ExifUtil$ExifInfo;->rotation:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 63
    const/4 v9, 0x1

    .line 66
    :cond_3
    if-eqz v9, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/util/BitmapUtils;->safeCreateBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;ZLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 68
    .local v8, "finalBitmap":Landroid/graphics/Bitmap;
    if-eq v8, p0, :cond_4

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object p0, v8

    .line 71
    goto :goto_0
.end method

.method public static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 297
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p0

    .line 300
    :goto_0
    return-object v0

    .line 298
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static requestDecodeThumbNail(Ljava/io/FileDescriptor;Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;Lcom/miui/gallery/util/BitmapUtils$BitmapDimension;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "options"    # Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;
    .param p2, "sourceFileDimension"    # Lcom/miui/gallery/util/BitmapUtils$BitmapDimension;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 208
    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;

    .end local p1    # "options":Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;
    invoke-direct {p1}, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;-><init>()V

    .line 210
    .restart local p1    # "options":Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p1, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inJustDecodeBounds:Z

    .line 211
    const/4 v6, 0x0

    invoke-static {p0, v6, p1}, Lcom/miui/gallery/util/GalleryUtils;->safeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;)Landroid/graphics/Bitmap;

    .line 214
    iget v1, p1, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->outWidth:I

    .line 215
    .local v1, "bitmapWidth":I
    iget v0, p1, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->outHeight:I

    .line 217
    .local v0, "bitmapHeight":I
    if-eqz p2, :cond_1

    .line 218
    iput v1, p2, Lcom/miui/gallery/util/BitmapUtils$BitmapDimension;->width:I

    .line 219
    iput v0, p2, Lcom/miui/gallery/util/BitmapUtils$BitmapDimension;->height:I

    .line 222
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 223
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 224
    .local v5, "windowWidth":I
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 225
    .local v4, "windowHeigh":I
    invoke-static {v1, v0, v5, v4}, Lcom/miui/gallery/util/BitmapUtils;->computeThumbNailSampleSize(IIII)I

    move-result v3

    .line 226
    .local v3, "sampleSize":I
    iput v3, p1, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    .line 227
    iput-boolean v7, p1, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inJustDecodeBounds:Z

    .line 228
    iput-boolean v7, p1, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inPurgeable:Z

    .line 229
    iput-boolean v7, p1, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inInputShareable:Z

    .line 232
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->needOptimizeForLowMemory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 233
    sget-object v7, Lcom/miui/gallery/data/DecodeUtils;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 234
    :try_start_0
    invoke-static {p1, v5, v4, p3}, Lcom/miui/gallery/data/DecodeUtils;->tryDecodeAndFit(Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    monitor-exit v7

    .line 238
    :goto_0
    return-object v6

    .line 235
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 238
    :cond_2
    invoke-static {p1, v5, v4, p3}, Lcom/miui/gallery/data/DecodeUtils;->tryDecodeAndFit(Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method public static requestDecodeThumbNail(Ljava/lang/String;Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/data/DecodeUtils;->requestDecodeThumbNail(Ljava/lang/String;Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;Lcom/miui/gallery/util/BitmapUtils$BitmapDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static requestDecodeThumbNail(Ljava/lang/String;Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;Lcom/miui/gallery/util/BitmapUtils$BitmapDimension;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;
    .param p2, "sourceFileDimension"    # Lcom/miui/gallery/util/BitmapUtils$BitmapDimension;

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 194
    .local v3, "result":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4, p1, p2, p0}, Lcom/miui/gallery/data/DecodeUtils;->requestDecodeThumbNail(Ljava/io/FileDescriptor;Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;Lcom/miui/gallery/util/BitmapUtils$BitmapDimension;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 201
    invoke-static {v2}, Lcom/miui/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 203
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v3

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    invoke-static {v1}, Lcom/miui/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    invoke-static {v1}, Lcom/miui/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v1}, Lcom/miui/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 198
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 196
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static tryDecodeAndFit(Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "options"    # Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v7, 0x0

    .line 244
    .local v7, "result":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 245
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 246
    .local v6, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    const/4 v8, 0x0

    .local v8, "tryCount":I
    move-object v5, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_4

    if-nez v7, :cond_4

    .line 251
    const/4 v3, 0x0

    .line 252
    .local v3, "fileDescriptor":Ljava/io/FileDescriptor;
    if-eqz p3, :cond_0

    .line 253
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 261
    :goto_1
    const/4 v9, 0x0

    invoke-static {v3, v9, p0}, Lcom/miui/gallery/util/GalleryUtils;->safeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 262
    if-nez v7, :cond_1

    .line 285
    iget v9, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    .line 286
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 287
    invoke-static {v6}, Lcom/miui/gallery/util/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 246
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object v5, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .line 256
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->getFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 257
    if-eqz v6, :cond_5

    .line 258
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .line 267
    :cond_1
    :try_start_3
    invoke-static {v7}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 275
    :cond_2
    :try_start_4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 276
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 275
    invoke-static {v9, v10, p1, p2}, Lcom/miui/gallery/util/BitmapUtils;->isBitmapInScreen(IIII)Z

    move-result v9

    if-nez v9, :cond_3

    .line 277
    const/4 v9, 0x1

    invoke-static {v7, p1, p2, v9}, Lcom/miui/gallery/util/BitmapUtils;->fitBitmapToScreen(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 285
    :cond_3
    iget v9, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    .line 286
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 287
    invoke-static {v6}, Lcom/miui/gallery/util/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_2

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 270
    const-string v9, "DecodeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decoded bitmap type error, IllegalArgumentException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {v7}, Lcom/miui/gallery/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v7

    .line 272
    if-nez v7, :cond_2

    .line 285
    iget v9, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    .line 286
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 287
    invoke-static {v6}, Lcom/miui/gallery/util/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_2

    .line 280
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    move-object v4, v5

    .line 281
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v1, "error":Ljava/lang/OutOfMemoryError;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    const-string v9, "DecodeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decode and fit is out of memory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 285
    iget v9, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    .line 286
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 287
    invoke-static {v6}, Lcom/miui/gallery/util/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_2

    .line 282
    .end local v1    # "error":Ljava/lang/OutOfMemoryError;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v4, v5

    .line 283
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v2, "ex":Ljava/lang/Throwable;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :goto_4
    :try_start_7
    const-string v9, "DecodeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unkown exception in decode and fit:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 285
    iget v9, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    .line 286
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 287
    invoke-static {v6}, Lcom/miui/gallery/util/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_2

    .line 285
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v9

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :goto_5
    iget v10, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    mul-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->inSampleSize:I

    .line 286
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 287
    invoke-static {v6}, Lcom/miui/gallery/util/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v9

    .line 290
    .end local v3    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_4
    const/4 v9, 0x0

    invoke-static {p3, v9}, Lcom/miui/gallery/util/ExifUtil;->parseRotationInfo(Ljava/lang/String;[B)Lcom/miui/gallery/util/ExifUtil$ExifInfo;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/miui/gallery/data/DecodeUtils;->considerOrientation(Landroid/graphics/Bitmap;Lcom/miui/gallery/util/ExifUtil$ExifInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 285
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    goto :goto_5

    .line 282
    :catch_3
    move-exception v2

    goto :goto_4

    .line 280
    :catch_4
    move-exception v1

    goto :goto_3

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_5
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method
