.class Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$3;
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
    .line 367
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$3;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
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
    const/4 v2, 0x1

    .line 370
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$3;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$3;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->buildFilterListQueryInfoBuilder()Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v0

    .line 372
    .local v0, "queryInfoBuilder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0, v2}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->setAppendSerialInfo(Z)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 374
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$3;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-static {v1, p2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const-string/jumbo v1, "use_persistent_response"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 377
    :cond_0
    new-instance v1, Lcom/miui/gallery/search/core/query/QueryLoader;

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$3;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-static {v2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->access$500(Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v2

    .line 378
    invoke-virtual {v0}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->build()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$3;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v4, v4, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-virtual {v4}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->getFilterResultProcessor()Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/search/core/query/QueryLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;)V

    .line 381
    .end local v0    # "queryInfoBuilder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/search/core/result/SuggestionResult;)V
    .locals 3
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
    .line 387
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/miui/gallery/search/core/result/SuggestionResult;>;"
    if-eqz p2, :cond_0

    .line 388
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$3;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v1

    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->changeFilterData(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    const-string v0, "SearchResultFragmentBase"

    const-string v1, "Loader %s load finished, got no data available"

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 367
    check-cast p2, Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$3;->onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/search/core/result/SuggestionResult;)V

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
    .line 397
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/miui/gallery/search/core/result/SuggestionResult;>;"
    return-void
.end method
