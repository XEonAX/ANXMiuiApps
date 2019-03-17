.class public Lcom/miui/gallery/search/core/resultprocessor/LinearResultProcessor;
.super Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
.source "LinearResultProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
        "<",
        "Lcom/miui/gallery/search/core/result/SuggestionResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMergedResult(Ljava/util/List;)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;)",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "sourceResults":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/resultprocessor/LinearResultProcessor;->getMergedErrorInfo(Ljava/util/List;)Lcom/miui/gallery/search/core/result/ErrorInfo;

    move-result-object v1

    .line 24
    .local v1, "errorInfo":Lcom/miui/gallery/search/core/result/ErrorInfo;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v6, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    const/4 v3, 0x0

    .line 26
    .local v3, "queryInfo":Lcom/miui/gallery/search/core/QueryInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/search/core/result/SourceResult;

    .line 27
    .local v4, "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    if-nez v3, :cond_1

    invoke-interface {v4}, Lcom/miui/gallery/search/core/result/SourceResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 28
    invoke-interface {v4}, Lcom/miui/gallery/search/core/result/SourceResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v3

    .line 30
    :cond_1
    invoke-interface {v4}, Lcom/miui/gallery/search/core/result/SourceResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    .line 31
    .local v0, "data":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    if-eqz v0, :cond_0

    .line 34
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 35
    invoke-interface {v0, v2}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 36
    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/miui/gallery/search/core/resultprocessor/LinearResultProcessor;->toSuggestion(Lcom/miui/gallery/search/core/suggestion/Suggestion;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "data":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .end local v2    # "i":I
    .end local v4    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :cond_3
    new-instance v5, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;

    invoke-direct {v5, v3, v6}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V

    .line 41
    .local v5, "suggestionCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    new-instance v7, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;

    invoke-direct {v7, v3, v5, v1}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    return-object v7
.end method
