.class public Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;
.super Ljava/lang/Object;
.source "QRCodeDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$RGBLuminanceSource;,
        Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "QRCodeDecoder"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 70
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 71
    .local v0, "height":I
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 72
    .local v2, "width":I
    const/4 v1, 0x1

    .line 74
    .local v1, "inSampleSize":I
    :goto_0
    div-int v3, v0, v1

    if-le v3, p2, :cond_0

    div-int v3, v2, v1

    if-le v3, p1, :cond_0

    .line 75
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 77
    :cond_0
    return v1
.end method

.method public static decode(Landroid/content/Context;Landroid/graphics/YuvImage;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yuvImage"    # Landroid/graphics/YuvImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/YuvImage;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 31
    .local v4, "result":Lcom/google/zxing/Result;
    new-instance v5, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;

    invoke-direct {v5, p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;-><init>(Landroid/graphics/YuvImage;)V

    .line 32
    .local v5, "source":Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v6, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v6, v5}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 33
    .local v0, "bitmap":Lcom/google/zxing/BinaryBitmap;
    new-instance v2, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v2}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 34
    .local v2, "multiFormatReader":Lcom/google/zxing/MultiFormatReader;
    invoke-virtual {v2, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 36
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 42
    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 44
    :goto_0
    return-object v4

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Lcom/google/zxing/ReaderException;
    :try_start_1
    sget-object v6, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v7, "ReaderException"

    invoke-static {v6, v7, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    .line 39
    .end local v1    # "e":Lcom/google/zxing/ReaderException;
    :catch_1
    move-exception v3

    .line 40
    .local v3, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_2
    sget-object v6, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v7, "decode oom, crop size"

    invoke-static {v6, v7, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    .end local v3    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v6
.end method

.method public static decode(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;
    .locals 9
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 82
    sget-object v7, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "bmp is null"

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    const/4 v5, 0x0

    .line 102
    :goto_0
    return-object v5

    .line 85
    :cond_0
    const/4 v5, 0x0

    .line 86
    .local v5, "result":Lcom/google/zxing/Result;
    new-instance v6, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$RGBLuminanceSource;

    invoke-direct {v6, p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$RGBLuminanceSource;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local v6, "source":Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$RGBLuminanceSource;
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v7, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v7, v6}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 88
    .local v0, "binary":Lcom/google/zxing/BinaryBitmap;
    new-instance v4, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v4}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 89
    .local v4, "reader":Lcom/google/zxing/MultiFormatReader;
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 90
    .local v3, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 91
    .local v1, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    sget-object v7, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 92
    sget-object v7, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 93
    sget-object v7, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 94
    sget-object v7, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v3, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v7, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string v8, "UTF-8"

    invoke-virtual {v3, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :try_start_0
    invoke-virtual {v4, v3}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 98
    invoke-virtual {v4, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "Exception"

    invoke-static {v7, v8, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Lcom/google/zxing/Result;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 48
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 49
    :cond_0
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "path is null"

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    const/4 v3, 0x0

    .line 66
    :cond_1
    :goto_0
    return-object v3

    .line 53
    :cond_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 56
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 58
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 59
    .local v2, "realWidth":I
    invoke-static {v1, v2, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 60
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->decode(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;

    move-result-object v3

    .line 62
    .local v3, "result":Lcom/google/zxing/Result;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method
