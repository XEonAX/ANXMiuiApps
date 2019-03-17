.class public Lcom/taobao/ma/qr/parser/MaTBAntiFakeParSer;
.super Lcom/taobao/ma/parser/MaParSer;
.source "MaTBAntiFakeParSer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/taobao/ma/parser/MaParSer;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/taobao/ma/common/result/MaWapperResult;)Lcom/taobao/ma/common/result/MaResult;
    .locals 4
    .param p1, "result"    # Lcom/taobao/ma/common/result/MaWapperResult;

    .prologue
    .line 23
    iget v0, p1, Lcom/taobao/ma/common/result/MaWapperResult;->type:I

    iget-object v1, p1, Lcom/taobao/ma/common/result/MaWapperResult;->maType:Lcom/taobao/ma/common/result/MaType;

    invoke-static {v0, v1}, Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;->isTBAntiFakeCode(ILcom/taobao/ma/common/result/MaType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/taobao/ma/qr/common/result/MaTBAntiFakeResult;

    iget-object v1, p1, Lcom/taobao/ma/common/result/MaWapperResult;->maType:Lcom/taobao/ma/common/result/MaType;

    iget-object v2, p1, Lcom/taobao/ma/common/result/MaWapperResult;->strCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/taobao/ma/common/result/MaWapperResult;->hiddenData:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/ma/qr/common/result/MaTBAntiFakeResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
