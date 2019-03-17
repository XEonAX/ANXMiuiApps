.class Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$FilterProcessor;
.super Lcom/miui/gallery/search/core/resultprocessor/LinearResultProcessor;
.source "SearchImageResultHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$FilterProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    invoke-direct {p0}, Lcom/miui/gallery/search/core/resultprocessor/LinearResultProcessor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;
    .param p2, "x1"    # Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$FilterProcessor;-><init>(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)V

    return-void
.end method


# virtual methods
.method protected getMergedResult(Ljava/util/List;)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 12
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
    .line 87
    .local p1, "sourceResults":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$FilterProcessor;->getMergedErrorInfo(Ljava/util/List;)Lcom/miui/gallery/search/core/result/ErrorInfo;

    move-result-object v1

    .line 89
    .local v1, "errorInfo":Lcom/miui/gallery/search/core/result/ErrorInfo;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v9, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    const/4 v5, 0x0

    .line 91
    .local v5, "queryInfo":Lcom/miui/gallery/search/core/QueryInfo;
    const/4 v3, 0x0

    .line 92
    .local v3, "hasEmptyIcon":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/search/core/result/SourceResult;

    .line 93
    .local v6, "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    if-nez v5, :cond_1

    invoke-interface {v6}, Lcom/miui/gallery/search/core/result/SourceResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 94
    invoke-interface {v6}, Lcom/miui/gallery/search/core/result/SourceResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v5

    .line 96
    :cond_1
    invoke-interface {v6}, Lcom/miui/gallery/search/core/result/SourceResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    .line 97
    .local v0, "data":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    if-eqz v0, :cond_0

    .line 100
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 101
    invoke-interface {v0, v4}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->moveToPosition(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 102
    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$FilterProcessor;->toSuggestion(Lcom/miui/gallery/search/core/suggestion/Suggestion;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    move-result-object v7

    .line 103
    .local v7, "suggestion":Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    if-eqz v7, :cond_2

    .line 104
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v7}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->getSuggestionIcon()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    or-int/2addr v3, v11

    .line 100
    .end local v7    # "suggestion":Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "data":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .end local v4    # "i":I
    .end local v6    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :cond_3
    if-eqz v3, :cond_4

    .line 113
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/search/core/suggestion/Suggestion;

    .line 114
    .local v7, "suggestion":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    check-cast v7, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    .end local v7    # "suggestion":Lcom/miui/gallery/search/core/suggestion/Suggestion;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionIcon(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_4
    new-instance v8, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;

    invoke-direct {v8, v5, v9}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V

    .line 119
    .local v8, "suggestionCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    invoke-interface {v8}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 120
    .local v2, "extras":Landroid/os/Bundle;
    sget-object v10, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne v2, v10, :cond_5

    .line 121
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "extras":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 123
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_5
    const-string v11, "filter_style"

    if-eqz v3, :cond_6

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    invoke-interface {v8, v2}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->setExtras(Landroid/os/Bundle;)V

    .line 126
    new-instance v10, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;

    invoke-direct {v10, v5, v8, v1}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    return-object v10

    .line 123
    :cond_6
    const/4 v10, 0x1

    goto :goto_2
.end method
