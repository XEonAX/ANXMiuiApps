.class public abstract Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
.super Ljava/lang/Object;
.source "ResultProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT::",
        "Lcom/miui/gallery/search/core/result/SuggestionResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    .local p0, "this":Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;, "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor<TOUT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMergedErrorInfo(Ljava/util/List;)Lcom/miui/gallery/search/core/result/ErrorInfo;
    .locals 1
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
    .line 76
    .local p0, "this":Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;, "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor<TOUT;>;"
    .local p1, "sourceResults":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    new-instance v0, Lcom/miui/gallery/search/core/resultprocessor/SimpleErrorProcessor;

    invoke-direct {v0}, Lcom/miui/gallery/search/core/resultprocessor/SimpleErrorProcessor;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/core/resultprocessor/SimpleErrorProcessor;->process(Ljava/util/List;)Lcom/miui/gallery/search/core/result/ErrorInfo;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMergedResult(Ljava/util/List;)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;)TOUT;"
        }
    .end annotation
.end method

.method protected getSortedSourceResults(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;, "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor<TOUT;>;"
    .local p1, "sourceResults":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 72
    :goto_0
    return-object p1

    .line 61
    :cond_0
    new-instance v0, Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor$1;-><init>(Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public process(Ljava/util/List;)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;)TOUT;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;, "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor<TOUT;>;"
    .local p1, "input":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 33
    :cond_0
    const-string v3, "ResultProcessor"

    const-string v4, "Received a null input value!"

    invoke-static {v3, v4}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    .line 54
    :cond_1
    return-object v0

    .line 38
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/search/core/result/SourceResult;

    .line 39
    .local v2, "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    invoke-interface {v2}, Lcom/miui/gallery/search/core/result/SourceResult;->acquire()V

    goto :goto_0

    .line 43
    .end local v2    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;->getSortedSourceResults(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 44
    .local v1, "sorted":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    if-nez v1, :cond_4

    .line 45
    const-string v3, "ResultProcessor"

    const-string v4, "The sorted source results are null!"

    invoke-static {v3, v4}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_4
    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;->getMergedResult(Ljava/util/List;)Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-result-object v0

    .line 51
    .local v0, "result":Lcom/miui/gallery/search/core/result/SuggestionResult;, "TOUT;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/search/core/result/SourceResult;

    .line 52
    .restart local v2    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    invoke-interface {v2}, Lcom/miui/gallery/search/core/result/SourceResult;->release()V

    goto :goto_1
.end method

.method protected toSuggestion(Lcom/miui/gallery/search/core/suggestion/Suggestion;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    .locals 7
    .param p1, "suggestion"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .prologue
    .line 80
    .local p0, "this":Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;, "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor<TOUT;>;"
    if-nez p1, :cond_0

    .line 81
    const/4 p1, 0x0

    .line 89
    .end local p1    # "suggestion":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    :goto_0
    return-object p1

    .line 83
    .restart local p1    # "suggestion":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    :cond_0
    instance-of v0, p1, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    if-eqz v0, :cond_1

    .line 84
    check-cast p1, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionSubTitle()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionIcon()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getIntentActionURI()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionExtras()Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v5

    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;Lcom/miui/gallery/search/core/source/Source;)V

    move-object p1, v0

    goto :goto_0
.end method
