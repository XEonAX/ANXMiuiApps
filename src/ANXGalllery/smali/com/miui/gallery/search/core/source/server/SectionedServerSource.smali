.class public abstract Lcom/miui/gallery/search/core/source/server/SectionedServerSource;
.super Lcom/miui/gallery/search/core/source/server/ServerSource;
.source "SectionedServerSource.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method static createResultData(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .locals 6
    .param p0, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "source"    # Lcom/miui/gallery/search/core/source/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;",
            ">;",
            "Lcom/miui/gallery/search/core/source/Source;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;"
        }
    .end annotation

    .prologue
    .local p1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;>;"
    const/4 v3, 0x0

    .line 47
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v3

    .line 52
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v2, "suggestionSections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;

    .line 54
    .local v0, "sectionedSuggestion":Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;
    invoke-static {p0, v0, p2}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestionSection(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    move-result-object v1

    .line 56
    .local v1, "suggestionSection":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    .end local v0    # "sectionedSuggestion":Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;
    .end local v1    # "suggestionSection":Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v3, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;

    invoke-direct {v3, p0, v2}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method protected canCarryLog()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method protected isPersistable(Lcom/miui/gallery/search/core/QueryInfo;)Z
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method protected onResponse(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;Ljava/lang/Object;)Lcom/miui/gallery/search/core/result/SourceResult;
    .locals 2
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "serverSearchRequest"    # Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 31
    instance-of v1, p3, Lcom/miui/gallery/search/core/source/server/SectionedResponseData;

    if-eqz v1, :cond_0

    check-cast p3, Lcom/miui/gallery/search/core/source/server/SectionedResponseData;

    .end local p3    # "responseData":Ljava/lang/Object;
    iget-object v0, p3, Lcom/miui/gallery/search/core/source/server/SectionedResponseData;->sections:Ljava/util/List;

    .line 33
    .local v0, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;>;"
    :goto_0
    invoke-static {p1, v0, p0}, Lcom/miui/gallery/search/core/source/server/SectionedServerSource;->createResultData(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/search/core/source/server/SectionedServerSource;->generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;

    move-result-object v1

    return-object v1

    .line 31
    .end local v0    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;>;"
    .restart local p3    # "responseData":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
