.class public Lcom/miui/gallery/search/core/resultprocessor/SimpleErrorProcessor;
.super Ljava/lang/Object;
.source "SimpleErrorProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/util/List;)Lcom/miui/gallery/search/core/result/ErrorInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;)",
            "Lcom/miui/gallery/search/core/result/ErrorInfo;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "input":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 38
    :cond_1
    :goto_0
    return-object v0

    .line 23
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 24
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/search/core/result/SourceResult;

    invoke-interface {v4}, Lcom/miui/gallery/search/core/result/SourceResult;->getErrorInfo()Lcom/miui/gallery/search/core/result/ErrorInfo;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_3
    const/4 v0, 0x0

    .line 28
    .local v0, "errorInfo":Lcom/miui/gallery/search/core/result/ErrorInfo;
    const/4 v1, -0x1

    .line 29
    .local v1, "errorStatus":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/search/core/result/SourceResult;

    .line 31
    .local v2, "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    invoke-static {v2}, Lcom/miui/gallery/search/utils/SearchUtils;->getErrorStatus(Lcom/miui/gallery/search/core/result/SuggestionResult;)I

    move-result v3

    .line 32
    .local v3, "sourceStatus":I
    invoke-static {v3}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 33
    invoke-static {v3, v1}, Lcom/miui/gallery/search/SearchConstants;->compareErrorStatus(II)I

    move-result v5

    if-lez v5, :cond_4

    .line 34
    invoke-interface {v2}, Lcom/miui/gallery/search/core/result/SourceResult;->getErrorInfo()Lcom/miui/gallery/search/core/result/ErrorInfo;

    move-result-object v0

    .line 35
    move v1, v3

    goto :goto_1
.end method
