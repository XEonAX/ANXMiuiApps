.class public Lcom/miui/gallery/video/editor/widget/FilterView;
.super Landroid/widget/LinearLayout;
.source "FilterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/widget/FilterView$OnItemSelectedListener;,
        Lcom/miui/gallery/video/editor/widget/FilterView$MyFilterItemSelectChangeListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

.field private mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/video/editor/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mItemSelectedListener:Lcom/miui/gallery/video/editor/widget/FilterView$OnItemSelectedListener;

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mFilters:Ljava/util/ArrayList;

    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/FilterView;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/widget/FilterView;)Lcom/miui/gallery/video/editor/widget/FilterView$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/FilterView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mItemSelectedListener:Lcom/miui/gallery/video/editor/widget/FilterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/widget/FilterView;)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/FilterView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040171

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/FilterView;->initData()V

    .line 60
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/FilterView;->initRecylerView(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private initRecylerView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 64
    const v0, 0x7f1202c6

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/FilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    .line 65
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    invoke-direct {v0, p1, v4, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 67
    new-instance v0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mFilters:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    new-instance v1, Lcom/miui/gallery/video/editor/widget/FilterView$MyFilterItemSelectChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/video/editor/widget/FilterView$MyFilterItemSelectChangeListener;-><init>(Lcom/miui/gallery/video/editor/widget/FilterView;Lcom/miui/gallery/video/editor/widget/FilterView$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->setItemSelectChangeListener(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;)V

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/FilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b038e

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getFilterCurrentEffect()Ljava/util/List;
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
    .line 125
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/FilterView;->getSelectedFilter()Lcom/miui/gallery/video/editor/Filter;

    move-result-object v1

    .line 126
    .local v1, "filter":Lcom/miui/gallery/video/editor/Filter;
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/Filter;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "effectName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 130
    .end local v0    # "effectName":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedFilter()Lcom/miui/gallery/video/editor/Filter;
    .locals 3

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "filter":Lcom/miui/gallery/video/editor/Filter;
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v0

    .line 103
    .local v0, "SelectedItemPosition":I
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->getFilter(I)Lcom/miui/gallery/video/editor/Filter;

    move-result-object v1

    .line 105
    .end local v0    # "SelectedItemPosition":I
    :cond_0
    return-object v1
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initData()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->getFilterData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mFilters:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method public setItemSelectedListener(Lcom/miui/gallery/video/editor/widget/FilterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "itemSelectedListener"    # Lcom/miui/gallery/video/editor/widget/FilterView$OnItemSelectedListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mItemSelectedListener:Lcom/miui/gallery/video/editor/widget/FilterView$OnItemSelectedListener;

    .line 135
    return-void
.end method

.method public updateSelectedItemPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 113
    invoke-static {}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->isRTLDirection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mFilters:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->setSelectedItemPosition(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->setSelectedItemPosition(I)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterView;->mAdapter:Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->setSelectedItemPosition(I)V

    goto :goto_0
.end method
