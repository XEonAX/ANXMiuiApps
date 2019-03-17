.class public Lcom/xiaomi/scanner/module/code/codec/QRCodeEncoder;
.super Ljava/lang/Object;
.source "QRCodeEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeText(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "imageLenth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 21
    const/high16 v0, -0x1000000

    invoke-static {p0, p1, v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeEncoder;->encodeText(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static encodeText(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "imageLenth"    # I
    .param p2, "blockColor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeEncoder;->encodeTextToBitMatrix(Ljava/lang/String;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 26
    .local v0, "matrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v4, p1, p1

    new-array v1, v4, [I

    .line 27
    .local v1, "pixels":[I
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    if-ge v3, p1, :cond_2

    .line 28
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    if-ge v2, p1, :cond_1

    .line 29
    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    mul-int v4, v3, p1

    add-int/2addr v4, v2

    aput p2, v1, v4

    .line 28
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 32
    :cond_0
    mul-int v4, v3, p1

    add-int/2addr v4, v2

    const/4 v5, -0x1

    aput v5, v1, v4

    goto :goto_2

    .line 27
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    .end local v2    # "x":I
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p1, p1, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method public static encodeTextToBitMatrix(Ljava/lang/String;I)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "imageLenth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 16
    .local v5, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "utf-8"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v1, p0

    move v3, p1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method
