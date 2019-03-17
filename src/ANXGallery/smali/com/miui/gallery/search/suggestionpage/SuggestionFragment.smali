.class public Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;
.super Lcom/miui/gallery/search/SearchFragmentBase;
.source "SuggestionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;,
        Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$SuggestionAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

.field private mDataLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field private mDataView:Landroid/support/v7/widget/RecyclerView;

.field private mErrorViewAdapter:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;

.field private mIsLoading:Z

.field private final mQueryHandler:Landroid/os/Handler;

.field private mQueryText:Ljava/lang/String;

.field private mSectionProcessor:Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;

.field private mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/search/SearchFragmentBase;-><init>()V

    .line 54
    new-instance v0, Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-direct {v0}, Lcom/miui/gallery/search/StatusHandleHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mQueryText:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$1;-><init>(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mQueryHandler:Landroid/os/Handler;

    .line 173
    new-instance v0, Lcom/miui/gallery/search/suggestionpage/SuggestionResultProcessor;

    invoke-direct {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionResultProcessor;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mSectionProcessor:Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;

    .line 174
    new-instance v0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$3;-><init>(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mDataLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;Lcom/miui/gallery/search/SearchConstants$SearchType;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;
    .param p1, "x1"    # Lcom/miui/gallery/search/SearchConstants$SearchType;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->restartDataLoader(Lcom/miui/gallery/search/SearchConstants$SearchType;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mSectionProcessor:Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)Lcom/miui/gallery/search/StatusHandleHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    return-object v0
.end method

.method private requery(Lcom/miui/gallery/search/SearchConstants$SearchType;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "searchType"    # Lcom/miui/gallery/search/SearchConstants$SearchType;
    .param p2, "queryText"    # Ljava/lang/String;
    .param p3, "enableShortcut"    # Z

    .prologue
    const/4 v2, 0x1

    .line 108
    iget-object v1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    :cond_0
    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SEARCH:Lcom/miui/gallery/search/SearchConstants$SearchType;

    if-ne p1, v1, :cond_1

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->restartDataLoader(Lcom/miui/gallery/search/SearchConstants$SearchType;Ljava/lang/String;Z)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 118
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mQueryHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private restartDataLoader(Lcom/miui/gallery/search/SearchConstants$SearchType;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "searchType"    # Lcom/miui/gallery/search/SearchConstants$SearchType;
    .param p2, "queryText"    # Ljava/lang/String;
    .param p3, "enableShortcut"    # Z

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-virtual {p0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "data_loader_extra_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 130
    const-string v1, "data_loader_extra_text"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "data_loader_extra_enable_shortcut"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    invoke-virtual {p0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mDataLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 134
    iput-boolean v3, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mIsLoading:Z

    .line 135
    iget-object v1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/search/StatusHandleHelper;->refreshInfoViews()V

    .line 137
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method public doRetryIfNeeded()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/search/StatusHandleHelper;->getResultStatus()I

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mQueryText:Ljava/lang/String;

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SEARCH:Lcom/miui/gallery/search/SearchConstants$SearchType;

    iget-object v1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mQueryText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->requery(Lcom/miui/gallery/search/SearchConstants$SearchType;Ljava/lang/String;Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string v0, "search_suggestions"

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/miui/gallery/search/SearchFragmentBase;->onDestroy()V

    .line 96
    const-string v0, "from_suggestion"

    invoke-static {v0}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->onCompleteSerial(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 141
    const v0, 0x7f0400c3

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 144
    .local v7, "view":Landroid/view/View;
    const v0, 0x7f1201a3

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 146
    invoke-static {}, Lcom/miui/gallery/search/core/context/SearchContext;->getInstance()Lcom/miui/gallery/search/core/context/SearchContext;

    move-result-object v6

    .line 147
    .local v6, "context":Lcom/miui/gallery/search/core/context/SearchContext;
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 148
    new-instance v0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$SuggestionAdapter;

    iget-object v1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/miui/gallery/search/core/context/SearchContext;->getSuggestionViewFactory()Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    move-result-object v2

    const-string v4, "from_suggestion"

    invoke-direct {v0, v1, v2, v4}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$SuggestionAdapter;-><init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 150
    iget-object v8, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;

    iget-object v1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    .line 151
    invoke-virtual {p0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b016c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;ZIZ)V

    .line 150
    invoke-virtual {v8, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$2;-><init>(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    new-instance v0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;

    iget-object v1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;-><init>(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mErrorViewAdapter:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    iget-object v1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f120188

    .line 164
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f12018a

    .line 165
    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f120189

    .line 166
    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mErrorViewAdapter:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$ErrorViewAdapter;

    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/search/StatusHandleHelper;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;)V

    .line 169
    return-object v7
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/miui/gallery/search/SearchFragmentBase;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->doRetryIfNeeded()V

    .line 91
    return-void
.end method

.method public setQueryText(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "queryText"    # Ljava/lang/String;
    .param p2, "forceSearch"    # Z
    .param p3, "enableShortcut"    # Z

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iput-object p1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mQueryText:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/StatusHandleHelper;->updateResultStatus(I)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    invoke-virtual {v0, v2, v2}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->changeSuggestions(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    .line 80
    :cond_0
    if-eqz p2, :cond_2

    sget-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SEARCH:Lcom/miui/gallery/search/SearchConstants$SearchType;

    :goto_0
    invoke-direct {p0, v0, p1, p3}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->requery(Lcom/miui/gallery/search/SearchConstants$SearchType;Ljava/lang/String;Z)V

    .line 84
    :cond_1
    return-void

    .line 80
    :cond_2
    sget-object v0, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_SUGGESTION:Lcom/miui/gallery/search/SearchConstants$SearchType;

    goto :goto_0
.end method
