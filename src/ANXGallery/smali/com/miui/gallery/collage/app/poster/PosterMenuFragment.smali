.class public Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;
.super Lcom/miui/gallery/collage/app/common/CollageMenuFragment;
.source "PosterMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/collage/app/common/CollageMenuFragment",
        "<",
        "Lcom/miui/gallery/collage/core/poster/PosterPresenter;",
        "Lcom/miui/gallery/collage/app/common/AbstractPosterFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataInit:Z

.field private mDataReady:Z

.field private mInitDataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mPosterMenuAdapter:Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;

.field private mPosterModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/poster/PosterModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mViewReady:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPosterModels:Ljava/util/List;

    .line 34
    iput-boolean v1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mViewReady:Z

    .line 35
    iput-boolean v1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mDataReady:Z

    .line 36
    iput-boolean v1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mDataInit:Z

    .line 63
    new-instance v0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment$1;-><init>(Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mInitDataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    .line 81
    new-instance v0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment$2;-><init>(Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mDataReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->reloadData()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->notifyDataInit()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;)Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPosterMenuAdapter:Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->onSelectModel(I)V

    return-void
.end method

.method private notifyDataInit()V
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mViewReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mDataReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mDataInit:Z

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->onSelectModel(I)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mDataInit:Z

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPosterMenuAdapter:Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private onSelectModel(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 92
    iget-object v2, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPosterModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPosterModels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/core/poster/PosterModel;

    .line 96
    .local v1, "posterModel":Lcom/miui/gallery/collage/core/poster/PosterModel;
    iget-object v2, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    check-cast v2, Lcom/miui/gallery/collage/core/poster/PosterPresenter;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->getPosterCollageLayout(Lcom/miui/gallery/collage/core/poster/PosterModel;)Lcom/miui/gallery/collage/core/layout/LayoutModel;

    move-result-object v0

    .line 97
    .local v0, "layoutModel":Lcom/miui/gallery/collage/core/layout/LayoutModel;
    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->getRenderFragment()Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/collage/app/common/AbstractPosterFragment;

    invoke-virtual {v2, v1, v0}, Lcom/miui/gallery/collage/app/common/AbstractPosterFragment;->onSelectModel(Lcom/miui/gallery/collage/core/poster/PosterModel;Lcom/miui/gallery/collage/core/layout/LayoutModel;)V

    goto :goto_0
.end method

.method private reloadData()V
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPosterModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 102
    iget-object v1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    check-cast v1, Lcom/miui/gallery/collage/core/poster/PosterPresenter;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->getPosters()Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "posters":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/poster/PosterModel;>;"
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPosterModels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPosterMenuAdapter:Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    check-cast v0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mInitDataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->loadDataFromResourceAsync(Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    const v0, 0x7f040056

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;->onDestroy()V

    .line 112
    const-string v0, "PosterMenuFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 53
    new-instance v0, Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPosterModels:Ljava/util/List;

    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPosterMenuAdapter:Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;

    .line 54
    iget-object v1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPosterMenuAdapter:Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;

    iget-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    check-cast v0, Lcom/miui/gallery/collage/core/poster/PosterPresenter;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/core/poster/PosterPresenter;->getImageCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;->setImageCount(I)V

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v6, v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012e

    invoke-direct {v1, v2, v3, v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mPosterMenuAdapter:Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->mViewReady:Z

    .line 60
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->notifyDataInit()V

    .line 61
    return-void
.end method
