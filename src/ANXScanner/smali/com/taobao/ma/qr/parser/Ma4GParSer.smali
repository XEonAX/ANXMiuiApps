.class public Lcom/taobao/ma/qr/parser/Ma4GParSer;
.super Lcom/taobao/ma/parser/MaParSer;
.source "Ma4GParSer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/taobao/ma/parser/MaParSer;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/taobao/ma/common/result/MaWapperResult;)Lcom/taobao/ma/common/result/MaResult;
    .locals 4
    .param p1, "result"    # Lcom/taobao/ma/common/result/MaWapperResult;

    .prologue
    .line 26
    iget v1, p1, Lcom/taobao/ma/common/result/MaWapperResult;->type:I

    iget-object v2, p1, Lcom/taobao/ma/common/result/MaWapperResult;->maType:Lcom/taobao/ma/common/result/MaType;

    iget v3, p1, Lcom/taobao/ma/common/result/MaWapperResult;->subType:I

    invoke-static {v1, v2, v3}, Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;->is4GCode(ILcom/taobao/ma/common/result/MaType;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 30
    :cond_0
    iget-object v1, p1, Lcom/taobao/ma/common/result/MaWapperResult;->decodeBytes:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "signature":Ljava/lang/String;
    new-instance v1, Lcom/taobao/ma/qr/common/result/Ma4GResult;

    iget-object v2, p1, Lcom/taobao/ma/common/result/MaWapperResult;->maType:Lcom/taobao/ma/common/result/MaType;

    iget-object v3, p1, Lcom/taobao/ma/common/result/MaWapperResult;->strCode:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/taobao/ma/qr/common/result/Ma4GResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
