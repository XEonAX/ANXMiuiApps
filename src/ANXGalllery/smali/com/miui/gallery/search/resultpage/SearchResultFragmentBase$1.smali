.class Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;
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
        "Lcom/miui/gallery/search/core/result/SuggestionResult",
        "<",
        "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
        "<",
        "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

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
            "Lcom/miui/gallery/search/core/result/SuggestionResult",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mResultSectionQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    if-eqz v0, :cond_1

    .line 221
    new-instance v0, Lcom/miui/gallery/search/core/QueryInfo$Builder;

    invoke-direct {v0}, Lcom/miui/gallery/search/core/QueryInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mResultSectionQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->cloneFrom(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0, v2}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->setAppendSerialInfo(Z)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v7

    .line 223
    .local v7, "queryInfoBuilder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-static {v0, p2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string/jumbo v0, "use_persistent_response"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    .line 226
    :cond_0
    new-instance v0, Lcom/miui/gallery/search/core/query/QueryLoader;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    .line 227
    invoke-static {v1}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->access$100(Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v7}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->build()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-static {v3}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->access$200(Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;)Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v5}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->receiveResultUpdates()Z

    move-result v5

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/search/core/query/QueryLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;ZZZ)V

    .line 229
    .end local v7    # "queryInfoBuilder":Lcom/miui/gallery/search/core/QueryInfo$Builder;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/search/core/result/SuggestionResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;>;>;",
            "Lcom/miui/gallery/search/core/result/SuggestionResult",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/miui/gallery/search/core/result/SuggestionResult<Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;>;>;"
    .local p2, "result":Lcom/miui/gallery/search/core/result/SuggestionResult;, "Lcom/miui/gallery/search/core/result/SuggestionResult<Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;>;"
    const/4 v5, 0x0

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "status":I
    if-eqz p2, :cond_4

    .line 237
    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;

    invoke-virtual {v1}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getGroupCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->closeLoadMore()V

    .line 240
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iput-object v5, v1, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    .line 254
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/miui/gallery/search/utils/SearchUtils;->getErrorStatus(Lcom/miui/gallery/search/core/result/SuggestionResult;)I

    move-result v0

    .line 258
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/search/StatusHandleHelper;->updateResultStatus(I)V

    .line 261
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->requestOpenCloudControlSearch(Ljava/lang/String;)V

    .line 264
    :cond_2
    return-void

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v4, v1, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mResultSectionQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;

    invoke-virtual {v3, v4, v1}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->createSearchResultHelper(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;)Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    move-result-object v1

    iput-object v1, v2, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    .line 245
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->openLoadMore()V

    .line 247
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->onLoadMoreRequested()V

    .line 249
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/search/resultpage/SearchResultHelper;->needLoadFilterList()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v1, v5}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->restartFilterLoader(Landroid/os/Bundle;)V

    goto :goto_0

    .line 256
    :cond_4
    const-string v1, "SearchResultFragmentBase"

    const-string v2, "Loader %s load finished, got no data available"

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 217
    check-cast p2, Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/search/core/result/SuggestionResult;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/gallery/search/core/result/SuggestionResult",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionSection;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/miui/gallery/search/core/result/SuggestionResult<Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;>;>;"
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0, v2, v2}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 269
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->closeLoadMore()V

    .line 270
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/StatusHandleHelper;->updateResultStatus(I)V

    .line 271
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase$1;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;

    iput-object v2, v0, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->mSectionDataResultHelper:Lcom/miui/gallery/search/resultpage/SearchResultHelper;

    .line 272
    return-void
.end method
