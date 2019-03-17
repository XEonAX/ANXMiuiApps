.class public Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "RemoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

.field private mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

.field private mCurrentType:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNightMode:Z

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mPaintSizePopupWindow:Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

.field private mProgressDialog:Lmiui/app/ProgressDialog;

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mCurrentType:I

    .line 141
    new-instance v0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$3;-><init>(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;I)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getPaintSizeByProgress(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mPaintSizePopupWindow:Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mIsNightMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mCurrentType:I

    return p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    return-object v0
.end method

.method private getPaintSizeByProgress(I)I
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 161
    iget v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mCurrentType:I

    packed-switch v3, :pswitch_data_0

    .line 168
    const/16 v1, 0x23

    .line 169
    .local v1, "min":I
    const/16 v0, 0xa1

    .line 172
    .local v0, "max":I
    :goto_0
    sub-int v2, v0, v1

    .line 173
    .local v2, "value":I
    mul-int v3, v2, p1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 174
    add-int/2addr v2, v1

    .line 175
    return v2

    .line 163
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v2    # "value":I
    :pswitch_0
    const/16 v1, 0x14

    .line 164
    .restart local v1    # "min":I
    const/16 v0, 0x64

    .line 165
    .restart local v0    # "max":I
    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected hideProcessDialog()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 189
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->list()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mDataList:Ljava/util/List;

    .line 65
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/utils/MiscUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mIsNightMode:Z

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    const v0, 0x7f040119

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    const v3, 0x7f120266

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 73
    new-instance v3, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mDataList:Ljava/util/List;

    new-instance v5, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1000a4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(I)V

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;-><init>(Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    .line 75
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v4, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v5, v6, v9, v8}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 76
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 77
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 79
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    invoke-virtual {v3, v8}, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->setSelection(I)V

    .line 81
    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mPaintSizePopupWindow:Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;

    .line 82
    const v3, 0x7f120147

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    .line 83
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->getMax()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->setProgress(I)V

    .line 84
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    new-instance v4, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mSeekBar:Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->getProgress()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;->setPaintSize(F)V

    .line 108
    const v3, 0x7f120088

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    .line 109
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    const v4, 0x7f0c0371

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->setTitle(I)V

    .line 110
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    .line 111
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x7f020102

    invoke-virtual {v2, v8, v8, v3, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 112
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 113
    new-instance v3, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;

    .line 128
    .local v0, "removerFragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;
    instance-of v3, v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 129
    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;

    .line 130
    .local v1, "removerRenderFragment":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->setRenderRecordListener(Lcom/miui/gallery/editor/photo/app/RenderRecord;)V

    .line 131
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;->setMenuUpdateListener(Lcom/miui/gallery/editor/photo/widgets/MenuUpdateListener;)V

    .line 133
    .end local v1    # "removerRenderFragment":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderFragment;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    invoke-virtual {v3, v9}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->updateBottomBar(Z)V

    .line 134
    return-void
.end method

.method protected showProcessDialog()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0416

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->genProgressDialog(Ljava/lang/String;)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 181
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 182
    return-void
.end method
