.class public Lcom/miui/gallery/search/core/source/server/HintSource;
.super Lcom/miui/gallery/search/core/source/server/ServerSource;
.source "HintSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/source/server/HintSource$HintResponseData;
    }
.end annotation


# static fields
.field private static final SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/miui/gallery/search/SearchConstants$SearchType;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_HINT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/search/core/source/server/HintSource;->SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private static createSuggestionCursor(Ljava/util/List;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .locals 6
    .param p1, "source"    # Lcom/miui/gallery/search/core/source/Source;
    .param p2, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/source/server/HintSuggestion;",
            ">;",
            "Lcom/miui/gallery/search/core/source/Source;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "hints":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/source/server/HintSuggestion;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 100
    :cond_0
    const/4 v3, 0x0

    .line 113
    :goto_0
    return-object v3

    .line 102
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v2, "suggestionList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/core/source/server/HintSuggestion;

    .line 104
    .local v1, "hintSuggestion":Lcom/miui/gallery/search/core/source/server/HintSuggestion;
    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 105
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "hint_text"

    iget-object v5, v1, Lcom/miui/gallery/search/core/source/server/HintSuggestion;->hintText:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v4, "display_duration"

    iget v5, v1, Lcom/miui/gallery/search/core/source/server/HintSuggestion;->displayDurationMs:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v4, v1, Lcom/miui/gallery/search/core/source/server/HintSuggestion;->queryText:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 108
    const-string v4, "query_text"

    iget-object v5, v1, Lcom/miui/gallery/search/core/source/server/HintSuggestion;->queryText:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_2
    invoke-static {v0, p1}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestion(Ljava/util/Map;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    .end local v0    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "hintSuggestion":Lcom/miui/gallery/search/core/source/server/HintSuggestion;
    :cond_3
    invoke-static {v2, p2}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestionCursor(Ljava/util/List;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected canCarryLog()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "server_controlled_hints"

    return-object v0
.end method

.method protected getQueryAppendPath(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 48
    const-string v0, "hint"

    return-object v0
.end method

.method protected getQueryUserPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 53
    if-nez p1, :cond_0

    const-string v0, "anonymous"

    .line 54
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getQueryUserPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getResponseDataType(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 74
    const-class v0, Lcom/miui/gallery/search/core/source/server/HintSource$HintResponseData;

    return-object v0
.end method

.method public getSupportSearchTypes()[Lcom/miui/gallery/search/SearchConstants$SearchType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/miui/gallery/search/core/source/server/HintSource;->SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-object v0
.end method

.method protected isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "errorStatus"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method protected onResponse(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;Ljava/lang/Object;)Lcom/miui/gallery/search/core/result/SourceResult;
    .locals 3
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "serverSearchRequest"    # Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 87
    instance-of v1, p3, Lcom/miui/gallery/search/core/source/server/HintSource$HintResponseData;

    if-nez v1, :cond_0

    .line 88
    const-string v1, "HintSource"

    const-string v2, "Not supported response data type"

    invoke-static {v1, v2}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p3

    .line 92
    check-cast v0, Lcom/miui/gallery/search/core/source/server/HintSource$HintResponseData;

    .line 93
    .local v0, "hintResponseData":Lcom/miui/gallery/search/core/source/server/HintSource$HintResponseData;
    new-instance v1, Lcom/miui/gallery/search/core/result/BaseSourceResult;

    iget-object v2, v0, Lcom/miui/gallery/search/core/source/server/HintSource$HintResponseData;->hintSuggestions:Ljava/util/List;

    .line 94
    invoke-static {v2, p0, p1}, Lcom/miui/gallery/search/core/source/server/HintSource;->createSuggestionCursor(Ljava/util/List;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/miui/gallery/search/core/result/BaseSourceResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    goto :goto_0
.end method

.method protected useCache(Lcom/miui/gallery/search/core/QueryInfo;)Z
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method
