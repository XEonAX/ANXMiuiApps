.class public Lcom/taobao/ma/bar/parser/MaBarParSer;
.super Lcom/taobao/ma/parser/MaParSer;
.source "MaBarParSer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/taobao/ma/parser/MaParSer;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/taobao/ma/common/result/MaWapperResult;)Lcom/taobao/ma/common/result/MaResult;
    .locals 3
    .param p1, "result"    # Lcom/taobao/ma/common/result/MaWapperResult;

    .prologue
    .line 19
    iget v0, p1, Lcom/taobao/ma/common/result/MaWapperResult;->type:I

    iget v1, p1, Lcom/taobao/ma/common/result/MaWapperResult;->subType:I

    invoke-static {v0, v1}, Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;->isBarCode(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/taobao/ma/common/result/MaResult;

    invoke-static {p1}, Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;->getMaType(Lcom/taobao/ma/common/result/MaWapperResult;)Lcom/taobao/ma/common/result/MaType;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/ma/common/result/MaWapperResult;->strCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/taobao/ma/common/result/MaResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V

    goto :goto_0
.end method
