.class public Lcom/miui/gallery/search/resultpage/SearchResultFragment;
.super Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;
.source "SearchResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/resultpage/SearchResultFragment$GridSpanLookUp;,
        Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;
    }
.end annotation


# instance fields
.field private mDefaultTitle:Ljava/lang/String;

.field protected mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;

.field private mFrom:Ljava/lang/String;

.field private mPageName:Ljava/lang/String;

.field private mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter",
            "<",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mResultView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/resultpage/SearchResultFragment;)Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    return-object v0
.end method

.method private genFeedbackTaskModeActionClickListener()Lcom/miui/gallery/search/core/display/OnActionClickListener;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$1;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/search/resultpage/SearchResultFragment$1;-><init>(Lcom/miui/gallery/search/resultpage/SearchResultFragment;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected changeFilterData(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 0
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 181
    return-void
.end method

.method protected changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 176
    :cond_0
    return-void
.end method

.method protected closeLoadMore()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->closeLoadMore()V

    .line 134
    return-void
.end method

.method protected getDefaultTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mDefaultTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getErrorViewAdapter()Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;-><init>(Lcom/miui/gallery/search/resultpage/SearchResultFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;

    return-object v0
.end method

.method protected getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f040133

    return v0
.end method

.method protected getLoader()Landroid/content/Loader;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLoaders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Loader;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 192
    .local v0, "loader":Landroid/content/Loader;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_1
    return-object v1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mPageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getResultView()Landroid/view/View;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected moreThanOnePage()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    .line 226
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, "firstView":Landroid/view/View;
    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    .line 228
    invoke-virtual {v4}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 231
    .local v1, "lastView":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method protected onInflateView(Landroid/view/View;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "intentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 55
    const v0, 0x7f12027f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultView:Landroid/support/v7/widget/RecyclerView;

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 59
    const-string v0, "locationList"

    const-string/jumbo v3, "type"

    .line 60
    invoke-virtual {p3, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "from_location_list"

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mFrom:Ljava/lang/String;

    .line 62
    const v0, 0x7f0c0458

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mDefaultTitle:Ljava/lang/String;

    .line 63
    const-string v0, "search_location_list"

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mPageName:Ljava/lang/String;

    .line 74
    :goto_0
    new-instance v0, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 75
    invoke-static {}, Lcom/miui/gallery/search/core/context/SearchContext;->getInstance()Lcom/miui/gallery/search/core/context/SearchContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/search/core/context/SearchContext;->getSuggestionViewFactory()Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mFrom:Ljava/lang/String;

    invoke-direct {v0, v3, v5, v6}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;-><init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->setOnLoadMoreListener(Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;)V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 80
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mInFeedbackTaskMode:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->genFeedbackTaskModeActionClickListener()Lcom/miui/gallery/search/core/display/OnActionClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->setActionClickListener(Lcom/miui/gallery/search/core/display/OnActionClickListener;)V

    .line 85
    :cond_0
    new-instance v8, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 87
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090053

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v8, v0, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 88
    .local v8, "manager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v9, Lcom/miui/gallery/search/resultpage/SearchResultFragment$GridSpanLookUp;

    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    invoke-direct {v9, p0, v8, v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment$GridSpanLookUp;-><init>(Lcom/miui/gallery/search/resultpage/SearchResultFragment;Landroid/support/v7/widget/GridLayoutManager;Lcom/miui/gallery/search/core/display/FullSpanDelegate;)V

    .line 89
    .local v9, "lookup":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    invoke-virtual {v8, v9}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 92
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b02b9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 93
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b02ba

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 94
    .local v2, "topPadding":I
    iget-object v10, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;

    const/4 v7, 0x1

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v8}, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;-><init>(IIIIIIZLandroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v10, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 97
    return-void

    .line 64
    .end local v1    # "horizontalPadding":I
    .end local v2    # "topPadding":I
    .end local v8    # "manager":Landroid/support/v7/widget/GridLayoutManager;
    .end local v9    # "lookup":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    :cond_1
    const-string/jumbo v0, "tagList"

    const-string/jumbo v3, "type"

    .line 65
    invoke-virtual {p3, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const-string v0, "from_tag_list"

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mFrom:Ljava/lang/String;

    .line 67
    const v0, 0x7f0c045e

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mDefaultTitle:Ljava/lang/String;

    .line 68
    const-string v0, "search_tag_list"

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mPageName:Ljava/lang/String;

    goto/16 :goto_0

    .line 70
    :cond_2
    const-string v0, "from_image_result"

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mFrom:Ljava/lang/String;

    .line 71
    invoke-super {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragmentBase;->getDefaultTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mDefaultTitle:Ljava/lang/String;

    .line 72
    const-string v0, "search_result"

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mPageName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onLoadComplete()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->closeLoadMore()V

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/search/StatusHandleHelper;->refreshInfoViews()V

    .line 141
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/search/resultpage/SearchResultFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment$2;-><init>(Lcom/miui/gallery/search/resultpage/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method protected openLoadMore()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mResultAdapter:Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->openLoadMore(Z)V

    .line 129
    return-void
.end method

.method protected restartFilterLoader(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 162
    return-void
.end method

.method protected restartSectionDataLoader(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mSectionDataLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 169
    :cond_0
    return-void
.end method

.method protected restartSectionLoader(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mSectionsLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 157
    :cond_0
    return-void
.end method

.method protected usePersistentResponse()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method
