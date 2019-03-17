.class public Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;
.super Ljava/lang/Object;
.source "MaEncodeInputParameters.java"


# instance fields
.field public errorCorrectionLevel:C

.field public errorMsg:Ljava/lang/String;

.field public publicData:Ljava/lang/String;

.field public qrSize:I

.field public rotation:I

.field public type:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->type:I

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->publicData:Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->qrSize:I

    .line 11
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->version:I

    .line 12
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->rotation:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->errorMsg:Ljava/lang/String;

    .line 19
    const/16 v0, 0x4c

    iput-char v0, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->errorCorrectionLevel:C

    .line 20
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->rotation:I

    .line 21
    iput v1, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->qrSize:I

    .line 22
    const/4 v0, 0x4

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->version:I

    .line 23
    return-void
.end method


# virtual methods
.method public isLegal()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 26
    iget v1, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->qrSize:I

    if-gtz v1, :cond_0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ERROR: qrSize <=0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->errorMsg:Ljava/lang/String;

    .line 43
    :goto_0
    return v0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->publicData:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ERROR: publicData cant be null \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
