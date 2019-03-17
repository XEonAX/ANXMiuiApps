.class public Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;
.super Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;
.source "Gen3InputParameters.java"


# instance fields
.field public bgImage_channel:I

.field public bgImage_data:[B

.field public bgImage_height:I

.field public bgImage_step:I

.field public bgImage_width:I

.field public domainIndex:C

.field public gen3format:I

.field public hiddenData:Ljava/lang/String;

.field public margin:I

.field public qrX:I

.field public qrY:I

.field public visual_level:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "_publicData"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->publicData:Ljava/lang/String;

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->type:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->visual_level:I

    .line 35
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrX:I

    .line 36
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrY:I

    .line 37
    const/16 v0, 0x30

    iput-char v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->domainIndex:C

    .line 38
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrSize:I

    .line 39
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->gen3format:I

    .line 40
    invoke-virtual {p0, p2}, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->initializeGen3InputBackgroundPictureParameters(Landroid/graphics/Bitmap;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;ICI)V
    .locals 2
    .param p1, "_publicData"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "_visual_level"    # I
    .param p4, "_domain"    # C
    .param p5, "_version"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->publicData:Ljava/lang/String;

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->type:I

    .line 78
    iput p3, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->visual_level:I

    .line 79
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrX:I

    .line 80
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrY:I

    .line 81
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrSize:I

    .line 82
    iput-char p4, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->domainIndex:C

    .line 83
    iput p5, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->version:I

    .line 84
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->gen3format:I

    .line 85
    invoke-virtual {p0, p2}, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->initializeGen3InputBackgroundPictureParameters(Landroid/graphics/Bitmap;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;ICII)V
    .locals 2
    .param p1, "_publicData"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "_visual_level"    # I
    .param p4, "_domain"    # C
    .param p5, "_version"    # I
    .param p6, "_gen3format"    # I

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->publicData:Ljava/lang/String;

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->type:I

    .line 63
    iput p3, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->visual_level:I

    .line 64
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrX:I

    .line 65
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrY:I

    .line 66
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrSize:I

    .line 67
    iput-char p4, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->domainIndex:C

    .line 68
    iput p5, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->version:I

    .line 69
    iput p6, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->gen3format:I

    .line 70
    invoke-virtual {p0, p2}, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->initializeGen3InputBackgroundPictureParameters(Landroid/graphics/Bitmap;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;IIIICI)V
    .locals 1
    .param p1, "_publicData"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "_qrX"    # I
    .param p4, "_qrY"    # I
    .param p5, "_qrSize"    # I
    .param p6, "_visual_level"    # I
    .param p7, "_domain"    # C
    .param p8, "_version"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->publicData:Ljava/lang/String;

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->type:I

    .line 48
    iput p6, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->visual_level:I

    .line 49
    iput p3, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrX:I

    .line 50
    iput p4, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrY:I

    .line 51
    iput p5, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrSize:I

    .line 52
    iput-char p7, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->domainIndex:C

    .line 53
    iput p8, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->version:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->gen3format:I

    .line 55
    invoke-virtual {p0, p2}, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->initializeGen3InputBackgroundPictureParameters(Landroid/graphics/Bitmap;)V

    .line 56
    return-void
.end method


# virtual methods
.method public initializeGen3InputBackgroundPictureParameters(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x3

    .line 90
    const-string v2, "Gen3.initializeGen3InputBackgroundPictureParameters"

    invoke-static {v2}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    .line 93
    .local v0, "__channel":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p1, v2, v3, v0}, Lcom/taobao/ma/encode/ImageHelper;->getPixelDataRGB(Landroid/graphics/Bitmap;III)[B

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_data:[B

    .line 95
    const/4 v2, 0x3

    iput v2, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_channel:I

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_width:I

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_height:I

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_step:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "__channel":I
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v1

    .line 101
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isLegal()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-super {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->isLegal()Z

    .line 109
    const-string v1, "Gen3.isLegal1"

    invoke-static {v1}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    .line 110
    iget v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_width:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->bgImage_height:I

    if-gtz v1, :cond_1

    .line 112
    :cond_0
    const-string v1, "Gen3.isLegal2"

    invoke-static {v1}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ERROR: background image\' width or height or channel is ilegal\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->errorMsg:Ljava/lang/String;

    .line 125
    :goto_0
    return v0

    .line 117
    :cond_1
    iget v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->visual_level:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrX:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->qrY:I

    if-gez v1, :cond_3

    .line 119
    :cond_2
    const-string v1, "Gen3.isLegal3"

    invoke-static {v1}, Lcom/taobao/ma/common/log/MaLogger;->v(Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ERROR: qrX,qrY,visual_level,domainIndex\n error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen3InputParameters;->errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_3
    const-string v0, "masdk209"

    const-string v1, "Gen3.isLegal4"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x1

    goto :goto_0
.end method
