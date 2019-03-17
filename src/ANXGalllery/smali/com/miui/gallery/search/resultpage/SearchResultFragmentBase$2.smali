.class Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;
.super Ljava/lang/Object;
.source "SearchResultFragmentBase.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/miui/gallery/search/core/result/SuggestionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 284
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->getSectionDataQueryInfoBuilder()Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v7

    .line 286
    .local v7, "queryInfoBuilder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    if-eqz v7, :cond_1

    .line 287
    invoke-virtual {v7, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->setAppendSerialInfo(Z)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 288
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-static {v0, p2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-string/jumbo v0, "use_persistent_response"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 291
    :cond_0
    new-instance v0, Lcom/miui/gallery/search/core/query/QueryLoader;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-static {v1}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->access$300(Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v7}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->build()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v3, v3, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    .line 292
    invoke-virtual {v3}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->getDataListResultProcessor()Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    .line 293
    invoke-virtual {v5}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->receiveResultUpdates()Z

    move-result v5

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/search/core/query/QueryLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;ZZZ)V

    .line 297
    .end local v7    # "queryInfoBuilder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    :goto_0
    return-object v0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->closeLoadMore()V

    .line 297
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/search/core/result/SuggestionResult;)V
    .locals 10
    .param p2, "loadResult"    # Lcom/miui/gallery/search/core/result/SuggestionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ">;",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/miui/gallery/search/core/result/SuggestionResult;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 302
    const/4 v7, 0x0

    .line 303
    .local v7, "status":I
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-static {v2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->access$400(Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 308
    if-eqz p2, :cond_0

    .line 309
    invoke-static {p2}, Lcom/miui/gallery/search/utils/SearchUtils;->getErrorStatus(Lcom/miui/gallery/search/core/result/SuggestionResult;)I

    move-result v7

    .line 310
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mResultSectionQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 315
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->closeLoadMore()V

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "result_invalid_hash"

    const-string v2, "Query"

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v3, v3, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mResultSectionQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 318
    invoke-virtual {v3}, Lcom/miui/gallery/search/core/QueryInfo;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 317
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->access$402(Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;J)J

    .line 331
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-virtual {v0, v7}, Lcom/miui/gallery/search/StatusHandleHelper;->updateResultStatus(I)V

    .line 357
    :goto_2
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0, v5, v5}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 313
    const/16 v7, 0xb

    goto :goto_0

    .line 320
    :cond_1
    if-eqz p2, :cond_2

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mResultSectionQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 326
    :goto_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 327
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "force_requery"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0, v6}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->restartSectionDataLoader(Landroid/os/Bundle;)V

    goto :goto_1

    .line 323
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_2
    const-string v0, "SearchResultFragmentBase"

    const-string v1, "Loader %s load finished, invalid hash code got no data available"

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 335
    :cond_3
    if-eqz p2, :cond_5

    .line 336
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mResultSectionQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 337
    invoke-static {p2}, Lcom/miui/gallery/search/utils/SearchUtils;->getErrorStatus(Lcom/miui/gallery/search/core/result/SuggestionResult;)I

    move-result v7

    .line 345
    :goto_4
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->isLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 346
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->onLoadComplete()V

    .line 356
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-virtual {v0, v7}, Lcom/miui/gallery/search/StatusHandleHelper;->updateResultStatus(I)V

    goto :goto_2

    .line 339
    :cond_5
    const-string v0, "SearchResultFragmentBase"

    const-string v1, "Loader %s load finished, got no data available"

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 347
    :cond_6
    invoke-static {v7}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 348
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->openLoadMore()V

    .line 349
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->getErrorViewAdapter()Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->isEmptyDataView()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 351
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->onLoadMoreRequested()V

    goto :goto_5

    .line 354
    :cond_7
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->closeLoadMore()V

    goto :goto_5
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 281
    check-cast p2, Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$2;->onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/search/core/result/SuggestionResult;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/miui/gallery/search/core/result/SuggestionResult;>;"
    return-void
.end method
