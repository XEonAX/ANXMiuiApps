.class public Lcom/xiaomi/scanner/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ImageUtils"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 70
    .local v4, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 71
    .local v3, "h":I
    const/4 v0, 0x0

    .line 73
    .local v0, "b":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    .local v1, "c":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v4, v3}, Landroid/view/View;->layout(IIII)V

    .line 76
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1    # "c":Landroid/graphics/Canvas;
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadBitmapFromView error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadImageFromServer(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 86
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 87
    .local v1, "con":Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 88
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 89
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 90
    .local v4, "in":Ljava/io/InputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 91
    .local v0, "buf":[B
    const/4 v5, 0x0

    .line 92
    .local v5, "len":I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    .line 94
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v0    # "buf":[B
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v8, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadImageFromServer error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    const/4 v8, 0x0

    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v8

    .line 96
    .restart local v0    # "buf":[B
    .restart local v1    # "con":Ljava/net/HttpURLConnection;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v6    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 97
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 98
    .local v2, "data":[B
    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_1
.end method

.method public static rectifyBitmap(Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "result"    # Lcom/xiaomi/recognizer/RecognizeResult;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/scanner/util/ImageUtils;->rectifyBitmap(Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rectifyBitmap(Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "corners"    # Lcom/xiaomi/recognizer/RecognizeResult;
    .param p2, "enhance"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 34
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v1, v4, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 35
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "rectifyBitmap: invalid bitmap!"

    invoke-static {v1, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 46
    :goto_0
    return-object v0

    .line 38
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    array-length v1, v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_3

    .line 40
    :cond_2
    sget-object v1, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rectifyBitmap: invalid corners "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 44
    .local v2, "start":J
    iget-object v1, p1, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    invoke-static {p0, v1, p2}, Lcom/xiaomi/recognizer/Quadrangle;->rectify(Landroid/graphics/Bitmap;[FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "rectified":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rectifyBitmap: cost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveJpeg(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 14
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 51
    .local v2, "dataTake":J
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->instance()Lcom/xiaomi/scanner/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/scanner/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/xiaomi/scanner/util/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ".jpg"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "jpegPath":Ljava/lang/String;
    invoke-static {p0, v7, v4}, Lcom/xiaomi/scanner/util/Util;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v12

    .line 54
    .local v12, "succeed":Z
    if-eqz v12, :cond_0

    .line 55
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 58
    .local v5, "fileLength":J
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const-string v10, "image/jpeg"

    .line 57
    invoke-static/range {v0 .. v10}, Lcom/xiaomi/scanner/util/Util;->addImageToMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;JIJLjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 60
    .local v13, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveJpeg: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "->"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    .end local v5    # "fileLength":J
    .end local v7    # "jpegPath":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v7

    .line 63
    .restart local v7    # "jpegPath":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveJpeg: fail to save "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    const/4 v7, 0x0

    goto :goto_0
.end method
