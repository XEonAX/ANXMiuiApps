.class public Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;
.super Landroid/widget/RelativeLayout;
.source "ExtendedRecyclerView.java"

# interfaces
.implements Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;
    }
.end annotation


# instance fields
.field protected mClipToPadding:Z

.field protected mEmpty:Landroid/view/ViewStub;

.field protected mEmptyId:I

.field protected mEmptyView:Landroid/view/View;

.field protected mMainContentId:I

.field protected mManualInflateEmptyView:Z

.field private final mObserver:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;

.field protected mPadding:I

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field protected mProgress:Landroid/view/ViewStub;

.field protected mProgressId:I

.field protected mProgressView:Landroid/view/View;

.field protected mRecycler:Landroid/support/v7/widget/RecyclerView;

.field protected mScrollbarStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;-><init>(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mObserver:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;

    .line 42
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->initView()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;-><init>(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mObserver:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;

    .line 47
    invoke-virtual {p0, p2}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->initView()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;-><init>(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mObserver:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;

    .line 53
    invoke-virtual {p0, p2}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->initView()V

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->showRecycler()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->showEmpty()V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mMainContentId:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f120017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgress:Landroid/view/ViewStub;

    .line 83
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgress:Landroid/view/ViewStub;

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "layout_main_content must contains progress stub!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgress:Landroid/view/ViewStub;

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgressId:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgress:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgressView:Landroid/view/View;

    .line 89
    const v1, 0x7f120002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    .line 90
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    if-nez v1, :cond_2

    .line 91
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "layout_main_content must contains empty stub!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_2
    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyId:I

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mManualInflateEmptyView:Z

    if-nez v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyId:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 95
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyView:Landroid/view/View;

    .line 98
    :cond_3
    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->initRecyclerView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleExistingViews"    # Z

    .prologue
    .line 139
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 140
    .local v0, "oldAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mObserver:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 143
    :cond_0
    if-eqz p1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mObserver:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 147
    :cond_1
    if-eqz p2, :cond_2

    .line 148
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1, p3}, Landroid/support/v7/widget/RecyclerView;->swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 153
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 154
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->showRecycler()V

    .line 158
    :goto_1
    return-void

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 156
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->showEmpty()V

    goto :goto_1
.end method

.method private setEmptyVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 197
    :cond_0
    return-void
.end method

.method private showEmpty()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 188
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setEmptyVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgress:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 191
    return-void
.end method

.method private showRecycler()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 183
    invoke-direct {p0, v2}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setEmptyVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgress:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 185
    return-void
.end method


# virtual methods
.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "itemDecoration"    # Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 216
    return-void
.end method

.method public canScrollDown()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public getRecycler()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public inflateEmptyView()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyId:I

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 202
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmpty:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyView:Landroid/view/View;

    .line 204
    :cond_0
    return-void
.end method

.method protected initAttrs(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/R$styleable;->ExtendedRecyclerView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mClipToPadding:Z

    .line 61
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mManualInflateEmptyView:Z

    .line 62
    const/4 v1, 0x5

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPadding:I

    .line 63
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingTop:I

    .line 64
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingBottom:I

    .line 65
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingLeft:I

    .line 66
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingRight:I

    .line 67
    const/16 v1, 0xa

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    .line 68
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mEmptyId:I

    .line 69
    const/4 v1, 0x1

    const v2, 0x7f0400a2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mProgressId:I

    .line 70
    const/4 v1, 0x2

    const v2, 0x7f040072

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mMainContentId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method protected initRecyclerView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 102
    const v1, 0x7f120018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "recyclerView":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 105
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .end local v0    # "recyclerView":Landroid/view/View;
    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 109
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mClipToPadding:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 111
    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPadding:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Numbers;->equals(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPadding:I

    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPadding:I

    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPadding:I

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPadding:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 117
    :goto_0
    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    const/high16 v2, 0x1000000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    const/high16 v2, 0x3000000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    const/high16 v2, 0x2000000

    if-ne v1, v2, :cond_1

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mScrollbarStyle:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollBarStyle(I)V

    .line 123
    :cond_1
    return-void

    .line 107
    .restart local v0    # "recyclerView":Landroid/view/View;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ExtendedRecyclerView only works with a RecyclerView!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    .end local v0    # "recyclerView":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingLeft:I

    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingTop:I

    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingRight:I

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mPaddingBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 131
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 1
    .param p1, "itemAnimator"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 228
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 127
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 232
    return-void
.end method
