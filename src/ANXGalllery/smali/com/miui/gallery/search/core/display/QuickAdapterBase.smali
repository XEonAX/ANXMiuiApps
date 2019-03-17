.class public abstract Lcom/miui/gallery/search/core/display/QuickAdapterBase;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "QuickAdapterBase.java"

# interfaces
.implements Lcom/miui/gallery/search/core/display/FullSpanDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;,
        Lcom/miui/gallery/search/core/display/QuickAdapterBase$InnerDiffCallback;,
        Lcom/miui/gallery/search/core/display/QuickAdapterBase$NonDataDiffCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;",
        ">;",
        "Lcom/miui/gallery/search/core/display/FullSpanDelegate;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mCopyFooterLayout:Landroid/widget/LinearLayout;

.field private mCopyHeaderLayout:Landroid/widget/LinearLayout;

.field private mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private mEmptyView:Landroid/view/View;

.field private mFootAndEmptyEnable:Z

.field private mFooterLayout:Landroid/widget/LinearLayout;

.field private mHeadAndEmptyEnable:Z

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLoadCompleteView:Landroid/view/View;

.field private mLoadCompleteViewRes:I

.field private mLoadFailedViewOnClickListener:Landroid/view/View$OnClickListener;

.field private mLoadMoreFailedView:Landroid/view/View;

.field private mLoadMoreFailedViewRes:I

.field private mLoadMoreRequested:Z

.field private mLoadingView:Landroid/view/View;

.field private mLoadingViewRes:I

.field private mNextLoadEnable:Z

.field private mRequestLoadMoreListener:Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;

.field private mShowLoadingView:Z

