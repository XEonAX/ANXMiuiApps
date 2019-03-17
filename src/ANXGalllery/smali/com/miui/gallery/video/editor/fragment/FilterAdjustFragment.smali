.class public Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;
.super Lcom/miui/gallery/video/editor/ui/MenuFragment;
.source "FilterAdjustFragment.java"


# instance fields
.field private mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

.field private mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

.field private mFilterAdjustHeadView:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;

.field private mFilterView:Lcom/miui/gallery/video/editor/widget/FilterView;

.field private mHeadBar:Landroid/widget/LinearLayout;

.field private mNoScrollViewPager:Lcom/miui/gallery/editor/photo/widgets/NoScrollViewPager;

.field private mPageAdapter:Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;

.field private mSavedSelectedFilterIndex:I

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private showFilterView:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->showFilterView:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mSavedSelectedFilterIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/widget/FilterView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterView:Lcom/miui/gallery/video/editor/widget/FilterView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/editor/photo/widgets/NoScrollViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mNoScrollViewPager:Lcom/miui/gallery/editor/photo/widgets/NoScrollViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->recordEventWithEffectChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->onExitMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/widget/EffectActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->showFilterView:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/widget/AdjustView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mHeadBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterAdjustHeadView:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method private doFilterCancel()Z
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "FilterAdjustFragment"

    const-string v1, "doCancel: videoEditor is null."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->restoreEditState()V

    .line 216
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$6;-><init>(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v0

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mViewList:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/miui/gallery/video/editor/widget/FilterView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/video/editor/widget/FilterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterView:Lcom/miui/gallery/video/editor/widget/FilterView;

    .line 57
    new-instance v0, Lcom/miui/gallery/video/editor/widget/AdjustView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mViewList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterView:Lcom/miui/gallery/video/editor/widget/FilterView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mViewList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c052e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterAdjustHeadView:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;

    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->showFilterView:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->selectFilter(Z)V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterView:Lcom/miui/gallery/video/editor/widget/FilterView;

    iget v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mSavedSelectedFilterIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/FilterView;->updateSelectedItemPosition(I)V

    .line 63
    new-instance v0, Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mViewList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mPageAdapter:Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mNoScrollViewPager:Lcom/miui/gallery/editor/photo/widgets/NoScrollViewPager;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mPageAdapter:Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/NoScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 65
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterAdjustHeadView:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;

    new-instance v1, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$1;-><init>(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->setHeadViewClickListener(Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    new-instance v1, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$2;-><init>(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->setIFilterAdjustHeadViewListener(Lcom/miui/gallery/video/editor/widget/AdjustView$IFilterAdjustHeadViewListener;)V

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    new-instance v1, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$3;-><init>(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->setIAdjustEffectChangeListener(Lcom/miui/gallery/video/editor/widget/AdjustView$IAdjustEffectChangeListener;)V

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    new-instance v1, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$4;-><init>(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->setActionListener(Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;)V

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterView:Lcom/miui/gallery/video/editor/widget/FilterView;

    new-instance v1, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;-><init>(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/FilterView;->setItemSelectedListener(Lcom/miui/gallery/video/editor/widget/FilterView$OnItemSelectedListener;)V

    .line 168
    return-void
.end method


# virtual methods
.method public doApply()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getState()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->saveEditState()V

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterView:Lcom/miui/gallery/video/editor/widget/FilterView;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterView:Lcom/miui/gallery/video/editor/widget/FilterView;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/FilterView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mSavedSelectedFilterIndex:I

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->recordEventWithApply()V

    .line 204
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->onExitMode()V

    .line 205
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doCancel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    :goto_0
    return v0

    .line 180
    :cond_0
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->showFilterView:Z

    if-eqz v1, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->doFilterCancel()Z

    .line 189
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->recordEventWithCancel()V

    .line 190
    const/4 v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->doCancel()Z

    .line 184
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/video/editor/VideoEditor;->setVideoEditorAdjust(Z)V

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->doFilterCancel()Z

    goto :goto_1
.end method

.method public getCurrentEffect()Ljava/util/List;
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
    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v1, "currentEffectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterView:Lcom/miui/gallery/video/editor/widget/FilterView;

    if-eqz v3, :cond_0

    .line 232
    iget-object v3, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterView:Lcom/miui/gallery/video/editor/widget/FilterView;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/widget/FilterView;->getFilterCurrentEffect()Ljava/util/List;

    move-result-object v2

    .line 233
    .local v2, "filterEffectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 234
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    .end local v2    # "filterEffectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    if-eqz v3, :cond_2

    .line 238
    iget-object v3, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/widget/AdjustView;->getAdjustCurrentEffect()Ljava/util/List;

    move-result-object v0

    .line 239
    .local v0, "adjustEffectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 240
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/widget/AdjustView;->clearCurrentEffects()V

    .line 244
    .end local v0    # "adjustEffectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v1
.end method

.method public getEffectId()I
    .locals 1

    .prologue
    .line 172
    const v0, 0x7f120031

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    const v1, 0x7f04016b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f12016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/widgets/NoScrollViewPager;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mNoScrollViewPager:Lcom/miui/gallery/editor/photo/widgets/NoScrollViewPager;

    .line 46
    const v1, 0x7f1202d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterAdjustHeadView:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;

    .line 47
    const v1, 0x7f1202c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    .line 48
    const v1, 0x7f1202cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mHeadBar:Landroid/widget/LinearLayout;

    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->initData()V

    .line 50
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->initListener()V

    .line 51
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-super {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onDestroyView()V

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mPageAdapter:Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;

    if-eqz v0, :cond_0

    .line 251
    iput-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mPageAdapter:Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterAdjustHeadView:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterAdjustHeadView:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->setHeadViewClickListener(Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->removeListener()V

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterView:Lcom/miui/gallery/video/editor/widget/FilterView;

    if-eqz v0, :cond_3

    .line 260
    iput-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mFilterView:Lcom/miui/gallery/video/editor/widget/FilterView;

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    if-eqz v0, :cond_4

    .line 263
    iput-object v1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->mAdjustView:Lcom/miui/gallery/video/editor/widget/AdjustView;

    .line 265
    :cond_4
    return-void
.end method
