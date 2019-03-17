.class public Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;
.super Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;
.source "Gen1InputParameters.java"


# instance fields
.field public background_img:[B

.field public background_img_channel:I

.field public background_img_depth:I

.field public background_img_height:I

.field public background_img_width:I

.field public hiddenData:Ljava/lang/String;

.field public margin:I

.field public qrX:I

.field public qrY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->type:I

    .line 20
    return-void
.end method


# virtual methods
.method public isLegal()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-super {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->isLegal()Z

    .line 28
    iget-object v3, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->background_img:[B

    array-length v3, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->background_img_width:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->background_img_width:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->background_img_channel:I

    if-gtz v3, :cond_1

    .line 30
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->errorMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ERROR: background image\' width or height or channel is ilegal\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->errorMsg:Ljava/lang/String;

    .line 44
    :goto_0
    return v2

    .line 33
    :cond_1
    iget v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->margin:I

    .line 34
    .local v0, "_margin4calc":I
    iget v3, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->margin:I

    if-gtz v3, :cond_2

    const/4 v0, 0x0

    .line 36
    :cond_2
    iget v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->version:I

    .line 37
    .local v1, "_version4calc":I
    iget v3, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->version:I

    if-gtz v3, :cond_3

    const/4 v1, 0x0

    .line 38
    :cond_3
    iget v3, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->qrSize:I

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x11

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    rem-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->errorMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ERROR: width , version , margin should according to the formula:  width % (17 + _version *4 + 2*margin) == 0 \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/ma/encode/InputParameters/Gen1InputParameters;->errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method
