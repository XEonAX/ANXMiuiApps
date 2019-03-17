.class public Lcom/miui/gallery/search/core/source/server/FeedbackLikelyListSource;
.super Lcom/miui/gallery/search/core/source/server/DataListSource;
.source "FeedbackLikelyListSource.java"


# static fields
.field private static final SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/miui/gallery/search/SearchConstants$SearchType;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FEEDBACK_LIKELY_RESULT:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/search/core/source/server/FeedbackLikelyListSource;->SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/source/server/DataListSource;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "server_controlled_feedback_likely_list"

    return-object v0
.end method

.method protected getQueryAppendPath(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 30
    const-string/jumbo v0, "tag/feedback/image/list"

    return-object v0
.end method

.method public getSupportSearchTypes()[Lcom/miui/gallery/search/SearchConstants$SearchType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/miui/gallery/search/core/source/server/FeedbackLikelyListSource;->SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-object v0
.end method

.method protected isPersistable(Lcom/miui/gallery/search/core/QueryInfo;)Z
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method
