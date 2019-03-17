.class public Lcom/miui/gallery/video/editor/widget/AdjustView;
.super Landroid/widget/LinearLayout;
.source "AdjustView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;,
        Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

.field private mAdjustCurrentEffects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/AdjustData;",
            ">;"
        }
    .end annotation
.end field

.field private mIAdjustEffectChangeListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;

.field private mIFilterAdjustHeadViewListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;

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

.field private mIsAdjustView:Z

.field private mIsTracking:Z

.field private mRecyclerView:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field onAdjustItemClickListener:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v0, Lcom/miui/gallery/video/editor/widget/AdjustView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/widget/AdjustView$1;-><init>(Lcom/miui/gallery/video/editor/widget/AdjustView;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    .line 106
    new-instance v0, Lcom/miui/gallery/video/editor/widget/AdjustView$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/widget/AdjustView$2;-><init>(Lcom/miui/gallery/video/editor/widget/AdjustView;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 163
    new-instance v0, Lcom/miui/gallery/video/editor/widget/AdjustView$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/widget/AdjustView$3;-><init>(Lcom/miui/gallery/video/editor/widget/AdjustView;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->onAdjustItemClickListener:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$OnItemClickListener;

    .line 42
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/video/editor/widget/AdjustView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/AdjustView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIsTracking:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/widget/AdjustView;)Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/AdjustView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/widget/AdjustView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/AdjustView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/widget/AdjustView;ILcom/miui/gallery/video/editor/model/AdjustData;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/AdjustView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/miui/gallery/video/editor/model/AdjustData;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/video/editor/widget/AdjustView;->setEffect(ILcom/miui/gallery/video/editor/model/AdjustData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/video/editor/widget/AdjustView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/AdjustView;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/AdjustView;->updateHeadBar()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/video/editor/widget/AdjustView;Lcom/miui/gallery/video/editor/model/AdjustData;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/AdjustView;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/model/AdjustData;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->performItemSelect(Lcom/miui/gallery/video/editor/model/AdjustData;)V

    return-void
.end method

.method private addNewSeekBar(Lcom/miui/gallery/video/editor/model/AdjustData;)V
    .locals 3
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/AdjustData;

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/miui/gallery/video/editor/model/AdjustData;->isMid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/AdjustView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mSeekBar:Landroid/widget/SeekBar;

    .line 197
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/miui/gallery/video/editor/model/AdjustData;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 198
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p1, Lcom/miui/gallery/video/editor/model/AdjustData;->progress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIFilterAdjustHeadViewListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIsAdjustView:Z

    .line 207
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIFilterAdjustHeadViewListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-interface {v1, v2}, Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;->addSeekBarToHeadBar(Landroid/view/View;)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 210
    return-void

    .line 200
    :cond_1
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/AdjustView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "bi":Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;
    invoke-virtual {p1}, Lcom/miui/gallery/video/editor/model/AdjustData;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setMaxValue(I)V

    .line 202
    iget v1, p1, Lcom/miui/gallery/video/editor/model/AdjustData;->progress:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;->setCurrentValue(I)V

    .line 203
    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mSeekBar:Landroid/widget/SeekBar;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 63
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040165

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->initData(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->initRecylerView(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private initData(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mDataList:Ljava/util/List;

    .line 70
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->getAdjustData()Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, "filterAdjustList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/FilterAdjustData;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 72
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;

    .line 73
    .local v0, "bean":Lcom/miui/gallery/video/editor/model/FilterAdjustData;
    if-eqz v0, :cond_0

    .line 74
    move-object v1, v0

    .line 75
    .local v1, "data":Lcom/miui/gallery/video/editor/model/AdjustData;
    iget-object v4, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mDataList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v0    # "bean":Lcom/miui/gallery/video/editor/model/FilterAdjustData;
    .end local v1    # "data":Lcom/miui/gallery/video/editor/model/AdjustData;
    :cond_1
    new-instance v4, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    const v3, 0x7f04013e

    const/4 v5, 0x0

    .line 80
    invoke-static {p1, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b026d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIndicatorCallback:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;

    iget-object v7, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;-><init>(Landroid/view/View;ILcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator$Callback;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object v4, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    .line 83
    return-void
.end method

.method private initRecylerView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const v0, 0x7f1202c6

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/AdjustView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mRecyclerView:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;

    .line 87
    new-instance v0, Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mDataList:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/AdjustView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(I)V

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mRecyclerView:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mRecyclerView:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->onAdjustItemClickListener:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;->setOnItemClickListener(Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$OnItemClickListener;)V

    .line 91
    return-void
.end method

.method private performItemSelect(Lcom/miui/gallery/video/editor/model/AdjustData;)V
    .locals 0
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/AdjustData;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/AdjustView;->removePreviousSeekBar()V

    .line 191
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->addNewSeekBar(Lcom/miui/gallery/video/editor/model/AdjustData;)V

    .line 192
    return-void
.end method

.method private removePreviousSeekBar()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIndicator:Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BubbleIndicator;->dismiss()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIFilterAdjustHeadViewListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIFilterAdjustHeadViewListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;->removeAllViewFromHeadBar()V

    .line 219
    :cond_1
    return-void
.end method

.method private setEffect(ILcom/miui/gallery/video/editor/model/AdjustData;)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "data"    # Lcom/miui/gallery/video/editor/model/AdjustData;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;->getSelection()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIAdjustEffectChangeListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;

    if-nez v1, :cond_1

    .line 161
    .end local p2    # "data":Lcom/miui/gallery/video/editor/model/AdjustData;
    :cond_0
    :goto_0
    return-void

    .line 132
    .restart local p2    # "data":Lcom/miui/gallery/video/editor/model/AdjustData;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdjustCurrentEffects:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdjustCurrentEffects:Ljava/util/HashMap;

    .line 135
    :cond_2
    invoke-virtual {p2, p1}, Lcom/miui/gallery/video/editor/model/AdjustData;->setProgress(I)V

    .line 136
    instance-of v1, p2, Lcom/miui/gallery/video/editor/model/FilterAdjustData;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 137
    check-cast v1, Lcom/miui/gallery/video/editor/model/FilterAdjustData;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->getId()I

    move-result v0

    .line 138
    .local v0, "id":I
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdjustCurrentEffects:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdjustCurrentEffects:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast p2, Lcom/miui/gallery/video/editor/model/FilterAdjustData;

    .end local p2    # "data":Lcom/miui/gallery/video/editor/model/AdjustData;
    invoke-virtual {p2}, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->getLable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support adjust id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIAdjustEffectChangeListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;

    invoke-interface {v1, p1}, Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;->adjustBrightness(I)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIAdjustEffectChangeListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;

    invoke-interface {v1, p1}, Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;->adjustSaturation(I)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIAdjustEffectChangeListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;

    invoke-interface {v1, p1}, Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;->adjustContrast(I)V

    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIAdjustEffectChangeListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;

    invoke-interface {v1, p1}, Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;->adjustSharpness(I)V

    goto :goto_0

    .line 155
    :pswitch_4
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIAdjustEffectChangeListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;

    invoke-interface {v1, p1}, Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;->adjustVignetteRange(I)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateHeadBar()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIFilterAdjustHeadViewListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIsAdjustView:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIFilterAdjustHeadViewListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;->addFilterViewToHeadBar(Landroid/view/View;)V

    .line 187
    :goto_1
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIsAdjustView:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIsAdjustView:Z

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/AdjustView;->removePreviousSeekBar()V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIFilterAdjustHeadViewListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-interface {v0, v1}, Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;->addSeekBarToHeadBar(Landroid/view/View;)V

    goto :goto_1

    .line 187
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public clearCurrentEffects()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdjustCurrentEffects:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdjustCurrentEffects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 263
    :cond_0
    return-void
.end method

.method public doCancel()Z
    .locals 5

    .prologue
    .line 231
    iget-object v3, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mDataList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 232
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mDataList:Ljava/util/List;

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 235
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->getAdjustData()Ljava/util/List;

    move-result-object v2

    .line 236
    .local v2, "filterAdjustList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/FilterAdjustData;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 237
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;

    .line 238
    .local v0, "bean":Lcom/miui/gallery/video/editor/model/FilterAdjustData;
    if-eqz v0, :cond_1

    .line 239
    move-object v1, v0

    .line 240
    .local v1, "data":Lcom/miui/gallery/video/editor/model/AdjustData;
    iget-object v4, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mDataList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/model/FilterAdjustData;->getProgress()I

    move-result v4

    invoke-direct {p0, v4, v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->setEffect(ILcom/miui/gallery/video/editor/model/AdjustData;)V

    goto :goto_0

    .line 245
    .end local v0    # "bean":Lcom/miui/gallery/video/editor/model/FilterAdjustData;
    .end local v1    # "data":Lcom/miui/gallery/video/editor/model/AdjustData;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public getAdjustCurrentEffect()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdjustCurrentEffects:Ljava/util/HashMap;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 256
    :cond_0
    return-object v0

    .line 250
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "currentLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdjustCurrentEffects:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    .local v1, "effect":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 253
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIsTracking:Z

    return v0
.end method

.method public refreshData()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;->setSelection(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public setIAdjustEffectChangeListener(Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;)V
    .locals 0
    .param p1, "IAdjustEffectChangeListener"    # Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIAdjustEffectChangeListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;

    .line 227
    return-void
.end method

.method public setIFilterAdjustHeadViewListener(Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;)V
    .locals 0
    .param p1, "IFilterAdjustHeadViewListener"    # Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView;->mIFilterAdjustHeadViewListener:Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;

    .line 223
    return-void
.end method
