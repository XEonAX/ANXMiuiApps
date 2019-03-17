.class public Lcom/taobao/ma/encode/api/MaEncodeAPI;
.super Ljava/lang/Object;
.source "MaEncodeAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeMa(Ljava/lang/String;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "qrType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 22
    const/16 v0, 0x30

    invoke-static {p0, p1, p2, v0}, Lcom/taobao/ma/decode/MaDecode;->encode(Ljava/lang/String;Landroid/graphics/Bitmap;IC)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static encodeMa2(Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "input"    # Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;

    .prologue
    .line 32
    const-string v0, "encodeMa2"

    invoke-static {v0}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lcom/taobao/ma/encode/MaGenerator;->facade(Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
