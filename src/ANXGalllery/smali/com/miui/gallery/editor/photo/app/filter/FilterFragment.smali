.class public Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "FilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterPager:Landroid/support/v4/view/ViewPager;

.field private mHeaderAdapter:Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter;

.field private mItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mPagerAdapter:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSelectedItem:Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

.field private mTitle:Landroid/widget/TextView;

.field private mTopPanel:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 90
    new-instance v0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 161
    new-instance v0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mFilterPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mHeaderAdapter:Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->doConfig(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSelectedItem:Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;Lcom/miui/gallery/editor/photo/core/common/model/FilterData;)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSelectedItem:Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;Lcom/miui/gallery/editor/photo/core/common/model/FilterData;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/common/model/FilterData;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->doRender(Lcom/miui/gallery/editor/photo/core/common/model/FilterData;Ljava/lang/Object;)V

    return-void
.end method

.method private doConfig(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mPagerAdapter:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->updateProgressValue(I)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSelectedItem:Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSelectedItem:Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    iput p1, v0, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->progress:I

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->clear()V

    .line 114
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSelectedItem:Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->render()V

    .line 116
    return-void
.end method

.method private doRender(Lcom/miui/gallery/editor/photo/core/common/model/FilterData;Ljava/lang/Object;)V
    .locals 1
    .param p1, "filterData"    # Lcom/miui/gallery/editor/photo/core/common/model/FilterData;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->clear()V

    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->render()V

    .line 103
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mCategories:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mCategories:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 62
    const v1, 0x7f040081

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mTopPanel:Landroid/widget/LinearLayout;

    .line 64
    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 65
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 67
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mTopPanel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 69
    new-instance v1, Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mCategories:Ljava/util/List;

    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    .line 70
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter;-><init>(Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mHeaderAdapter:Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter;

    .line 71
    const v1, 0x7f12016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 72
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mHeaderAdapter:Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 73
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mHeaderAdapter:Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/app/filter/FilterHeadAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 75
    const v1, 0x7f12016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mFilterPager:Landroid/support/v4/view/ViewPager;

    .line 76
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mFilterPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 77
    new-instance v1, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;-><init>(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$1;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mPagerAdapter:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    .line 78
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mFilterPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mPagerAdapter:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 79
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mFilterPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v6, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 80
    const v1, 0x7f12002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mTitle:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0c0352

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 82
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public showTopPanel(Z)V
    .locals 12
    .param p1, "show"    # Z

    .prologue
    .line 119
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mTopPanel:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    if-eqz p1, :cond_1

    const/16 v7, 0x8

    :goto_1
    invoke-virtual {v8, v7}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setVisibility(I)V

    .line 122
    if-eqz p1, :cond_2

    .line 123
    new-instance v4, Landroid/animation/ObjectAnimator;

    invoke-direct {v4}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 124
    .local v4, "topAnimal":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mTopPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 125
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0272

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 126
    .local v5, "y":Landroid/animation/PropertyValuesHolder;
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 127
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 128
    new-instance v7, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v7}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09003c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 130
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 132
    new-instance v3, Landroid/animation/ObjectAnimator;

    invoke-direct {v3}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 133
    .local v3, "recyclerAnimal":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 134
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0272

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    neg-float v10, v10

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 135
    .local v6, "y2":Landroid/animation/PropertyValuesHolder;
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 136
    .local v1, "alpha2":Landroid/animation/PropertyValuesHolder;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 137
    new-instance v7, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v7}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 138
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09003c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 139
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 159
    .end local v4    # "topAnimal":Landroid/animation/ObjectAnimator;
    :goto_2
    return-void

    .line 119
    .end local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "alpha2":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "recyclerAnimal":Landroid/animation/ObjectAnimator;
    .end local v5    # "y":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "y2":Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/16 v7, 0x8

    goto/16 :goto_0

    .line 120
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 141
    :cond_2
    new-instance v3, Landroid/animation/ObjectAnimator;

    invoke-direct {v3}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 142
    .restart local v3    # "recyclerAnimal":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 143
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0272

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    neg-float v10, v10

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 144
    .restart local v5    # "y":Landroid/animation/PropertyValuesHolder;
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_2

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 145
    .restart local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 146
    new-instance v7, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v7}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09003c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 148
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 150
    new-instance v2, Landroid/animation/ObjectAnimator;

    invoke-direct {v2}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 151
    .local v2, "panelAnimal":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->mTopPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 152
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0272

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 153
    .restart local v6    # "y2":Landroid/animation/PropertyValuesHolder;
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_3

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 154
    .restart local v1    # "alpha2":Landroid/animation/PropertyValuesHolder;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 155
    new-instance v7, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v7}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09003c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_2

    .line 126
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 135
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 144
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 153
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
