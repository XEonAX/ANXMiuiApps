.class public Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "TextMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        "Lcom/miui/gallery/editor/photo/core/common/provider/AbstractTextProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private mBubbleItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mTextBubbleAdapter:Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

.field private mTextWatermarkAdapter:Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWatermarkItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 72
    new-instance v0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mBubbleItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 84
    new-instance v0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$3;-><init>(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mWatermarkItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mTextBubbleAdapter:Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mTextWatermarkAdapter:Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const v0, 0x7f04015b

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

    .line 45
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    new-instance v2, Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractTextProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractTextProvider;->list()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v3, v1, v5}, Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mTextBubbleAdapter:Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    .line 47
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mTextBubbleAdapter:Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mBubbleItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 48
    new-instance v2, Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractTextProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractTextProvider;->listWatermark()Ljava/util/List;

    move-result-object v1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mTextWatermarkAdapter:Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    .line 49
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mTextWatermarkAdapter:Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mWatermarkItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 51
    const v1, 0x7f12002d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "title":Landroid/widget/TextView;
    const v1, 0x7f0c038b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    const v1, 0x7f1201c4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 54
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 64
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f1202be

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 65
    const v1, 0x7f1201c9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 66
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 67
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;

    invoke-direct {v2, p0}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;-><init>(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 68
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v5, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 69
    return-void
.end method
