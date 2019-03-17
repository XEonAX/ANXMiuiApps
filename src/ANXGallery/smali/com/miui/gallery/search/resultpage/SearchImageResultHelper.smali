.class public Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;
.super Lcom/miui/gallery/search/resultpage/SearchResultHelper;
.source "SearchImageResultHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;,
        Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$FilterProcessor;
    }
.end annotation


# static fields
.field private static final OUT_PROJECTION:[Ljava/lang/String;

.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final TITLE_SEPARATOR:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSupportExpand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->TITLE_SEPARATOR:Ljava/lang/String;

    .line 585
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "alias_micro_thumbnail"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "alias_create_date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "alias_create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "serverType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "alias_sync_state"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "alias_is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "specialTypeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 604
    sget-object v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->QUERY_PROJECTION:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "item_collapse_visibility"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/miui/gallery/util/StringUtils;->mergeStringArray([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->OUT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;ZLcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "supportExpand"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Z",
            "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p4, "sections":Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;, "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;"
    invoke-direct {p0, p2, p4}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;)V

    .line 62
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->mContext:Landroid/content/Context;

    .line 63
    iput-boolean p3, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->mSupportExpand:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;ZLcom/miui/gallery/search/core/suggestion/SuggestionSection;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "supportExpand"    # Z
    .param p4, "section"    # Lcom/miui/gallery/search/core/suggestion/SuggestionSection;

    .prologue
    .line 54
    invoke-direct {p0, p2, p4}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionSection;)V

    .line 55
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->mContext:Landroid/content/Context;

    .line 56
    iput-boolean p3, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->mSupportExpand:Z

    .line 57
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->QUERY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->OUT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->TITLE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->mSupportExpand:Z

    return v0
.end method


# virtual methods
.method protected bridge synthetic createDataListResultProcessor(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;->createDataListResultProcessor(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;

    move-result-object v0

    return-object v0
.end method

.method protected createDataListResultProcessor(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;
    .locals 1
    .param p1, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .prologue
    .line 73
    new-instance v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$ImageResultProcessor;-><init>(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;Lcom/miui/gallery/search/core/suggestion/RankInfo;)V

    return-object v0
.end method

.method protected createFilterProcessor()Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
    .locals 2
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
    .line 68
    new-instance v0, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$FilterProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$FilterProcessor;-><init>(Lcom/miui/gallery/search/resultpage/SearchImageResultHelper;Lcom/miui/gallery/search/resultpage/SearchImageResultHelper$1;)V

    return-object v0
.end method

.method protected getDataLoadCount(Lcom/miui/gallery/search/core/QueryInfo;)I
    .locals 2
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FEEDBACK_LIKELY_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_0

    .line 79
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConfig;->getResultConfig()Lcom/miui/gallery/search/SearchConfig$ResultConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConfig$ResultConfig;->getLikelyImageLoadCount()I

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/miui/gallery/search/SearchConfig;->get()Lcom/miui/gallery/search/SearchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConfig;->getResultConfig()Lcom/miui/gallery/search/SearchConfig$ResultConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConfig$ResultConfig;->getImageLoadCount()I

    move-result v0

    goto :goto_0
.end method
