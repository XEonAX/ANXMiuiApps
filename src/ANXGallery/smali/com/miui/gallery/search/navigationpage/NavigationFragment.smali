.class public Lcom/miui/gallery/search/navigationpage/NavigationFragment;
.super Lcom/miui/gallery/search/SearchFragmentBase;
.source "NavigationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/navigationpage/NavigationFragment$StatusReportDelegate;,
        Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/search/navigationpage/NavigationAdapter;

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

.field private mIsLoading:Z

.field private mSectionProcessor:Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;

.field private mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

.field private mStatusLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusReportDelegate:Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/search/SearchFragmentBase;-><init>()V

    .line 48
    new-instance v0, Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-direct {v0}, Lcom/miui/gallery/search/StatusHandleHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    .line 49
    new-instance v0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$StatusReportDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/navigationpage/NavigationFragment$StatusReportDelegate;-><init>(Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mStatusReportDelegate:Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;

    .line 106
    new-instance v0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment$2;-><init>(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mSectionProcessor:Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;

    .line 126
    new-instance v0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment$3;-><init>(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mDataLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 176
    new-instance v0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment$4;-><init>(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mStatusLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 257
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mSectionProcessor:Lcom/miui/gallery/search/core/resultprocessor/SectionedResultProcessor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/search/navigationpage/NavigationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mAdapter:Lcom/miui/gallery/search/navigationpage/NavigationAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/search/navigationpage/NavigationFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/navigationpage/NavigationFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/search/StatusHandleHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mStatusReportDelegate:Lcom/miui/gallery/search/SearchStatusLoader$StatusReportDelegate;

    return-object v0
.end method

.method private restartDataLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mDataLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 101
    iput-boolean v3, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mIsLoading:Z

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/search/StatusHandleHelper;->refreshInfoViews()V

    .line 103
    return-void
.end method


# virtual methods
.method public doRetry()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/search/StatusHandleHelper;->getResultStatus()I

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->restartDataLoader()V

    .line 96
    :cond_0
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "search_navigation"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/miui/gallery/search/SearchFragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mStatusLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->restartDataLoader()V

    .line 90
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 54
    const v0, 0x7f0400c3

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 57
    .local v6, "view":Landroid/view/View;
    const v0, 0x7f1201a3

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, v2, v5, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 60
    new-instance v0, Lcom/miui/gallery/search/navigationpage/NavigationAdapter;

    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {}, Lcom/miui/gallery/search/core/context/SearchContext;->getInstance()Lcom/miui/gallery/search/core/context/SearchContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/search/core/context/SearchContext;->getSuggestionViewFactory()Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    move-result-object v2

    const-string v4, "from_navigation"

    invoke-direct {v0, v1, v2, v4}, Lcom/miui/gallery/search/navigationpage/NavigationAdapter;-><init>(Landroid/app/Activity;Lcom/miui/gallery/search/core/display/SuggestionViewFactory;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mAdapter:Lcom/miui/gallery/search/navigationpage/NavigationAdapter;

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mAdapter:Lcom/miui/gallery/search/navigationpage/NavigationAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 62
    iget-object v7, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;

    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mAdapter:Lcom/miui/gallery/search/navigationpage/NavigationAdapter;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;ZIZ)V

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;-><init>(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f120188

    .line 75
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f12018a

    .line 76
    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f120189

    .line 77
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;

    iget-object v7, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v5, p0, v7}, Lcom/miui/gallery/search/navigationpage/NavigationFragment$ErrorViewAdapter;-><init>(Lcom/miui/gallery/search/navigationpage/NavigationFragment;Landroid/content/Context;)V

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/search/StatusHandleHelper;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/miui/gallery/search/StatusHandleHelper$ErrorViewAdapter;)V

    .line 80
    return-object v6
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/miui/gallery/search/SearchFragmentBase;->onResume()V

    .line 198
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 200
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->doRetry()V

    .line 201
    return-void
.end method
