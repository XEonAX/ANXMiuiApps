.class public final Lcom/zxing/encoding/EncodingHandler;
.super Ljava/lang/Object;
.source "EncodingHandler.java"


# direct methods
.method public static createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "widthAndHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 21
    .local v8, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    sget-object v4, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string/jumbo v5, "utf-8"

    invoke-virtual {v8, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v4, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v4}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4, p0, v5, p1, p1}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    .line 24
    .local v9, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 25
    .local v3, "width":I
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 26
    .local v7, "height":I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .line 28
    .local v1, "pixels":[I
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_0
    if-ge v11, v7, :cond_2

    .line 29
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_1
    if-ge v10, v3, :cond_1

    .line 30
    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    mul-int v4, v11, v3

    add-int/2addr v4, v10

    const/high16 v5, -0x1000000

    aput v5, v1, v4

    .line 29
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 35
    .end local v10    # "x":I
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move v4, v2

    move v5, v2

    move v6, v3

    .line 37
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 38
    return-object v0
.end method
