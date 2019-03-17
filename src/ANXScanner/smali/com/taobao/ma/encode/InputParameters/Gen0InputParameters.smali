.class public Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;
.super Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;
.source "Gen0InputParameters.java"


# static fields
.field private static final MAX_MARGIN:I = 0x14


# instance fields
.field public hiddenData:Ljava/lang/String;

.field public margin:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 1
    .param p1, "_qrSize"    # I
    .param p2, "_margin"    # I
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "_version"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->type:I

    .line 18
    iput-object p3, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->publicData:Ljava/lang/String;

    .line 19
    iput p1, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->qrSize:I

    .line 20
    iput p2, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->margin:I

    .line 21
    iput p4, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->version:I

    .line 22
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "_qrSize"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;-><init>()V

    .line 26
    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->type:I

    .line 27
    iput-object p2, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->publicData:Ljava/lang/String;

    .line 28
    iput p1, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->qrSize:I

    .line 29
    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->margin:I

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "_qrSize"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "_hidden"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;-><init>()V

    .line 44
    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->type:I

    .line 45
    iput-object p3, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->hiddenData:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->publicData:Ljava/lang/String;

    .line 47
    iput p1, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->qrSize:I

    .line 48
    iput v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->margin:I

    .line 60
    return-void
.end method

.method private calcMargin(II)I
    .locals 6
    .param p1, "version"    # I
    .param p2, "_qrSize"    # I

    .prologue
    .line 66
    mul-int/lit8 v5, p1, 0x4

    add-int/lit8 v0, v5, 0x11

    .line 67
    .local v0, "__dim":I
    div-int v3, p2, v0

    .line 68
    .local v3, "cellSize":I
    rem-int v4, p2, v0

    .line 69
    .local v4, "mod":I
    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    const/4 v1, 0x0

    .local v1, "__margin":I
    :goto_1
    const/16 v5, 0x14

    if-gt v1, v5, :cond_2

    .line 73
    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    rem-int v2, p2, v5

    .line 74
    .local v2, "_mod":I
    if-eqz v2, :cond_0

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    .end local v2    # "_mod":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public isLegal()Z
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/taobao/ma/encode/InputParameters/MaEncodeInputParameters;->isLegal()Z

    .line 88
    iget v0, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->margin:I

    .line 89
    .local v0, "_margin4calc":I
    iget v1, p0, Lcom/taobao/ma/encode/InputParameters/Gen0InputParameters;->margin:I

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    .line 98
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
