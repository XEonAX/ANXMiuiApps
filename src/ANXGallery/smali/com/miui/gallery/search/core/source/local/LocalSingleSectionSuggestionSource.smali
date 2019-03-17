.class public abstract Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;
.super Lcom/miui/gallery/search/core/source/InterceptableSource;
.source "LocalSingleSectionSuggestionSource.java"


# static fields
.field private static final SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/search/SearchConstants$SearchType;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SUGGESTION:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SEARCH:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;->SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/source/InterceptableSource;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public doGetSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;
    .locals 4
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "suggestionCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    const-string v3, "query"

    invoke-virtual {p1, v3}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    const-string v3, "query"

    invoke-virtual {p1, v3}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;->querySuggestion(Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;

    move-result-object v2

    .line 52
    .local v2, "suggestionList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    invoke-virtual {p0, v2, v0, p1}, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;->sortSuggestions(Ljava/util/List;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;

    move-result-object v2

    .line 54
    invoke-virtual {p0, p1, v2}, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;->generateSection(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    move-result-object v1

    .line 56
    .end local v0    # "query":Ljava/lang/String;
    .end local v2    # "suggestionList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    :cond_0
    new-instance v3, Lcom/miui/gallery/search/core/result/BaseSourceResult;

    invoke-direct {v3, p1, p0, v1}, Lcom/miui/gallery/search/core/result/BaseSourceResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    return-object v3
.end method

.method protected generateSection(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;
    .locals 8
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;)",
            "Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;"
        }
    .end annotation

    .prologue
    .local p2, "suggestionList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    const/4 v4, 0x0

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v2

    .line 88
    .local v2, "sectionType":Lcom/miui/gallery/search/SearchConstants$SectionType;
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    new-instance v3, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;

    invoke-direct {v3, p1, p2}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;->getSectionTitle(Lcom/miui/gallery/search/SearchConstants$SectionType;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/SearchConstants$SectionType;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;)V

    .line 92
    .end local v2    # "sectionType":Lcom/miui/gallery/search/SearchConstants$SectionType;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v4

    goto :goto_0
.end method

.method public getPriority(Lcom/miui/gallery/search/core/QueryInfo;)I
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method protected getSectionTitle(Lcom/miui/gallery/search/SearchConstants$SectionType;)Ljava/lang/String;
    .locals 1
    .param p1, "sectionType"    # Lcom/miui/gallery/search/SearchConstants$SectionType;

    .prologue
    .line 82
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/SearchConfig;->getTitleForSection(Lcom/miui/gallery/search/SearchConstants$SectionType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;
.end method

.method public getSupportSearchTypes()[Lcom/miui/gallery/search/SearchConstants$SearchType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;->SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-object v0
.end method

.method protected abstract querySuggestion(Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;"
        }
    .end annotation
.end method

.method protected sort(Lcom/miui/gallery/search/core/suggestion/Suggestion;Lcom/miui/gallery/search/core/suggestion/Suggestion;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)I
    .locals 4
    .param p1, "s1"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .param p2, "s2"    # Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 73
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "index1":I
    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, "index2":I
    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p2}, Lcom/miui/gallery/search/core/suggestion/Suggestion;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    sub-int v2, v0, v1

    goto :goto_0
.end method

.method protected sortSuggestions(Ljava/util/List;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;
    .locals 1
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    new-instance v0, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource$1;-><init>(Lcom/miui/gallery/search/core/source/local/LocalSingleSectionSuggestionSource;Ljava/lang/String;Lcom/miui/gallery/search/core/QueryInfo;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    return-object p1
.end method
