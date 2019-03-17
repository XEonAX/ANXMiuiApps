.class public Lcom/taobao/ma/decode/DecodeResult;
.super Ljava/lang/Object;
.source "DecodeResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xfa5728004b6425dL


# instance fields
.field public bytes:[B

.field public decodeBytes:[B

.field public height:I

.field public hiddenData:Ljava/lang/String;

.field public strCode:Ljava/lang/String;

.field public subType:I

.field public type:I

.field public width:I

.field public x:I

.field public xCorner:[I

.field public y:I

.field public yCorner:[I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "strCode"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/taobao/ma/decode/DecodeResult;->type:I

    .line 55
    iput p2, p0, Lcom/taobao/ma/decode/DecodeResult;->subType:I

    .line 56
    iput-object p3, p0, Lcom/taobao/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/taobao/ma/decode/DecodeResult;->type:I

    .line 96
    iput p2, p0, Lcom/taobao/ma/decode/DecodeResult;->subType:I

    .line 97
    iput-object p3, p0, Lcom/taobao/ma/decode/DecodeResult;->bytes:[B

    .line 98
    return-void
.end method

.method public constructor <init>(II[BIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "bytes"    # [B
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/taobao/ma/decode/DecodeResult;->type:I

    .line 61
    iput p2, p0, Lcom/taobao/ma/decode/DecodeResult;->subType:I

    .line 62
    iput-object p3, p0, Lcom/taobao/ma/decode/DecodeResult;->bytes:[B

    .line 63
    iput p4, p0, Lcom/taobao/ma/decode/DecodeResult;->x:I

    .line 64
    iput p5, p0, Lcom/taobao/ma/decode/DecodeResult;->y:I

    .line 65
    iput p6, p0, Lcom/taobao/ma/decode/DecodeResult;->width:I

    .line 66
    iput p7, p0, Lcom/taobao/ma/decode/DecodeResult;->height:I

    .line 67
    return-void
.end method

.method public constructor <init>(II[BIIII[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "bytes"    # [B
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "decodeBytes"    # [B

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/taobao/ma/decode/DecodeResult;->type:I

    .line 71
    iput p2, p0, Lcom/taobao/ma/decode/DecodeResult;->subType:I

    .line 72
    iput-object p3, p0, Lcom/taobao/ma/decode/DecodeResult;->bytes:[B

    .line 73
    iput p4, p0, Lcom/taobao/ma/decode/DecodeResult;->x:I

    .line 74
    iput p5, p0, Lcom/taobao/ma/decode/DecodeResult;->y:I

    .line 75
    iput p6, p0, Lcom/taobao/ma/decode/DecodeResult;->width:I

    .line 76
    iput p7, p0, Lcom/taobao/ma/decode/DecodeResult;->height:I

    .line 77
    iput-object p8, p0, Lcom/taobao/ma/decode/DecodeResult;->decodeBytes:[B

    .line 78
    return-void
.end method

.method public constructor <init>(II[BIIII[BLjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "bytes"    # [B
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "decodeBytes"    # [B
    .param p9, "hiddenData"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/taobao/ma/decode/DecodeResult;->type:I

    .line 82
    iput p2, p0, Lcom/taobao/ma/decode/DecodeResult;->subType:I

    .line 83
    iput-object p3, p0, Lcom/taobao/ma/decode/DecodeResult;->bytes:[B

    .line 84
    iput p4, p0, Lcom/taobao/ma/decode/DecodeResult;->x:I

    .line 85
    iput p5, p0, Lcom/taobao/ma/decode/DecodeResult;->y:I

    .line 86
    iput p6, p0, Lcom/taobao/ma/decode/DecodeResult;->width:I

    .line 87
    iput p7, p0, Lcom/taobao/ma/decode/DecodeResult;->height:I

    .line 88
    iput-object p8, p0, Lcom/taobao/ma/decode/DecodeResult;->decodeBytes:[B

    .line 89
    iput-object p9, p0, Lcom/taobao/ma/decode/DecodeResult;->hiddenData:Ljava/lang/String;

    .line 90
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/taobao/ma/decode/DecodeResult;->xCorner:[I

    .line 91
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/taobao/ma/decode/DecodeResult;->yCorner:[I

    .line 92
    return-void
.end method

.method public constructor <init>(II[B[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "bytes"    # [B
    .param p4, "decodeBytes"    # [B

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/taobao/ma/decode/DecodeResult;->type:I

    .line 102
    iput p2, p0, Lcom/taobao/ma/decode/DecodeResult;->subType:I

    .line 103
    iput-object p3, p0, Lcom/taobao/ma/decode/DecodeResult;->bytes:[B

    .line 104
    iput-object p4, p0, Lcom/taobao/ma/decode/DecodeResult;->decodeBytes:[B

    .line 105
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecodeResult [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/ma/decode/DecodeResult;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/ma/decode/DecodeResult;->subType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/ma/decode/DecodeResult;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/ma/decode/DecodeResult;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/ma/decode/DecodeResult;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/ma/decode/DecodeResult;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/ma/decode/DecodeResult;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decodeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/ma/decode/DecodeResult;->decodeBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hiddenData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/ma/decode/DecodeResult;->hiddenData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
