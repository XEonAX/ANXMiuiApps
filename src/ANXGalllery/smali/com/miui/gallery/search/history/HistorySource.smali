.class public Lcom/miui/gallery/search/history/HistorySource;
.super Lcom/miui/gallery/search/core/source/InterceptableSource;
.source "HistorySource.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-array v0, v4, [Lcom/miui/gallery/search/SearchConstants$SearchType;

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_HISTORY:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_NAVIGATION:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/search/history/HistorySource;->SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v0, v2

    const-string/jumbo v1, "subTitle"

    aput-object v1, v0, v3

    const-string v1, "actionUri"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/search/history/HistorySource;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/source/InterceptableSource;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public doGetSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;
    .locals 11
    .param p1, "query"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 53
    sget-object v1, Lcom/miui/gallery/search/SearchContract$History;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "query_limit"

    .line 55
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/search/SearchConfig;->getHistoryConfig()Lcom/miui/gallery/search/SearchConfig$HistoryConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/search/SearchConfig$HistoryConfig;->getNavigationReturnCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 56
    .local v8, "builder":Landroid/net/Uri$Builder;
    const-string v1, "query_text"

    invoke-virtual {p1, v1}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    const-string v1, "query_text"

    const-string v2, "query_text"

    .line 58
    invoke-virtual {p1, v2}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v8, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/history/HistorySource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/search/history/HistorySource;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "timestamp DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 63
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/search/SearchConfig;->getHistoryConfig()Lcom/miui/gallery/search/SearchConfig$HistoryConfig;

    move-result-object v10

    .line 64
    .local v10, "historyConfig":Lcom/miui/gallery/search/SearchConfig$HistoryConfig;
    const/4 v0, 0x0

    .line 66
    .local v0, "suggestionCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    if-eqz v9, :cond_1

    .line 67
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    .end local v0    # "suggestionCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    invoke-virtual {v10}, Lcom/miui/gallery/search/SearchConfig$HistoryConfig;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;

    invoke-direct {v3, p1, v9}, Lcom/miui/gallery/search/core/suggestion/CursorBackedSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Landroid/database/Cursor;)V

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/miui/gallery/search/history/HistorySource;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v10, v1}, Lcom/miui/gallery/search/SearchConfig$HistoryConfig;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/miui/gallery/search/history/HistorySource;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v1}, Lcom/miui/gallery/search/SearchConfig$HistoryConfig;->getSubTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/SearchConstants$SectionType;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;)V

    .line 72
    .restart local v0    # "suggestionCursor":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    :cond_1
    const-string v2, "HistorySource"

    const-string v3, "On load %s search histories"

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    new-instance v1, Lcom/miui/gallery/search/core/result/BaseSourceResult;

    invoke-direct {v1, p1, p0, v0}, Lcom/miui/gallery/search/core/result/BaseSourceResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    return-object v1

    .line 72
    :cond_2
    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "local_history_source"

    return-object v0
.end method

.method public getPriority(Lcom/miui/gallery/search/core/QueryInfo;)I
    .locals 2
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_HISTORY:Lcom/miui/gallery/search/SearchConstants$SearchType;

    if-eq v0, v1, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x3

    .line 82
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportSearchTypes()[Lcom/miui/gallery/search/SearchConstants$SearchType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/miui/gallery/search/history/HistorySource;->SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-object v0
.end method

.method protected isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z
    .locals 2
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "status"    # I

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_NAVIGATION:Lcom/miui/gallery/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_0

    .line 46
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConfig;->getNavigationConfig()Lcom/miui/gallery/search/SearchConfig$NavigationConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/gallery/search/SearchConfig$NavigationConfig;->isFatalCondition(I)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/search/core/source/InterceptableSource;->isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z

    move-result v0

    goto :goto_0
.end method
