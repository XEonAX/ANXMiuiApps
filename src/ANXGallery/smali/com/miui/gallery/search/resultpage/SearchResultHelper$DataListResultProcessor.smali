.class public Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;
.super Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
.source "SearchResultHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/resultpage/SearchResultHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DataListResultProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
        "<",
        "Lcom/miui/gallery/search/core/result/SuggestionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/resultpage/SearchResultHelper;Lcom/miui/gallery/search/core/suggestion/RankInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/resultpage/SearchResultHelper;
    .param p2, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-direct {p0}, Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .line 241
    return-void
.end method

.method private updateCacheResult(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Lcom/miui/gallery/search/core/result/ErrorInfo;)V
    .locals 4
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "errorInfo"    # Lcom/miui/gallery/search/core/result/ErrorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;",
            "Lcom/miui/gallery/search/core/result/ErrorInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->createSuggestionResult(Ljava/util/List;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/RankInfo;Lcom/miui/gallery/search/core/result/ErrorInfo;)Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-result-object v0

    .line 247
    .local v0, "result":Lcom/miui/gallery/search/core/result/SuggestionResult;
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-static {v1}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->access$102(Lcom/miui/gallery/search/resultpage/SearchResultHelper;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 249
    monitor-exit v2

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected checkIndexHash(Lcom/miui/gallery/search/resultpage/DataListSourceResult;)Z
    .locals 7
    .param p1, "dataListResult"    # Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 313
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListIndexHash:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getIndexHash()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v4, v4, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListIndexHash:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 315
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-static {v1}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    const-string v3, "pos"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v2, v2, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    const-string v3, "num"

    .line 318
    invoke-virtual {p1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getNextPosition()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v6, v6, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->getDataLoadCount(Lcom/miui/gallery/search/core/QueryInfo;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mIsInvalid:Z

    .line 320
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mLoadCompleted:Z

    .line 321
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListIndexHash:Ljava/lang/Long;

    .line 323
    const-string v1, "SearchResultHelper"

    const-string v2, "On check index hash failed, old %s, new %s, next pos %d"

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v3, v3, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListIndexHash:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-virtual {p1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getIndexHash()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getNextPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 323
    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    :goto_0
    return v0

    .line 321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListIndexHash:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-virtual {p1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getIndexHash()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListIndexHash:Ljava/lang/Long;

    :cond_1
    move v0, v1

    .line 328
    goto :goto_0
.end method

.method protected checkRankInfo(Lcom/miui/gallery/search/resultpage/DataListSourceResult;)Z
    .locals 4
    .param p1, "dataListResult"    # Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 305
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v0

    const-string v3, "rankName"

    invoke-virtual {v0, v3}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :goto_0
    return v2

    .line 308
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v0

    const-string v3, "rankName"

    invoke-virtual {v0, v3}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    invoke-virtual {p1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v0

    const-string v3, "rankOrder"

    invoke-virtual {v0, v3}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    if-nez v3, :cond_2

    :goto_2
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    move v2, v0

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->mRankInfo:Lcom/miui/gallery/search/core/suggestion/RankInfo;

    invoke-virtual {v1}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getOrder()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected createErrorResult(Lcom/miui/gallery/search/core/QueryInfo;I)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 3
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "errorCode"    # I

    .prologue
    .line 345
    new-instance v0, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/gallery/search/core/result/ErrorInfo;

    invoke-direct {v2, p2}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    return-object v0
.end method

.method protected createRankInfoBundle(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Landroid/os/Bundle;
    .locals 2
    .param p1, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .prologue
    .line 358
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "rankInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 360
    return-object v0
.end method

.method protected createSuggestionResult(Ljava/util/List;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/RankInfo;Lcom/miui/gallery/search/core/result/ErrorInfo;)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 4
    .param p2, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p3, "rankInfo"    # Lcom/miui/gallery/search/core/suggestion/RankInfo;
    .param p4, "errorInfo"    # Lcom/miui/gallery/search/core/result/ErrorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Lcom/miui/gallery/search/core/suggestion/RankInfo;",
            "Lcom/miui/gallery/search/core/result/ErrorInfo;",
            ")",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/suggestion/Suggestion;>;"
    const/4 v0, 0x0

    .line 336
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    .line 337
    invoke-virtual {p0, p3}, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->createRankInfoBundle(Lcom/miui/gallery/search/core/suggestion/RankInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 339
    :cond_0
    new-instance v1, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;

    new-instance v2, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p2, v3, v0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Landroid/os/Bundle;)V

    invoke-direct {v1, p2, v2, p4}, Lcom/miui/gallery/search/core/result/BaseSuggestionResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    return-object v1
.end method

.method protected getDataListResult(Ljava/util/List;)Lcom/miui/gallery/search/resultpage/DataListSourceResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;)",
            "Lcom/miui/gallery/search/resultpage/DataListSourceResult;"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "sourceResults":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/result/SourceResult;

    .line 350
    .local v0, "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    instance-of v2, v0, Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    if-eqz v2, :cond_0

    .line 351
    check-cast v0, Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    .line 354
    .end local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMergedResult(Ljava/util/List;)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 9
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
    .line 254
    .local p1, "sourceResults":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->getDataListResult(Ljava/util/List;)Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    move-result-object v1

    .line 255
    .local v1, "dataListResult":Lcom/miui/gallery/search/resultpage/DataListSourceResult;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->checkRankInfo(Lcom/miui/gallery/search/resultpage/DataListSourceResult;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    invoke-static {v1}, Lcom/miui/gallery/search/utils/SearchUtils;->isErrorResult(Lcom/miui/gallery/search/core/result/SuggestionResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v3, v3, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->createErrorResult(Lcom/miui/gallery/search/core/QueryInfo;I)Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-result-object v3

    .line 300
    :goto_0
    return-object v3

    .line 260
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v4, v3, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mProcessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 262
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v3, v3, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    const-string v3, "0"

    .line 263
    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v5

    const-string v6, "pos"

    invoke-virtual {v5, v6}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 264
    const-string v3, "SearchResultHelper"

    const-string v5, "Later pages arrived before first page!"

    invoke-static {v3, v5}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-virtual {v3}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->getResult()Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 269
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->checkIndexHash(Lcom/miui/gallery/search/resultpage/DataListSourceResult;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 270
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v3, v3, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v5, v5, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListSuggestions:Ljava/util/List;

    new-instance v6, Lcom/miui/gallery/search/core/result/ErrorInfo;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    invoke-direct {p0, v3, v5, v6}, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->updateCacheResult(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    .line 271
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v3, v3, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 272
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-virtual {v3}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->getResult()Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getNextPosition()I

    move-result v3

    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v5, v5, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListSuggestions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v3, v5, :cond_5

    .line 277
    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    .line 278
    .local v0, "data":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 279
    invoke-interface {v0, v2}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 280
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v3, v3, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListSuggestions:Ljava/util/List;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCurrent()Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->toSuggestion(Lcom/miui/gallery/search/core/suggestion/Suggestion;)Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 286
    .end local v0    # "data":Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .end local v2    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v3, v3, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v5, v5, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mDataListSuggestions:Ljava/util/List;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getErrorInfo()Lcom/miui/gallery/search/core/result/ErrorInfo;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6}, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->updateCacheResult(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    .line 289
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-static {v3}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultHelper;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :try_start_2
    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->isLastPage()Z

    move-result v3

    if-nez v3, :cond_6

    .line 291
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v3, v3, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    const-string v6, "pos"

    .line 292
    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;->getNextPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 291
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v3, v3, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mNextLoadParams:Ljava/util/Map;

    const-string v6, "num"

    iget-object v7, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v8, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    iget-object v8, v8, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 294
    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->getDataLoadCount(Lcom/miui/gallery/search/core/QueryInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 293
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :goto_2
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mIsInvalid:Z

    .line 299
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 300
    :try_start_3
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-virtual {v3}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->getResult()Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-result-object v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 296
    :cond_6
    :try_start_4
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultHelper$DataListResultProcessor;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->mLoadCompleted:Z

    goto :goto_2

    .line 299
    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
