.class public Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "AdjustFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mTitle:Landroid/widget/TextView;

.field private mTopPanel:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 93
    new-instance v0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 140
    new-instance v0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    .line 147
    new-instance v0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$3;-><init>(Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;)Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->performItemSelect(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->doConfig(I)V

    return-void
.end method

.method private doConfig(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 80
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->getSelection()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 81
    const-string v1, "AdjustFragment"

    const-string v2, "no effect rendered, skip"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string v1, "AdjustFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdjustData progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->getSelection()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;

    .line 87
    .local v0, "effect":Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;
    iput p1, v0, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->progress:I

    .line 88
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->remove(Lcom/miui/gallery/editor/photo/core/Metadata;)V

    .line 89
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->render()V

    goto :goto_0
.end method

.method private doRender(Lcom/miui/gallery/editor/photo/core/Metadata;)V
    .locals 2
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/Metadata;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->remove(Lcom/miui/gallery/editor/photo/core/Metadata;)V

    .line 75
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->render()V

    .line 77
    return-void
.end method

.method private performItemSelect(IZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "skipRender"    # Z

    .prologue
    .line 105
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mDataList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;

    .line 107
    .local v1, "data":Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;
    if-nez p2, :cond_0

    .line 108
    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->doRender(Lcom/miui/gallery/editor/photo/core/Metadata;)V

    .line 111
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->setSelection(I)V

    .line 114
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->dismiss()V

    .line 118
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mTopPanel:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 119
    .local v2, "previous":Landroid/widget/SeekBar;
    if-eqz v2, :cond_2

    .line 120
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mTopPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 124
    :cond_2
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->isMid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 125
    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;-><init>(Landroid/content/Context;)V

    .line 126
    .local v3, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->getMax()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 127
    iget v4, v1, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->progress:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 135
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mTopPanel:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 136
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    iget v5, v1, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->progress:I

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 137
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 138
    return-void

    .line 129
    .end local v3    # "seekBar":Landroid/widget/SeekBar;
    :cond_3
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "bi":Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->getMax()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setMaxValue(I)V

    .line 131
    iget v4, v1, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;->progress:I

    invoke-virtual {v0, v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setCurrentValue(I)V

    .line 132
    move-object v3, v0

    .restart local v3    # "seekBar":Landroid/widget/SeekBar;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->list()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mDataList:Ljava/util/List;

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const v0, 0x7f040007

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
    .line 56
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f120086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mTopPanel:Landroid/widget/LinearLayout;

    .line 59
    const v0, 0x7f120087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 60
    new-instance v0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mDataList:Ljava/util/List;

    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(I)V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 63
    const v0, 0x7f12002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mTitle:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0348

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f04013e

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b026d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;-><init>(Landroid/view/View;ILcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->performItemSelect(IZ)V

    .line 71
    return-void
.end method
