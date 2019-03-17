.class public Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "MosaicMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mEraserClickListener:Landroid/view/View$OnClickListener;

.field private mEraserData:Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;

.field private mEraserView:Landroid/widget/ImageView;

.field private mMenuHeight:I

.field private mMosaicAdapter:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;

.field private mMosaicDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mOperationClickListener:Landroid/view/View$OnClickListener;

.field private mOperationPanel:Landroid/view/View;

.field private mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

.field private mPaintPopupWindow:Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mRevert:Landroid/view/View;

.field private mRevoke:Landroid/view/View;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 115
    new-instance v0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 125
    new-instance v0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$3;-><init>(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mEraserClickListener:Landroid/view/View$OnClickListener;

    .line 134
    new-instance v0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$4;-><init>(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 155
    new-instance v0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$5;-><init>(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    .line 162
    new-instance v0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$6;-><init>(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mOperationClickListener:Landroid/view/View$OnClickListener;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mEraserView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->setSelection(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mMosaicAdapter:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mEraserData:Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mPaintPopupWindow:Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 31
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mMenuHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->refreshOperationPanel()V

    return-void
.end method

.method private refreshOperationPanel()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;->canRevoke()Z

    move-result v1

    .line 178
    .local v1, "canRevoke":Z
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;->canRevert()Z

    move-result v0

    .line 179
    .local v0, "canRevert":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 180
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mOperationPanel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mRevoke:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 187
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mRevert:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    return-void

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mOperationPanel:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mMosaicAdapter:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;->setSelection(I)V

    .line 192
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mMosaicDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;->setMosaicData(Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;)V

    .line 193
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v0, 0x7f0400b5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onDestroy()V

    .line 198
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mPaintPopupWindow:Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    .line 64
    const v2, 0x7f120147

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->list()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mMosaicDataList:Ljava/util/List;

    .line 68
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mMosaicDataList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mEraserData:Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;

    .line 69
    const v2, 0x7f120087

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 70
    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 72
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b020a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 74
    .local v0, "itemDecoration":I
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v3, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;I)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 88
    new-instance v2, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mMosaicDataList:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mMosaicAdapter:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;

    .line 89
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mMosaicAdapter:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 90
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 91
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mMosaicAdapter:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 93
    const v2, 0x7f1201be

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mEraserView:Landroid/widget/ImageView;

    .line 94
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mEraserData:Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;->iconPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mEraserView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 95
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mEraserView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mEraserClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v2, 0x7f12002d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mTitleView:Landroid/widget/TextView;

    .line 98
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mTitleView:Landroid/widget/TextView;

    const v3, 0x7f0c0366

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 100
    invoke-direct {p0, v5}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->setSelection(I)V

    .line 101
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 103
    const v2, 0x7f12013e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mOperationPanel:Landroid/view/View;

    .line 104
    const v2, 0x7f12013f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mRevoke:Landroid/view/View;

    .line 105
    const v2, 0x7f120140

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mRevert:Landroid/view/View;

    .line 107
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mRevoke:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mRevert:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;->setOperationUpdateListener(Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0273

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->mMenuHeight:I

    .line 113
    return-void
.end method
