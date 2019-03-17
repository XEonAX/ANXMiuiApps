.class public Lcom/taobao/ma/qr/parser/MaQrParSer;
.super Lcom/taobao/ma/parser/MaParSer;
.source "MaQrParSer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/taobao/ma/parser/MaParSer;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/taobao/ma/common/result/MaWapperResult;)Lcom/taobao/ma/common/result/MaResult;
    .locals 9
    .param p1, "result"    # Lcom/taobao/ma/common/result/MaWapperResult;

    .prologue
    .line 24
    iget v0, p1, Lcom/taobao/ma/common/result/MaWapperResult;->type:I

    iget-object v1, p1, Lcom/taobao/ma/common/result/MaWapperResult;->maType:Lcom/taobao/ma/common/result/MaType;

    iget v2, p1, Lcom/taobao/ma/common/result/MaWapperResult;->subType:I

    invoke-static {v0, v1, v2}, Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;->isQrCode(ILcom/taobao/ma/common/result/MaType;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/taobao/ma/qr/common/result/MaQrResult;

    iget-object v1, p1, Lcom/taobao/ma/common/result/MaWapperResult;->maType:Lcom/taobao/ma/common/result/MaType;

    iget-object v2, p1, Lcom/taobao/ma/common/result/MaWapperResult;->strCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/taobao/ma/common/result/MaWapperResult;->xCorner:[I

    iget-object v4, p1, Lcom/taobao/ma/common/result/MaWapperResult;->yCorner:[I

    iget v5, p1, Lcom/taobao/ma/common/result/MaWapperResult;->x:I

    iget v6, p1, Lcom/taobao/ma/common/result/MaWapperResult;->y:I

    iget v7, p1, Lcom/taobao/ma/common/result/MaWapperResult;->width:I

    iget v8, p1, Lcom/taobao/ma/common/result/MaWapperResult;->height:I

    invoke-direct/range {v0 .. v8}, Lcom/taobao/ma/qr/common/result/MaQrResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;[I[IIIII)V

    goto :goto_0
.end method
