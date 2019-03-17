.class public Lcom/miui/gallery/search/resultpage/SearchResultHelper;
.super Ljava/lang/Object;
.source "SearchResultHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;
    }
.end annotation


# instance fields
.field private mCachedResult:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedResultLock:Ljava/lang/Object;

.field protected mCurrentDataListRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

.field protected mDataListIndexHash:Ljava/lang/Long;

.field protected mDataListRankInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/RankInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataListResultProcessor:Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataListSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field protected mFilterQueryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFilterResultProcessor:Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsInvalid:Z

.field protected mLoadCompleted:Z

.field protected mNextLoadParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mProcessLock:Ljava/lang/Object;

.field protected mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;)V
    .locals 4
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "sections":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    .line 38
    iput-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListIndexHash:Ljava/lang/Long;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListSuggestions:Ljava/util/List;

    .line 40
    iput-boolean v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mLoadCompleted:Z

    .line 41
    iput-boolean v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mIsInvalid:Z

    .line 42
    iput-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListRankInfos:Ljava/util/List;

    .line 43
    iput-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCurrentDataListRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mProcessLock:Ljava/lang/Object;

    .line 49
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCachedResultLock:Ljava/lang/Object;

    .line 52
    iput-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mFilterQueryParams:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 64
    invoke-virtual {p2, v0}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getGroup(I)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    invoke-direct {p0, v1}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->handleSection(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)V
    .locals 3
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    .line 38
    iput-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListIndexHash:Ljava/lang/Long;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListSuggestions:Ljava/util/List;

    .line 40
    iput-boolean v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mLoadCompleted:Z

    .line 41
    iput-boolean v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mIsInvalid:Z

    .line 42
    iput-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListRankInfos:Ljava/util/List;

    .line 43
    iput-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCurrentDataListRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mProcessLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCachedResultLock:Ljava/lang/Object;

    .line 52
    iput-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mFilterQueryParams:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 57
    invoke-direct {p0, p2}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->handleSection(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/resultpage/SearchResultHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCachedResultLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/search/resultpage/SearchResultHelper;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchResultHelper;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCachedResult:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private appendRankInfoToQuery(Lcom/miui/gallery/search/core/QueryInfo$Builder;Lcom/miui/gallery/search/core/suggestion/RankInfo;)V
    .locals 2
    .param p1, "builder"    # Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .param p2, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .prologue
    .line 217
    if-eqz p2, :cond_0

    .line 218
    const-string v0, "rankName"

    invoke-virtual {p2}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 219
    const-string v0, "rankOrder"

    invoke-virtual {p2}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 221
    :cond_0
    return-void
.end method

.method private handleSection(Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)V
    .locals 5
    .param p1, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .prologue
    .line 69
    sget-object v2, Lcom/miui/gallery/search/resultpage/SearchResultHelper$1;->$SwitchMap$com$miui$gallery$search$SearchConstants$SectionType:[I

    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getSectionType()Lcom/miui/gallery/search/SearchConstants$SectionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/search/SearchConstants$SectionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 84
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getDataURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mFilterQueryParams:Ljava/util/Map;

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getDataURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mFilterQueryParams:Ljava/util/Map;

    .line 76
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getDataURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 77
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "param":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mFilterQueryParams:Ljava/util/Map;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    .end local v0    # "param":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->createFilterProcessor()Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mFilterResultProcessor:Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;

    goto :goto_0

    .line 86
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getRankInfos()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListRankInfos:Ljava/util/List;

    .line 87
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    .line 88
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    const-string v3, "pos"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    const-string v3, "num"

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 90
    invoke-virtual {p0, v4}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->getDataLoadCount(Lcom/miui/gallery/search/core/QueryInfo;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-interface {p1}, Lcom/miui/gallery/search/core/suggestion/SuggestionSection;->getDataURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .restart local v0    # "param":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 96
    .end local v0    # "param":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->getDataListRankInfo()Lcom/miui/gallery/search/core/suggestion/RankInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->createDataListResultProcessor(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListResultProcessor:Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;

    goto/16 :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public buildDataListQueryInfo()Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .locals 4

    .prologue
    .line 121
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCachedResultLock:Ljava/lang/Object;

    monitor-enter v2

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->canLoadNextPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Lcom/miui/gallery/search/core/QueryInfo$Builder;

    sget-object v3, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_RESULT_LIST:Lcom/miui/gallery/search/SearchConstants$SearchType;

    invoke-direct {v1, v3}, Lcom/miui/gallery/search/core/QueryInfo$Builder;-><init>(Lcom/miui/gallery/search/SearchConstants$SearchType;)V

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    .line 124
    invoke-virtual {v1, v3}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParams(Ljava/util/Map;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v0

    .line 125
    .local v0, "builder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->getDataListRankInfo()Lcom/miui/gallery/search/core/suggestion/RankInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->appendRankInfoToQuery(Lcom/miui/gallery/search/core/QueryInfo$Builder;Lcom/miui/gallery/search/core/suggestion/RankInfo;)V

    .line 126
    monitor-exit v2

    .line 128
    .end local v0    # "builder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public buildFilterListQueryInfoBuilder()Lcom/miui/gallery/search/core/QueryInfo$Builder;
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->needLoadFilterList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lcom/miui/gallery/search/core/QueryInfo$Builder;

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FILTER:Lcom/miui/gallery/search/SearchConstants$SearchType;

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;-><init>(Lcom/miui/gallery/search/SearchConstants$SearchType;)V

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mFilterQueryParams:Ljava/util/Map;

    .line 141
    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParams(Ljava/util/Map;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canLoadNextPage()Z
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCachedResultLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->isLoadCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createDataListResultProcessor(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
    .locals 1
    .param p1, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/suggestion/RankInfo;",
            ")",
            "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;-><init>(Lcom/miui/gallery/search/resultpage/SearchResultHelper;Lcom/miui/gallery/search/core/suggestion/RankInfo;)V

    return-object v0
.end method

.method protected createFilterProcessor()Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/miui/gallery/search/core/resultprocessor/LinearResultProcessor;

    invoke-direct {v0}, Lcom/miui/gallery/search/core/resultprocessor/LinearResultProcessor;-><init>()V

    return-object v0
.end method

.method public getDataListRankInfo()Lcom/miui/gallery/search/core/suggestion/RankInfo;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCurrentDataListRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCurrentDataListRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .line 168
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListRankInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListRankInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListRankInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/RankInfo;

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataListResultProcessor()Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListResultProcessor:Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;

    return-object v0
.end method

.method protected getDataLoadCount(Lcom/miui/gallery/search/core/QueryInfo;)I
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 232
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConfig;->getResultConfig()Lcom/miui/gallery/search/SearchConfig$ResultConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConfig$ResultConfig;->getTagLocationLoadCount()I

    move-result v0

    return v0
.end method

.method public getFilterResultProcessor()Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mFilterResultProcessor:Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;

    return-object v0
.end method

.method public getResult()Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 4

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "result":Lcom/miui/gallery/search/core/result/SuggestionResult;
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCachedResultLock:Ljava/lang/Object;

    monitor-enter v3

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCachedResult:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCachedResult:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCachedResult:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-interface {v2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCachedResult:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-object v1, v0

    .line 116
    :cond_0
    monitor-exit v3

    .line 117
    return-object v1

    .line 116
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isInvalid()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mIsInvalid:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mLoadCompleted:Z

    return v0
.end method

.method public needLoadFilterList()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mFilterQueryParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mFilterQueryParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetCacheInfo()V
    .locals 6

    .prologue
    .line 202
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mProcessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mCachedResultLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    const-string v3, "pos"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    const-string v3, "num"

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListSuggestions:Ljava/util/List;

    .line 206
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-virtual {p0, v5}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->getDataLoadCount(Lcom/miui/gallery/search/core/QueryInfo;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mIsInvalid:Z

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mLoadCompleted:Z

    .line 209
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :try_start_2
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListIndexHash:Ljava/lang/Long;

    .line 213
    const-string v0, "SearchResultHelper"

    const-string v1, "On reset cache info called!"

    invoke-static {v0, v1}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void

    .line 209
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 211
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
