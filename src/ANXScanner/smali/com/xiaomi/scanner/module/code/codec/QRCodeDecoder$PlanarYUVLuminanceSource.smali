.class Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "QRCodeDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlanarYUVLuminanceSource"
.end annotation


# instance fields
.field private final mYuvImage:Landroid/graphics/YuvImage;


# direct methods
.method public constructor <init>(Landroid/graphics/YuvImage;)V
    .locals 2
    .param p1, "yuvImage"    # Landroid/graphics/YuvImage;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 110
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;->mYuvImage:Landroid/graphics/YuvImage;

    .line 111
    return-void
.end method


# virtual methods
.method public getMatrix()[B
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;->mYuvImage:Landroid/graphics/YuvImage;

    invoke-virtual {v0}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v0

    return-object v0
.end method

.method public getRow(I[B)[B
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # [B

    .prologue
    .line 115
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;->getHeight()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 116
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested row is outside the image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;->getWidth()I

    move-result v1

    .line 120
    .local v1, "width":I
    if-eqz p2, :cond_2

    array-length v2, p2

    if-ge v2, v1, :cond_3

    .line 121
    :cond_2
    new-array p2, v1, [B

    .line 123
    :cond_3
    mul-int v0, p1, v1

    .line 124
    .local v0, "offset":I
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;->mYuvImage:Landroid/graphics/YuvImage;

    invoke-virtual {v2}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    return-object p2
.end method
