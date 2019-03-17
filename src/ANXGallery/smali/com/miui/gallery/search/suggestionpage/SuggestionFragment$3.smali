.class Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;
.super Ljava/lang/Object;
.source "SuggestionFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;
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
.field final synthetic this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getResultItemCount(Lcom/miui/gallery/search/core/result/SuggestionResult;)I
    .locals 2
    .param p1, "result"    # Lcom/miui/gallery/search/core/result/SuggestionResult;

    .prologue
    .line 269
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "itemCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getShortCutUri(Lcom/miui/gallery/search/core/result/SuggestionResult;)Ljava/lang/String;
    .locals 2
    .param p1, "result"    # Lcom/miui/gallery/search/core/result/SuggestionResult;

    .prologue
    .line 264
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "short_cut_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDone(Lcom/miui/gallery/search/core/result/SuggestionResult;)Z
    .locals 3
    .param p1, "result"    # Lcom/miui/gallery/search/core/result/SuggestionResult;

    .prologue
    const/4 v0, 0x1

    .line 259
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getResultExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getResultExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_done"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
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
    .line 178
    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SEARCH:Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 179
    .local v2, "searchType":Lcom/miui/gallery/search/SearchConstants$SearchType;
    const-string v3, "data_loader_extra_text"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "queryText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    const-string v3, "SuggestionFragment"

    const-string v4, "Invalid query text for loader!"

    invoke-static {v3, v4}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v3, 0x0

    .line 198
    :goto_0
    return-object v3

    .line 186
    :cond_0
    const-string v3, "from_suggestion"

    invoke-static {v3}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->onCompleteSerial(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    const-string v3, "from_suggestion"

    invoke-static {v3}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->createNewSerial(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    const-string v3, "data_loader_extra_type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 190
    const-string v3, "data_loader_extra_type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .end local v2    # "searchType":Lcom/miui/gallery/search/SearchConstants$SearchType;
    check-cast v2, Lcom/miui/gallery/search/SearchConstants$SearchType;

    .line 192
    .restart local v2    # "searchType":Lcom/miui/gallery/search/SearchConstants$SearchType;
    :cond_1
    new-instance v3, Lcom/miui/gallery/search/core/QueryInfo$Builder;

    invoke-direct {v3, v2}, Lcom/miui/gallery/search/core/QueryInfo$Builder;-><init>(Lcom/miui/gallery/search/SearchConstants$SearchType;)V

    const-string v4, "query"

    .line 193
    invoke-virtual {v3, v4, v1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v3

    const-string v4, "enableShortcut"

    const-string v5, "data_loader_extra_enable_shortcut"

    const/4 v6, 0x0

    .line 194
    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 195
    invoke-virtual {v3, v4}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->setAppendSerialInfo(Z)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v3

    .line 196
    invoke-virtual {v3}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->build()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v0

    .line 197
    .local v0, "queryInfo":Lcom/miui/gallery/search/core/QueryInfo;
    new-instance v3, Lcom/miui/gallery/search/core/query/QueryLoader;

    iget-object v4, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    .line 198
    invoke-static {v4}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$100(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v5}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$200(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lcom/miui/gallery/search/core/query/QueryLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/search/core/result/SuggestionResult;)V
    .locals 9
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
    .line 204
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/miui/gallery/search/core/result/SuggestionResult<Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;>;>;"
    .local p2, "result":Lcom/miui/gallery/search/core/result/SuggestionResult;, "Lcom/miui/gallery/search/core/result/SuggestionResult<Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor<Lcom/miui/gallery/search/core/suggestion/SuggestionSection;>;>;"
    move-object v5, p1

    check-cast v5, Lcom/miui/gallery/search/core/query/QueryLoader;

    invoke-virtual {v5}, Lcom/miui/gallery/search/core/query/QueryLoader;->getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v1

    .line 206
    .local v1, "queryInfo":Lcom/miui/gallery/search/core/QueryInfo;
    const/4 v4, 0x0

    .line 207
    .local v4, "status":I
    invoke-direct {p0, p2}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->isDone(Lcom/miui/gallery/search/core/result/SuggestionResult;)Z

    move-result v0

    .line 208
    .local v0, "isDone":Z
    if-eqz p2, :cond_3

    .line 209
    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 211
    const-string v5, "SuggestionFragment"

    const-string v6, "Loader %s load finished, got empty result"

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v5}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$300(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    move-result-object v5

    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 217
    invoke-static {p2}, Lcom/miui/gallery/search/utils/SearchUtils;->getErrorStatus(Lcom/miui/gallery/search/core/result/SuggestionResult;)I

    move-result v4

    .line 220
    invoke-direct {p0, p2}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->getShortCutUri(Lcom/miui/gallery/search/core/result/SuggestionResult;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "shortCutUri":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 222
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v5

    new-instance v6, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3$1;

    invoke-direct {v6, p0, v3}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3$1;-><init>(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 237
    .end local v3    # "shortCutUri":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    if-nez v0, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-static {v6, v5}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$402(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;Z)Z

    .line 238
    iget-object v5, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v5}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$500(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/StatusHandleHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v6}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$400(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Z

    move-result v6

    if-nez v6, :cond_5

    .end local v4    # "status":I
    :goto_3
    invoke-virtual {v5, v4}, Lcom/miui/gallery/search/StatusHandleHelper;->updateResultStatus(I)V

    .line 240
    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0, p2}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->getResultItemCount(Lcom/miui/gallery/search/core/result/SuggestionResult;)I

    move-result v2

    .line 242
    .local v2, "resultItemCount":I
    invoke-virtual {v1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v5

    sget-object v6, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SEARCH:Lcom/miui/gallery/search/SearchConstants$SearchType;

    if-ne v5, v6, :cond_6

    const-string v5, "from_search"

    :goto_4
    const-string/jumbo v6, "suggestion_recall"

    const-string v7, "ItemCount"

    .line 245
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 242
    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v2    # "resultItemCount":I
    :cond_1
    return-void

    .line 213
    .restart local v4    # "status":I
    :cond_2
    const-string v6, "SuggestionFragment"

    const-string v7, "Loader %s load finished, got %s results"

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 214
    invoke-interface {p2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;

    invoke-virtual {v5}, Lcom/miui/gallery/search/core/suggestion/GroupedSuggestionCursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 213
    invoke-static {v6, v7, v8, v5}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    :cond_3
    const-string v5, "SuggestionFragment"

    const-string v6, "Loader %s load finished, got no data available"

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 237
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 238
    :cond_5
    const/4 v4, -0x1

    goto :goto_3

    .line 242
    .end local v4    # "status":I
    .restart local v2    # "resultItemCount":I
    :cond_6
    const-string v5, "from_suggestion"

    goto :goto_4
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 175
    check-cast p2, Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/search/core/result/SuggestionResult;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$300(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$300(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 253
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$500(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/StatusHandleHelper;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/StatusHandleHelper;->updateResultStatus(I)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->access$402(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;Z)Z

    .line 256
    return-void
.end method
