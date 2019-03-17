.class public Lcom/taobao/ma/qr/common/result/MaQrResult;
.super Lcom/taobao/ma/common/result/MaResult;
.source "MaQrResult.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public xCorner:[I

.field public y:I

.field public yCorner:[I


# direct methods
.method public constructor <init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/taobao/ma/common/result/MaType;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/taobao/ma/common/result/MaResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;[I[IIIII)V
    .locals 0
    .param p1, "type"    # Lcom/taobao/ma/common/result/MaType;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "xs"    # [I
    .param p4, "ys"    # [I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/taobao/ma/qr/common/result/MaQrResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V

    .line 24
    iput-object p3, p0, Lcom/taobao/ma/qr/common/result/MaQrResult;->xCorner:[I

    .line 25
    iput-object p4, p0, Lcom/taobao/ma/qr/common/result/MaQrResult;->yCorner:[I

    .line 26
    iput p5, p0, Lcom/taobao/ma/qr/common/result/MaQrResult;->x:I

    .line 27
    iput p6, p0, Lcom/taobao/ma/qr/common/result/MaQrResult;->y:I

    .line 28
    iput p7, p0, Lcom/taobao/ma/qr/common/result/MaQrResult;->width:I

    .line 29
    iput p8, p0, Lcom/taobao/ma/qr/common/result/MaQrResult;->height:I

    .line 30
    return-void
.end method
