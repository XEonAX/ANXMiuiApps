.class public Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "StickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        "Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderAdapter:Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;

.field private mHeaderView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mOnStickerSelectedListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mRecentView:Landroid/view/View;

.field private mStickerPager:Landroid/support/v4/view/ViewPager;

.field private mStickerPagerAdapter:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 95
    new-instance v0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 108
    new-instance v0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$3;-><init>(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mOnStickerSelectedListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mRecentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mHeaderAdapter:Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mStickerPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mOnStickerSelectedListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Lcom/miui/gallery/editor/photo/core/SdkProvider;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    return-object v0
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

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mCategories:Ljava/util/List;

    .line 47
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mCategories:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const v0, 0x7f04014c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onDestroyView()V

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mStickerPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mStickerPagerAdapter:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 198
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    new-instance v1, Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mCategories:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    .line 61
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;-><init>(Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mHeaderAdapter:Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;

    .line 62
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mCategories:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/editor/photo/app/sticker/CategoryRecent;

    invoke-direct {v2}, Lcom/miui/gallery/editor/photo/app/sticker/CategoryRecent;-><init>()V

    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    const v1, 0x7f12029e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mHeaderView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 65
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mHeaderView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mHeaderAdapter:Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 66
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v0, v6}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 68
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mHeaderView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mHeaderAdapter:Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mHeaderView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 72
    new-instance v1, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;-><init>(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mStickerPagerAdapter:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;

    .line 74
    const v1, 0x7f12029f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mStickerPager:Landroid/support/v4/view/ViewPager;

    .line 75
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mStickerPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mStickerPagerAdapter:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mStickerPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 77
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mStickerPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mStickerPagerAdapter:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 79
    const v1, 0x7f12029d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mRecentView:Landroid/view/View;

    .line 80
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mRecentView:Landroid/view/View;

    new-instance v2, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f12002d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mTitle:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0c0374

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    return-void
.end method
