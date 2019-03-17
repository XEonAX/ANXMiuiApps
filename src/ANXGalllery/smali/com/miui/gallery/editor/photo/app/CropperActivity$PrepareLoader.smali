.class Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CropperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/CropperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mDecodeResult:Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "image"    # Landroid/net/Uri;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 167
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->mUri:Landroid/net/Uri;

    .line 168
    return-void
.end method

.method private getPhotoRotation(Landroid/net/Uri;)I
    .locals 5
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 243
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_1

    .line 245
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v1    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    sget-object v3, Lcom/miui/gallery/util/ExifUtil;->sSupportExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    invoke-interface {v3, v2}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/media/ExifInterface;

    invoke-static {v3}, Lcom/miui/gallery/util/ExifUtil;->getRotationDegrees(Landroid/support/media/ExifInterface;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 253
    if-eqz v2, :cond_0

    .line 255
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 261
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :goto_1
    return v3

    .line 256
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "CropperActivity"

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_3
    const-string v3, "CropperActivity"

    const-string v4, "no stream opened"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    if-eqz v1, :cond_2

    .line 255
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 261
    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 256
    :catch_1
    move-exception v0

    .line 257
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "CropperActivity"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v3, "CropperActivity"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 253
    if-eqz v1, :cond_2

    .line 255
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 256
    :catch_3
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "CropperActivity"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 253
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v1, :cond_3

    .line 255
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 258
    :cond_3
    :goto_5
    throw v3

    .line 256
    :catch_4
    move-exception v0

    .line 257
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "CropperActivity"

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 253
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 250
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_3
.end method

.method private rotateBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "rotation"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 265
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 266
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 267
    const/4 v8, 0x0

    .line 269
    .local v8, "re":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 273
    :goto_0
    return-object v8

    .line 270
    :catch_0
    move-exception v7

    .line 271
    .local v7, "error":Ljava/lang/OutOfMemoryError;
    const-string v0, "CropperActivity"

    const-string v1, "rotateBitmap OutOfMemoryError"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sampleSize(Landroid/net/Uri;)I
    .locals 8
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    .line 211
    const/4 v2, 0x0

    .line 214
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 215
    if-eqz v2, :cond_2

    .line 216
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 219
    .local v4, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 220
    const/4 v7, 0x0

    invoke-static {v3, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 222
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit16 v7, v7, 0x800

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 223
    .local v1, "heightScale":I
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit16 v7, v7, 0x800

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 224
    .local v5, "widthScale":I
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 229
    if-eqz v3, :cond_0

    .line 231
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 237
    .end local v1    # "heightScale":I
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "widthScale":I
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return v6

    .line 232
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "heightScale":I
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "opt":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "widthScale":I
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "CropperActivity"

    invoke-static {v7, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 229
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "heightScale":I
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "widthScale":I
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_2
    if-eqz v2, :cond_1

    .line 231
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 232
    :catch_1
    move-exception v0

    .line 233
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "CropperActivity"

    invoke-static {v7, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 227
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v7, "CropperActivity"

    invoke-static {v7, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    if-eqz v2, :cond_1

    .line 231
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 232
    :catch_3
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "CropperActivity"

    invoke-static {v7, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 229
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v2, :cond_3

    .line 231
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 234
    :cond_3
    :goto_4
    throw v6

    .line 232
    :catch_4
    move-exception v0

    .line 233
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "CropperActivity"

    invoke-static {v7, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 229
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 226
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method


# virtual methods
.method public deliverResult(Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;)V
    .locals 1
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->mDecodeResult:Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 295
    :cond_1
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 161
    check-cast p1, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->deliverResult(Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;)V

    return-void
.end method

.method public loadInBackground()Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;
    .locals 10

    .prologue
    .line 172
    const/4 v3, 0x0

    .line 174
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 175
    if-eqz v3, :cond_3

    .line 176
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 178
    .local v5, "opt":Landroid/graphics/BitmapFactory$Options;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->sampleSize(Landroid/net/Uri;)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 179
    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->getPhotoRotation(Landroid/net/Uri;)I

    move-result v1

    .line 182
    .local v1, "degree":I
    if-eqz v1, :cond_0

    .line 183
    const-string v6, "CropperActivity"

    const-string v7, "rotate image by %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->rotateBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    :cond_0
    const-string v6, "CropperActivity"

    const-string v7, "sample size is %dx%d"

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    new-instance v6, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    if-eqz v4, :cond_1

    .line 202
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v3, v4

    .line 205
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "degree":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "opt":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_1
    return-object v6

    .line 203
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "degree":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "CropperActivity"

    invoke-static {v7, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 190
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "degree":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "opt":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_3
    :try_start_3
    const-string v6, "CropperActivity"

    const-string v7, "no stream return."

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v6, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    if-eqz v3, :cond_2

    .line 202
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 203
    :catch_1
    move-exception v2

    .line 204
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "CropperActivity"

    invoke-static {v7, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 193
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 194
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v6, "CropperActivity"

    invoke-static {v6, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    new-instance v6, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v2}, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 200
    if-eqz v3, :cond_2

    .line 202
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 203
    :catch_3
    move-exception v2

    .line 204
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "CropperActivity"

    invoke-static {v7, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 196
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/SecurityException;
    :goto_3
    :try_start_7
    const-string v6, "CropperActivity"

    invoke-static {v6, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    new-instance v6, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v2}, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 200
    if-eqz v3, :cond_2

    .line 202
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 203
    :catch_5
    move-exception v2

    .line 204
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "CropperActivity"

    invoke-static {v7, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_4

    .line 202
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 205
    :cond_4
    :goto_5
    throw v6

    .line 203
    :catch_6
    move-exception v2

    .line 204
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "CropperActivity"

    invoke-static {v7, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 196
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 193
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->loadInBackground()Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->mDecodeResult:Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    .line 301
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 279
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->mDecodeResult:Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->forceLoad()V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->mDecodeResult:Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;->deliverResult(Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;)V

    goto :goto_0
.end method
