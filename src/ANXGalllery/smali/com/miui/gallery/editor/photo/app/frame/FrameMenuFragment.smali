.class public Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "FrameMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractFrameFragment;",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/FrameData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractFrameFragment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mFrameAdapter:Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;

.field private mFrameDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FrameData;",
            ">;"
        }
    .end annotation
.end field

.field private mItemStatusArray:Landroid/util/SparseIntArray;

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mItemStatusArray:Landroid/util/SparseIntArray;

    .line 66
    new-instance v0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 83
    new-instance v0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;)Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mFrameAdapter:Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->onSelect(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method private onSelect(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 78
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mFrameDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/FrameData;

    .line 79
    .local v0, "frameData":Lcom/miui/gallery/editor/photo/core/common/model/FrameData;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractFrameFragment;

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/common/model/FrameData;->width:I

    int-to-float v2, v2

    iget v3, v0, Lcom/miui/gallery/editor/photo/core/common/model/FrameData;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/model/FrameData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractFrameFragment;->setRatio(FLjava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->getMax()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->getStatus(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->setProgress(I)V

    .line 81
    return-void
.end method


# virtual methods
.method public getStatus(II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mItemStatusArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v0, 0x7f040087

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f12002d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    .local v1, "titleView":Landroid/widget/TextView;
    const v2, 0x7f0c0354

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 51
    const v2, 0x7f120087

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 52
    const v2, 0x7f120186

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    .line 53
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->list()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mFrameDataList:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 58
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 59
    new-instance v2, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mFrameDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mFrameAdapter:Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;

    .line 60
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mFrameAdapter:Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 61
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mFrameAdapter:Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 62
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 63
    invoke-direct {p0, v5}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->onSelect(I)V

    .line 64
    return-void
.end method

.method public putStatus(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "value"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->mItemStatusArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    return-void
.end method
