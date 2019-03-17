.class public Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;
.super Lcom/miui/gallery/collage/app/common/CollageMenuFragment;
.source "LayoutMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/collage/app/common/CollageMenuFragment",
        "<",
        "Lcom/miui/gallery/collage/core/layout/LayoutPresenter;",
        "Lcom/miui/gallery/collage/app/common/AbstractLayoutFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollageMargin:Lcom/miui/gallery/collage/render/CollageMargin;

.field private mCollageRatio:Lcom/miui/gallery/collage/render/CollageRatio;

.field private mDataInit:Z

.field private mDataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

.field private mDataReady:Z

.field private mLayoutMenuAdapter:Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;

.field private mLayoutModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/layout/LayoutModel;",
            ">;"
        }
    .end annotation
.end field

.field private mMarginClickListener:Landroid/view/View$OnClickListener;

.field private mMarginImageView:Landroid/widget/ImageView;

.field private mMarginWrapper:Landroid/view/View;

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mRatioClickListener:Landroid/view/View$OnClickListener;

.field private mRatioImageView:Landroid/widget/ImageView;

.field private mRatioWrapper:Landroid/view/View;

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mViewReady:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mLayoutModels:Ljava/util/List;

    .line 37
    iput-boolean v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mViewReady:Z

    .line 38
    iput-boolean v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mDataReady:Z

    .line 39
    iput-boolean v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mDataInit:Z

    .line 40
    sget-object v0, Lcom/miui/gallery/collage/render/CollageMargin;->NONE:Lcom/miui/gallery/collage/render/CollageMargin;

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mCollageMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    .line 41
    sget-object v0, Lcom/miui/gallery/collage/render/CollageRatio;->RATIO_3_4:Lcom/miui/gallery/collage/render/CollageRatio;

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mCollageRatio:Lcom/miui/gallery/collage/render/CollageRatio;

    .line 92
    new-instance v0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$1;-><init>(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mMarginClickListener:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$2;-><init>(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mRatioClickListener:Landroid/view/View$OnClickListener;

    .line 116
    new-instance v0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$3;-><init>(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 134
    new-instance v0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$4;-><init>(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mDataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)Lcom/miui/gallery/collage/render/CollageMargin;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mCollageMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;Lcom/miui/gallery/collage/render/CollageMargin;)Lcom/miui/gallery/collage/render/CollageMargin;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;
    .param p1, "x1"    # Lcom/miui/gallery/collage/render/CollageMargin;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mCollageMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mMarginImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)Lcom/miui/gallery/collage/render/CollageRatio;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mCollageRatio:Lcom/miui/gallery/collage/render/CollageRatio;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;Lcom/miui/gallery/collage/render/CollageRatio;)Lcom/miui/gallery/collage/render/CollageRatio;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;
    .param p1, "x1"    # Lcom/miui/gallery/collage/render/CollageRatio;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mCollageRatio:Lcom/miui/gallery/collage/render/CollageRatio;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mRatioImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mLayoutMenuAdapter:Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->onSelectModel(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mDataReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->reloadData()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->notifyDataInit()V

    return-void
.end method

.method private notifyDataInit()V
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mViewReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mDataReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mDataInit:Z

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->onSelectModel(I)V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mLayoutMenuAdapter:Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mMarginWrapper:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mMarginClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mRatioWrapper:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mRatioClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mDataInit:Z

    goto :goto_0
.end method

.method private onSelectModel(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 127
    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mLayoutModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mLayoutModels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .line 131
    .local v0, "layoutModel":Lcom/miui/gallery/collage/core/layout/LayoutModel;
    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->getRenderFragment()Lcom/miui/gallery/collage/app/common/CollageRenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/app/common/AbstractLayoutFragment;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/collage/app/common/AbstractLayoutFragment;->onSelectModel(Lcom/miui/gallery/collage/core/layout/LayoutModel;)V

    goto :goto_0
.end method

.method private reloadData()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mLayoutModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 85
    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    check-cast v1, Lcom/miui/gallery/collage/core/layout/LayoutPresenter;

    iget-object v2, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    check-cast v2, Lcom/miui/gallery/collage/core/layout/LayoutPresenter;

    invoke-virtual {v2}, Lcom/miui/gallery/collage/core/layout/LayoutPresenter;->getImageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/core/layout/LayoutPresenter;->getLayouts(I)Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "posters":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/layout/LayoutModel;>;"
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mLayoutModels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mLayoutMenuAdapter:Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/miui/gallery/collage/app/common/CollageMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mPresenter:Lcom/miui/gallery/collage/core/CollagePresenter;

    check-cast v0, Lcom/miui/gallery/collage/core/layout/LayoutPresenter;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mDataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/core/layout/LayoutPresenter;->loadDataFromResourceAsync(Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)V

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const v0, 0x7f040052

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

    .line 57
    const v0, 0x7f120124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mMarginWrapper:Landroid/view/View;

    .line 58
    const v0, 0x7f120125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mMarginImageView:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f120127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mRatioWrapper:Landroid/view/View;

    .line 60
    const v0, 0x7f120128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mRatioImageView:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f12012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 63
    new-instance v0, Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mLayoutModels:Ljava/util/List;

    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mLayoutMenuAdapter:Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v6, v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012e

    invoke-direct {v1, v2, v3, v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mLayoutMenuAdapter:Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->mViewReady:Z

    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->notifyDataInit()V

    .line 70
    return-void
.end method
