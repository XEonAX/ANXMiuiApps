.class Lcom/miui/gallery/search/core/source/server/ConvertUtil;
.super Ljava/lang/Object;
.source "ConvertUtil.java"


# direct methods
.method public static createRankInfo(Lcom/miui/gallery/search/core/source/server/ItemRankInfo;)Lcom/miui/gallery/search/core/suggestion/RankInfo;
    .locals 5
    .param p0, "itemRankInfo"    # Lcom/miui/gallery/search/core/source/server/ItemRankInfo;

    .prologue
    const/4 v0, 0x0

    .line 118
    if-nez p0, :cond_0

    .line 125
    :goto_0
    return-object v0

    .line 122
    :cond_0
    const-string v1, "ASC"

    iget-object v2, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->order:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "ASC"

    .line 125
    .local v0, "order":Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v1, Lcom/miui/gallery/search/core/suggestion/RankInfo;

    iget-object v2, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->style:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/gallery/search/core/suggestion/RankInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 122
    .end local v0    # "order":Ljava/lang/String;
    :cond_2
    const-string v1, "DESC"

    iget-object v2, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->order:Ljava/lang/String;

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "DESC"

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->name:Ljava/lang/String;

    .line 124
    invoke-static {v1}, Lcom/miui/gallery/search/SearchConstants;->getDefaultOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static createRankInfos(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/source/server/ItemRankInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/RankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "rankInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/source/server/ItemRankInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    :cond_0
    const/4 v1, 0x0

    .line 114
    :cond_1
    return-object v1

    .line 110
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .local v1, "rankInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/RankInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;

    .line 112
    .local v0, "itemRankInfo":Lcom/miui/gallery/search/core/source/server/ItemRankInfo;
    invoke-static {v0}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createRankInfo(Lcom/miui/gallery/search/core/source/server/ItemRankInfo;)Lcom/miui/gallery/search/core/suggestion/RankInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static createSuggestion(Lcom/miui/gallery/search/core/source/server/ItemSuggestion;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 1
    .param p0, "suggestion"    # Lcom/miui/gallery/search/core/source/server/ItemSuggestion;
    .param p1, "source"    # Lcom/miui/gallery/search/core/source/Source;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestion(Lcom/miui/gallery/search/core/source/server/ItemSuggestion;Ljava/util/Map;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public static createSuggestion(Lcom/miui/gallery/search/core/source/server/ItemSuggestion;Ljava/util/Map;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 8
    .param p0, "suggestion"    # Lcom/miui/gallery/search/core/source/server/ItemSuggestion;
    .param p2, "source"    # Lcom/miui/gallery/search/core/source/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/source/server/ItemSuggestion;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/search/core/source/Source;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 31
    invoke-static {p1, p2}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestion(Ljava/util/Map;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const/4 v7, 0x0

    .line 35
    .local v7, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->extraInfo:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 36
    move-object v7, p1

    .line 45
    :goto_1
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    iget-object v1, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->title:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->resultCount:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->resultCount:I

    .line 46
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v3, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->intentActionURI:Ljava/lang/String;

    .line 47
    invoke-static {v7}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestionExtras(Ljava/util/Map;)Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;Lcom/miui/gallery/search/core/source/Source;)V

    goto :goto_0

    .line 37
    :cond_1
    if-nez p1, :cond_2

    .line 38
    iget-object v7, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->extraInfo:Ljava/util/Map;

    goto :goto_1

    .line 41
    :cond_2
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 42
    .restart local v7    # "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->extraInfo:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 43
    invoke-interface {v7, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 46
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static createSuggestion(Ljava/util/Map;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 2
    .param p1, "source"    # Lcom/miui/gallery/search/core/source/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/search/core/source/Source;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestionExtras(Ljava/util/Map;)Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v1

    .line 52
    .local v1, "suggestionExtras":Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;
    if-nez v1, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    invoke-direct {v0}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;-><init>()V

    .line 56
    .local v0, "suggestion":Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;
    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionExtras(Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;)V

    .line 57
    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionSource(Lcom/miui/gallery/search/core/source/Source;)V

    goto :goto_0
.end method

.method public static createSuggestionCursor(Ljava/util/List;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;

    invoke-direct {v0, p1, p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V

    return-object v0
.end method

.method public static createSuggestionCursor(Ljava/util/List;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .locals 4
    .param p1, "source"    # Lcom/miui/gallery/search/core/source/Source;
    .param p2, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/source/server/ItemSuggestion;",
            ">;",
            "Lcom/miui/gallery/search/core/source/Source;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/source/server/ItemSuggestion;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 71
    :cond_0
    const/4 v2, 0x0

    .line 77
    :goto_0
    return-object v2

    .line 73
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v1, "suggestionList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;

    .line 75
    .local v0, "itemSuggestion":Lcom/miui/gallery/search/core/source/server/ItemSuggestion;
    invoke-static {v0, p1}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestion(Lcom/miui/gallery/search/core/source/server/ItemSuggestion;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    .end local v0    # "itemSuggestion":Lcom/miui/gallery/search/core/source/server/ItemSuggestion;
    :cond_2
    invoke-static {v1, p2}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestionCursor(Ljava/util/List;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v2

    goto :goto_0
.end method

.method public static createSuggestionExtras(Ljava/util/Map;)Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static createSuggestionSection(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .locals 11
    .param p0, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p1, "section"    # Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;
    .param p2, "source"    # Lcom/miui/gallery/search/core/source/Source;

    .prologue
    const/4 v6, 0x0

    .line 87
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-object v6

    .line 90
    :cond_0
    iget-object v2, p1, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;->sectionType:Ljava/lang/String;

    .line 92
    .local v2, "sectionType":Ljava/lang/String;
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 93
    .local v10, "underlineIndex":I
    if-lez v10, :cond_1

    .line 94
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 97
    :cond_1
    const-string v0, "recommand"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    sget-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_RECOMMEND:Lcom/miui/gallery/search/SearchConstants$SectionType;

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConstants$SectionType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_2
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    iget-object v1, p1, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;->items:Ljava/util/List;

    .line 101
    invoke-static {v1, p2, p0}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestionCursor(Ljava/util/List;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v3

    iget-object v4, p1, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;->dataUrl:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;->moreItem:Lcom/miui/gallery/search/core/source/server/ItemSuggestion;

    .line 102
    invoke-static {v1, p2}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestion(Lcom/miui/gallery/search/core/source/server/ItemSuggestion;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v7

    iget-object v1, p1, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;->rankInfos:Ljava/util/List;

    .line 103
    invoke-static {v1}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createRankInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    move-object v1, p0

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;Ljava/util/List;Landroid/os/Bundle;)V

    move-object v6, v0

    goto :goto_0
.end method