.field private final mViewTypePositionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 60
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mCopyHeaderLayout:Landroid/widget/LinearLayout;

    .line 30
    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mCopyFooterLayout:Landroid/widget/LinearLayout;

    .line 39
    iput-boolean v2, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mNextLoadEnable:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mShowLoadingView:Z

    .line 42
    iput-boolean v2, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadMoreRequested:Z

    .line 45
    iput v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadingViewRes:I

    .line 47
    iput v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadMoreFailedViewRes:I

    .line 49
    iput v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadCompleteViewRes:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    .line 354
    new-instance v0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase$1;-><init>(Lcom/miui/gallery/search/core/display/QuickAdapterBase;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadFailedViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 484
    new-instance v0, Lcom/miui/gallery/search/core/display/QuickAdapterBase$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase$2;-><init>(Lcom/miui/gallery/search/core/display/QuickAdapterBase;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 61
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/core/display/QuickAdapterBase;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/display/QuickAdapterBase;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadMoreFailedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/core/display/QuickAdapterBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/core/display/QuickAdapterBase;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->genPositionList()V

    return-void
.end method

.method private ensureLayoutParams(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 468
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 469
    instance-of v1, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 470
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .end local p2    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    .line 472
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private genPositionList()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 438
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 439
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 441
    invoke-direct {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->noItemView()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mNextLoadEnable:Z

    if-nez v1, :cond_5

    .line 442
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeadAndEmptyEnable:Z

    if-eqz v1, :cond_1

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFootAndEmptyEnable:Z

    if-eqz v1, :cond_4

    .line 449
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_4
    :goto_0
    return-void

    .line 452
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    .line 453
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->getInnerItemViewCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 456
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->getInnerItemViewType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 458
    :cond_7
    iget-boolean v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mNextLoadEnable:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mShowLoadingView:Z

    if-eqz v1, :cond_8

    .line 459
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_8
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 462
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getLoadingView(Landroid/view/ViewGroup;)Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 347
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadingViewRes:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadingViewRes:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadingView:Landroid/view/View;

    .line 351
    :cond_0
    new-instance v0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadingView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 348
    :cond_1
    const v0, 0x7f04012e

    goto :goto_0
.end method

.method private noItemView()Z
    .locals 1

    .prologue
    .line 478
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->getInnerItemViewCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyNonDataChanged()V
    .locals 4

    .prologue
    .line 492
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 493
    .local v1, "oldViewTypePositionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->genPositionList()V

    .line 494
    new-instance v2, Lcom/miui/gallery/search/core/display/QuickAdapterBase$NonDataDiffCallback;

    iget-object v3, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-direct {v2, v1, v3}, Lcom/miui/gallery/search/core/display/QuickAdapterBase$NonDataDiffCallback;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v2}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    .line 495
    .local v0, "diffResult":Landroid/support/v7/util/DiffUtil$DiffResult;
    invoke-virtual {v0, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 496
    return-void
.end method

.method private onBindLoadMore(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 337
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mNextLoadEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mRequestLoadMoreListener:Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadMoreRequested:Z

    if-nez v0, :cond_0

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadMoreRequested:Z

    .line 339
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mRequestLoadMoreListener:Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;->onLoadMoreRequested()V

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 143
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->addFooterView(Landroid/view/View;I)V

    .line 144
    return-void
.end method

.method public addFooterView(Landroid/view/View;I)V
    .locals 2
    .param p1, "footer"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 156
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mCopyFooterLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mCopyFooterLayout:Landroid/widget/LinearLayout;

    .line 166
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_1

    const/4 p2, -0x1

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 169
    invoke-direct {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->notifyNonDataChanged()V

    .line 170
    return-void

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mCopyFooterLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 87
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->addHeaderView(Landroid/view/View;I)V

    .line 88
    return-void
.end method

.method public addHeaderView(Landroid/view/View;I)V
    .locals 2
    .param p1, "header"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 100
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mCopyHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 102
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mCopyHeaderLayout:Landroid/widget/LinearLayout;

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_1

    const/4 p2, -0x1

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 111
    invoke-direct {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->notifyNonDataChanged()V

    .line 112
    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mCopyHeaderLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method protected abstract bindInnerItemViewHolder(Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public closeLoadMore()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    const/4 v1, 0x0

    .line 247
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mNextLoadEnable:Z

    if-eqz v0, :cond_0

    .line 248
    iput-boolean v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mNextLoadEnable:Z

    .line 250
    :cond_0
    iput-boolean v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadMoreRequested:Z

    .line 251
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->hideLoadMoreFailedView()V

    .line 252
    invoke-direct {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->notifyNonDataChanged()V

    .line 253
    return-void
.end method

.method protected abstract createInnerItemViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method protected getInnerItemPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sub-int v0, p1, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract getInnerItemViewCount()I
.end method

.method protected abstract getInnerItemViewType(I)I
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 368
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 373
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hideLoadMoreFailedView()V
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadMoreFailedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadMoreFailedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->removeFooterView(Landroid/view/View;)V

    .line 301
    :cond_0
    return-void
.end method

.method public isFullSpan(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 404
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->getItemViewType(I)I

    move-result v0

    .line 405
    .local v0, "viewType":I
    packed-switch v0, :pswitch_data_0

    .line 412
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 410
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mNextLoadEnable:Z

    return v0
.end method

.method protected notifyDataChanged(Landroid/support/v7/util/DiffUtil$Callback;)V
    .locals 4
    .param p1, "diffCallback"    # Landroid/support/v7/util/DiffUtil$Callback;

    .prologue
    .line 531
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 532
    .local v1, "oldViewTypePositionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->genPositionList()V

    .line 533
    new-instance v2, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;

    iget-object v3, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mViewTypePositionList:Ljava/util/ArrayList;

    invoke-direct {v2, v1, v3, p1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase$DataDiffCallback;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v7/util/DiffUtil$Callback;)V

    invoke-static {v2}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    .line 535
    .local v0, "diffResult":Landroid/support/v7/util/DiffUtil$DiffResult;
    invoke-virtual {v0, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 536
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    check-cast p1, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->onBindViewHolder(Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 417
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getItemViewType()I

    move-result v1

    .line 419
    .local v1, "viewType":I
    packed-switch v1, :pswitch_data_0

    .line 428
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->getInnerItemPosition(I)I

    move-result v0

    .line 429
    .local v0, "innerPosition":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->bindInnerItemViewHolder(Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;I)V

    .line 430
    iget-boolean v2, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mShowLoadingView:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->getInnerItemViewCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 431
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->onBindLoadMore(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 435
    .end local v0    # "innerPosition":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 421
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->onBindLoadMore(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 378
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    const/4 v0, 0x0

    .line 379
    .local v0, "viewHolder":Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    packed-switch p2, :pswitch_data_0

    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->createInnerItemViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    .line 381
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;

    .end local v0    # "viewHolder":Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;-><init>(Landroid/view/View;)V

    .line 382
    .restart local v0    # "viewHolder":Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, p1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->ensureLayoutParams(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 385
    :pswitch_1
    new-instance v0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;

    .end local v0    # "viewHolder":Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mEmptyView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;-><init>(Landroid/view/View;)V

    .line 386
    .restart local v0    # "viewHolder":Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mEmptyView:Landroid/view/View;

    invoke-direct {p0, v1, p1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->ensureLayoutParams(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 389
    :pswitch_2
    new-instance v0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;

    .end local v0    # "viewHolder":Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;-><init>(Landroid/view/View;)V

    .line 390
    .restart local v0    # "viewHolder":Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, p1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->ensureLayoutParams(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 393
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->getLoadingView(Landroid/view/ViewGroup;)Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;

    move-result-object v0

    .line 394
    iget-object v1, v0, Lcom/miui/gallery/search/core/display/BaseSuggestionViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1, p1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->ensureLayoutParams(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public openLoadMore()V
    .locals 1

    .prologue
    .line 224
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->openLoadMore(Z)V

    .line 225
    return-void
.end method

.method public openLoadMore(Z)V
    .locals 1
    .param p1, "showLoadingView"    # Z

    .prologue
    .line 236
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iput-boolean p1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mShowLoadingView:Z

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mNextLoadEnable:Z

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadMoreRequested:Z

    .line 239
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->hideLoadMoreFailedView()V

    .line 240
    invoke-direct {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->notifyNonDataChanged()V

    .line 241
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 177
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mFooterLayout:Landroid/widget/LinearLayout;

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->notifyNonDataChanged()V

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 119
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->notifyNonDataChanged()V

    goto :goto_0
.end method

.method public setOnLoadMoreListener(Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;)V
    .locals 0
    .param p1, "requestLoadMoreListener"    # Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;

    .prologue
    .line 216
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mRequestLoadMoreListener:Lcom/miui/gallery/search/core/display/RequestLoadMoreListener;

    .line 217
    return-void
.end method

.method public showLoadCompleteView()V
    .locals 3

    .prologue
    .line 320
    .local p0, "this":Lcom/miui/gallery/search/core/display/QuickAdapterBase;, "Lcom/miui/gallery/search/core/display/QuickAdapterBase<TVH;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->closeLoadMore()V

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadCompleteView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadCompleteViewRes:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadCompleteViewRes:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadCompleteView:Landroid/view/View;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->mLoadCompleteView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/search/core/display/QuickAdapterBase;->addFooterView(Landroid/view/View;I)V

    .line 326
    return-void

    .line 322
    :cond_1
    const v0, 0x7f04012d

    goto :goto_0
.end method
