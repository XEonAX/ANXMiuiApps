.class public Lcom/taobao/ma/ar/ARInputParam;
.super Ljava/lang/Object;
.source "ARInputParam.java"


# instance fields
.field public final imageData:[B

.field public final imageHeight:I

.field public final imageWidth:I

.field public final interestP1_X:I

.field public final interestP1_Y:I

.field public final interestP2_X:I

.field public final interestP2_Y:I

.field public final preDim:I

.field public final preInCount:I

.field public final preXCoords:[I

.field public final preYCoords:[I


# direct methods
.method public constructor <init>([BII[I[IIIIIII)V
    .locals 0
    .param p1, "imgData"    # [B
    .param p2, "imgWidth"    # I
    .param p3, "imgHeight"    # I
    .param p4, "preXCoords"    # [I
    .param p5, "preYCoords"    # [I
    .param p6, "interestP1_X"    # I
    .param p7, "interestP1_Y"    # I
    .param p8, "interestP2_X"    # I
    .param p9, "interestP2_Y"    # I
    .param p10, "preInCount"    # I
    .param p11, "preDim"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/taobao/ma/ar/ARInputParam;->imageData:[B

    .line 23
    iput p2, p0, Lcom/taobao/ma/ar/ARInputParam;->imageWidth:I

    .line 24
    iput p3, p0, Lcom/taobao/ma/ar/ARInputParam;->imageHeight:I

    .line 25
    iput-object p4, p0, Lcom/taobao/ma/ar/ARInputParam;->preXCoords:[I

    .line 26
    iput-object p5, p0, Lcom/taobao/ma/ar/ARInputParam;->preYCoords:[I

    .line 27
    iput p6, p0, Lcom/taobao/ma/ar/ARInputParam;->interestP1_X:I

    .line 28
    iput p7, p0, Lcom/taobao/ma/ar/ARInputParam;->interestP1_Y:I

    .line 29
    iput p8, p0, Lcom/taobao/ma/ar/ARInputParam;->interestP2_X:I

    .line 30
    iput p9, p0, Lcom/taobao/ma/ar/ARInputParam;->interestP2_Y:I

    .line 31
    iput p10, p0, Lcom/taobao/ma/ar/ARInputParam;->preInCount:I

    .line 32
    iput p11, p0, Lcom/taobao/ma/ar/ARInputParam;->preDim:I

    .line 33
    return-void
.end method
