.class public Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;
.super Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;
.source "LogoBWInputParameters.java"


# instance fields
.field public logoChannel:I

.field public logoData:[B

.field public logoHeight:I

.field public logoSize:I

.field private logoStep:I

.field public logoWidth:I

.field public logoX:I

.field public logoY:I

.field public margin:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;IIC)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "logo"    # Landroid/graphics/Bitmap;
    .param p3, "_margin"    # I
    .param p4, "_qrSize"    # I
    .param p5, "ecl"    # C

    .prologue
    const/4 v1, 0x4

    .line 23
    invoke-direct {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;-><init>()V

    .line 25
    iput-char p5, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->errorCorrectionLevel:C

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->rotation:I

    .line 27
    iput p4, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->qrSize:I

    .line 28
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->version:I

    .line 29
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->type:I

    .line 30
    iput p3, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->margin:I

    .line 31
    invoke-virtual {p0, p2}, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->initializeLogoPictureParameters(Landroid/graphics/Bitmap;)V

    .line 32
    iput-object p1, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->publicData:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;IICI)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "logo"    # Landroid/graphics/Bitmap;
    .param p3, "_margin"    # I
    .param p4, "_qrSize"    # I
    .param p5, "ecl"    # C
    .param p6, "_version"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;-><init>()V

    .line 37
    iput-char p5, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->errorCorrectionLevel:C

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->rotation:I

    .line 39
    iput p4, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->qrSize:I

    .line 40
    iput p6, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->version:I

    .line 41
    const/4 v0, 0x4

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->type:I

    .line 42
    iput p3, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->margin:I

    .line 43
    invoke-virtual {p0, p2}, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->initializeLogoPictureParameters(Landroid/graphics/Bitmap;)V

    .line 44
    iput-object p1, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->publicData:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public initializeLogoPictureParameters(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x3

    .line 54
    const-string v2, "Gen3.initializeGen3InputBackgroundPictureParameters"

    invoke-static {v2}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    .line 57
    .local v0, "__channel":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p1, v2, v3, v0}, Lcom/taobao/ma/encode/ImageHelper;->getPixelDataRGB(Landroid/graphics/Bitmap;III)[B

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoData:[B

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoData:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    .line 59
    const/4 v2, 0x3

    iput v2, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoChannel:I

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoWidth:I

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoHeight:I

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/taobao/ma/encode/InputParameters/LogoBWInputParameters;->logoStep:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "__channel":I
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 65
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isLegal()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method
