.class public Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;
.super Lcom/miui/gallery/collage/app/common/CollageMenuFragment;
.source "StitchingMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/collage/app/common/CollageMenuFragment",
        "<",
        "Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;",
        "Lcom/miui/gallery/collage/app/common/AbstractStitchingFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataInit:Z

.field private mDataReady:Z

.field private mInitDataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mStitchingAdapter:Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;

.field private mStitchingModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/stitching/StitchingModel;",
            ">;"
        }
    .end annotation
.end field

.field private mViewReady:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mStitchingModelList:Ljava/util/List;

    .line 33
    iput-boolean v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mViewReady:Z

    .line 34
    iput-boolean v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mDataReady:Z

    .line 35
    iput-boolean v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mDataInit:Z

    .line 61
    new-instance v0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$1;-><init>(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mInitDataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    .line 79
    new-instance v0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$2;-><init>(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mDataReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->reloadData()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->notifyDataInit()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;)Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mStitchingAdapter:Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->onSelectModel(I)V

    return-void
.end method

.method private notifyDataInit()V
    .locals 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mViewReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mDataReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mDataInit:Z

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->onSelectModel(I)V

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mStitchingAdapter:Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mDataInit:Z

    goto :goto_0
.end method

.method private onSelectModel(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 90
    iget-object v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mStitchingModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mStitchingModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    .line 94
    .local v0, "stitchingModel":Lcom/miui/gallery/collage/core/stitching/StitchingModel;
    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->getRenderFragment()Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/app/common/AbstractStitchingFragment;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/collage/app/common/AbstractStitchingFragment;->onSelectModel(Lcom/miui/gallery/collage/core/stitching/StitchingModel;)V

    goto :goto_0
.end method

.method private reloadData()V
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mStitchingModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    check-cast v1, Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;->getStitching()Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, "stitchingModels":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/stitching/StitchingModel;>;"
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mStitchingModelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mStitchingAdapter:Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->notifyDataSetChanged()V

    .line 104
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    check-cast v0, Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mInitDataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;->loadDataFromResourceAsync(Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)V

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const v0, 0x7f040059

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 51
    check-cast p1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 52
    new-instance v0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mStitchingModelList:Ljava/util/List;

    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mStitchingAdapter:Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v6, v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012e

    invoke-direct {v1, v2, v3, v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mStitchingAdapter:Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->mViewReady:Z

    .line 58
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->notifyDataInit()V

    .line 59
    return-void
.end method
