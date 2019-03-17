.class public Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "AssistantPageFragment.java"


# instance fields
.field private mAdapter:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

.field private final mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private final mCardObserver:Lcom/miui/gallery/card/CardManager$CardObserver;

.field private mEmptyPage:Lcom/miui/gallery/widget/EmptyPage;

.field private mHasMore:Z

.field private mIsFirstLoad:Z

.field private mIsLoading:Z

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mLoadMoreLayout:Lcom/miui/gallery/widget/LoadMoreLayout;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mScrollToBottomListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mIsLoading:Z

    .line 41
    iput-boolean v1, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mHasMore:Z

    .line 42
    iput-boolean v1, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mIsFirstLoad:Z

    .line 96
    new-instance v0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$1;-><init>(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mScrollToBottomListener:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$2;-><init>(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 113
    new-instance v0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$3;-><init>(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mCardObserver:Lcom/miui/gallery/card/CardManager$CardObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->loadMoreCard()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Lcom/miui/gallery/card/ui/cardlist/CardAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mAdapter:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->updateCardList()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;ILcom/miui/gallery/card/Card;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->updateCard(ILcom/miui/gallery/card/Card;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Lcom/miui/gallery/widget/LoadMoreLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mLoadMoreLayout:Lcom/miui/gallery/widget/LoadMoreLayout;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mHasMore:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mIsFirstLoad:Z

    return v0
.end method

.method static synthetic access$702(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mIsFirstLoad:Z

    return p1
.end method

.method static synthetic access$802(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mIsLoading:Z

    return p1
.end method

.method private loadMoreCard()V
    .locals 3

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mIsLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mHasMore:Z

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string v0, "AssistantPageFragment"

    const-string v1, "loadMoreCard"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mIsLoading:Z

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mLoadMoreLayout:Lcom/miui/gallery/widget/LoadMoreLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/LoadMoreLayout;->startLoad()V

    .line 165
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$6;-><init>(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V

    new-instance v2, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;

    invoke-direct {v2, p0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$7;-><init>(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method private postOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 151
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 152
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateCard(ILcom/miui/gallery/card/Card;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 131
    if-gez p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$4;-><init>(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;I)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateCardList()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$5;-><init>(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string v0, "assistant"

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDestroy()V

    .line 89
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mCardObserver:Lcom/miui/gallery/card/CardManager$CardObserver;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/CardManager;->unregisterObserver(Lcom/miui/gallery/card/CardManager$CardObserver;)V

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mAdapter:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mAdapter:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 46
    const v2, 0x7f040023

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1200bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 49
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 50
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/miui/gallery/util/DividerItemDecoration;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v5, v4}, Lcom/miui/gallery/util/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 53
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 54
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mScrollToBottomListener:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/miui/gallery/util/MiscUtil;->setRecyclerViewScrollToBottomListener(Landroid/support/v7/widget/RecyclerView;Ljava/lang/Runnable;)V

    .line 56
    new-instance v2, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mAdapter:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    .line 57
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mAdapter:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    iget-object v3, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 59
    const v2, 0x7f0400a8

    iget-object v3, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/widget/LoadMoreLayout;

    iput-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mLoadMoreLayout:Lcom/miui/gallery/widget/LoadMoreLayout;

    .line 60
    const v2, 0x7f04003d

    iget-object v3, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/widget/EmptyPage;

    iput-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mEmptyPage:Lcom/miui/gallery/widget/EmptyPage;

    .line 61
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mEmptyPage:Lcom/miui/gallery/widget/EmptyPage;

    invoke-virtual {v2, v5}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 62
    iget-object v3, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mEmptyPage:Lcom/miui/gallery/widget/EmptyPage;

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->hasCardEver()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0c059f

    :goto_0
    invoke-virtual {v3, v2}, Lcom/miui/gallery/widget/EmptyPage;->setDescription(I)V

    .line 64
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mAdapter:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    iget-object v3, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mEmptyPage:Lcom/miui/gallery/widget/EmptyPage;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->setEmptyView(Landroid/view/View;)V

    .line 66
    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mAdapter:Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 67
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->mCardObserver:Lcom/miui/gallery/card/CardManager$CardObserver;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/card/CardManager;->registerObserver(Lcom/miui/gallery/card/CardManager$CardObserver;)V

    .line 68
    return-object v1

    .line 62
    :cond_0
    const v2, 0x7f0c059e

    goto :goto_0
.end method

.method protected onUserFirstVisible()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "AssistantPageFragment"

    const-string v1, "onUserFirstVisible"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->loadMoreCard()V

    .line 75
    return-void
.end method

.method protected recordPageByDefault()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->setUserVisibleHint(Z)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const-string v0, "assistant"

    const-string v1, "assistant_tab_page_view"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method
