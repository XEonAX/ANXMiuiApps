.class public Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
.super Landroid/app/Fragment;
.source "MovieEditorMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/movie/ui/listener/MenuActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyEditItemSelectChangeListener;,
        Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyAudioItemSelectChangeListener;,
        Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyTemplateItemSelectChangeListener;,
        Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$ControllerPagerAdapter;
    }
.end annotation


# instance fields
.field private mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

.field private mAudioResourceRequest:Lcom/miui/gallery/movie/net/AudioResourceRequest;

.field private mContext:Landroid/content/Context;

.field private mCurrentTabPos:I

.field private mDeleteClicked:Z

.field private mDurationRadioGroup:Landroid/widget/RadioGroup;

.field private mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mIsShortVideo:Z

.field private mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

.field private mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

.field private mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

.field private mRecyclerViews:[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mSingleClickListener:Lcom/miui/gallery/movie/ui/listener/SingleClickListener;

.field private mStoryMovieCardId:J

.field private mTemplateAdapter:Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

.field private mTemplateResourceRequest:Lcom/miui/gallery/movie/net/TemplateResourceRequest;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 216
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$4;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mSingleClickListener:Lcom/miui/gallery/movie/ui/listener/SingleClickListener;

    .line 322
    new-instance v0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$7;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mHandler:Landroid/os/Handler;

    .line 616
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/EditAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mRecyclerViews:[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mCurrentTabPos:I

    return v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->resetMovieShareData()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Lcom/miui/gallery/movie/entity/MovieResource;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p1, "x1"    # Lcom/miui/gallery/movie/entity/MovieResource;
    .param p2, "x2"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->downloadResource(Lcom/miui/gallery/movie/entity/MovieResource;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->onTabSelect(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDeleteClicked:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDeleteClicked:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mStoryMovieCardId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mIsShortVideo:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mIsShortVideo:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshEditAdapter()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshTemplate(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshAudio(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateAdapter:Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    return-object v0
.end method

.method private checkChangeLongVideo()Z
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private downloadResource(Lcom/miui/gallery/movie/entity/MovieResource;I)V
    .locals 3
    .param p1, "data"    # Lcom/miui/gallery/movie/entity/MovieResource;
    .param p2, "position"    # I

    .prologue
    .line 596
    invoke-static {}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->getInstance()Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Lcom/miui/gallery/movie/entity/MovieResource;I)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->downloadResourceWithCheck(Landroid/app/Activity;Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;)V

    .line 614
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    .line 133
    new-instance v1, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateAdapter:Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    .line 134
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateAdapter:Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    invoke-static {}, Lcom/miui/gallery/movie/ui/factory/TemplateFactory;->getLocalTemplateEntities()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;->setList(Ljava/util/List;)V

    .line 136
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mRecyclerViews:[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 137
    new-instance v1, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    .line 138
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    invoke-static {}, Lcom/miui/gallery/movie/ui/factory/AudioFactory;->getAllLocalAudios()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->setList(Ljava/util/List;)V

    .line 139
    new-instance v1, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    .line 140
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshEditAdapter()V

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    new-instance v2, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$1;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setOnActionListener(Lcom/miui/gallery/movie/ui/adapter/EditAdapter$OnActionListener;)V

    .line 149
    const v1, 0x7f1201c9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 150
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$ControllerPagerAdapter;

    invoke-direct {v2, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$ControllerPagerAdapter;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 151
    const v1, 0x7f1201c4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 152
    .local v0, "tabRadioGroup":Landroid/widget/RadioGroup;
    new-instance v1, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$2;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 167
    const v1, 0x7f1201cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    .line 168
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    if-eqz v1, :cond_0

    const v1, 0x7f1201cd

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 169
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;

    invoke-direct {v2, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$3;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 208
    iget v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mCurrentTabPos:I

    invoke-direct {p0, v1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->onTabSelect(I)V

    .line 209
    const v1, 0x7f1201cf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mSingleClickListener:Lcom/miui/gallery/movie/ui/listener/SingleClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v1, 0x7f1201cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mSingleClickListener:Lcom/miui/gallery/movie/ui/listener/SingleClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->loadTemplate()V

    .line 213
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->loadAudio()V

    .line 214
    return-void

    .line 168
    :cond_0
    const v1, 0x7f1201ce

    goto :goto_0
.end method

.method private loadAudio()V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Lcom/miui/gallery/movie/net/AudioResourceRequest;

    invoke-direct {v0}, Lcom/miui/gallery/movie/net/AudioResourceRequest;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioResourceRequest:Lcom/miui/gallery/movie/net/AudioResourceRequest;

    .line 295
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioResourceRequest:Lcom/miui/gallery/movie/net/AudioResourceRequest;

    new-instance v1, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$6;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/net/AudioResourceRequest;->execute(Lcom/miui/gallery/net/base/ResponseListener;)V

    .line 310
    return-void
.end method

.method private loadTemplate()V
    .locals 2

    .prologue
    .line 256
    new-instance v0, Lcom/miui/gallery/movie/net/TemplateResourceRequest;

    invoke-direct {v0}, Lcom/miui/gallery/movie/net/TemplateResourceRequest;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateResourceRequest:Lcom/miui/gallery/movie/net/TemplateResourceRequest;

    .line 257
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateResourceRequest:Lcom/miui/gallery/movie/net/TemplateResourceRequest;

    new-instance v1, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$5;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/net/TemplateResourceRequest;->execute(Lcom/miui/gallery/net/base/ResponseListener;)V

    .line 272
    return-void
.end method

.method private onTabSelect(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 455
    iput p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mCurrentTabPos:I

    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mRecyclerViews:[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 457
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mRecyclerViews:[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mRecyclerViews:[Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    aget-object v3, v1, v0

    if-ne p1, v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setVisibility(I)V

    .line 456
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .line 461
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 462
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setClipChildren(Z)V

    .line 463
    return-void
.end method

.method private refreshAudio(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/AudioResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/AudioResource;>;"
    invoke-static {}, Lcom/miui/gallery/movie/ui/factory/AudioFactory;->getAllLocalAudios()Ljava/util/ArrayList;

    move-result-object v0

    .line 314
    .local v0, "audioResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/AudioResource;>;"
    if-eqz p1, :cond_0

    .line 316
    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->setList(Ljava/util/List;)V

    .line 319
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    return-void
.end method

.method private refreshEditAdapter()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setList(Ljava/util/List;)V

    .line 251
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->notifyDataSetChanged()V

    .line 252
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    iput-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mIsShortVideo:Z

    .line 253
    return-void
.end method

.method private refreshTemplate(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/TemplateResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/TemplateResource;>;"
    invoke-static {}, Lcom/miui/gallery/movie/ui/factory/TemplateFactory;->getLocalTemplateEntities()Ljava/util/List;

    move-result-object v2

    .line 276
    .local v2, "templateResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/TemplateResource;>;"
    if-eqz p1, :cond_0

    .line 277
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateAdapter:Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/movie/ui/adapter/TemplateAdapter;->setList(Ljava/util/List;)V

    .line 280
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v3, v3, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    const-string v4, "movieAssetsNormal"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 281
    const/4 v1, -0x1

    .line 282
    .local v1, "selectTemplate":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 283
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v3, v3, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/movie/entity/TemplateResource;

    iget-object v3, v3, Lcom/miui/gallery/movie/entity/TemplateResource;->pathKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v4, v3, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/movie/entity/TemplateResource;

    iget-object v3, v3, Lcom/miui/gallery/movie/entity/TemplateResource;->pathKey:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 284
    move v1, v0

    .line 285
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/movie/entity/TemplateResource;

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v4, v4, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    iput-object v4, v3, Lcom/miui/gallery/movie/entity/TemplateResource;->pathKey:Ljava/lang/String;

    .line 289
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 291
    .end local v0    # "i":I
    .end local v1    # "selectTemplate":I
    :cond_2
    return-void

    .line 282
    .restart local v0    # "i":I
    .restart local v1    # "selectTemplate":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetMovieShareData()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->resetShareData()V

    .line 656
    :cond_0
    return-void
.end method


# virtual methods
.method public clearEditorAdapterSelected()V
    .locals 2

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setSelectedItemPosition(I)V

    .line 447
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 359
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 360
    const/4 v6, 0x7

    if-ne p1, v6, :cond_2

    const/4 v6, -0x1

    if-ne p2, v6, :cond_2

    .line 361
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, p3}, Lcom/miui/gallery/movie/utils/MovieUtils;->getImageFromClipData(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 362
    .local v2, "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v6, v6, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->checkChangeLongVideo()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 364
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/entity/MovieInfo;->discardToLongVideo()Z

    .line 365
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mIsShortVideo:Z

    .line 366
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    const v7, 0x7f1201ce

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 367
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0c02be

    invoke-static {v6, v7}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 368
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v7, v7, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/miui/gallery/movie/core/MovieManager;->resetImage(Ljava/util/List;Z)V

    .line 369
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/core/MovieManager;->replay()V

    .line 373
    :goto_0
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v7, v7, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setList(Ljava/util/List;)V

    .line 374
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->notifyDataSetChanged()V

    .line 375
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setSelectedItemPosition(I)V

    .line 376
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->resetMovieShareData()V

    .line 423
    .end local v2    # "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    :cond_0
    :goto_1
    return-void

    .line 371
    .restart local v2    # "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v6, v2}, Lcom/miui/gallery/movie/core/MovieManager;->addImage(Ljava/util/List;)V

    goto :goto_0

    .line 379
    .end local v2    # "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    :cond_2
    const/16 v6, 0x3e8

    if-ne p1, v6, :cond_6

    const/4 v6, -0x1

    if-ne p2, v6, :cond_6

    .line 380
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 381
    .local v1, "clipData":Landroid/content/ClipData;
    const/4 v4, 0x0

    .line 382
    .local v4, "soundFilePath":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 383
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/movie/utils/ConvertFilepathUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 391
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 392
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v6, v4}, Lcom/miui/gallery/movie/core/MovieManager;->isSupportVideo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 393
    new-instance v0, Lcom/miui/gallery/movie/entity/AudioResource;

    invoke-direct {v0, v4}, Lcom/miui/gallery/movie/entity/AudioResource;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "audioResource":Lcom/miui/gallery/movie/entity/AudioResource;
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v7, v0, Lcom/miui/gallery/movie/entity/AudioResource;->nameKey:Ljava/lang/String;

    iput-object v7, v6, Lcom/miui/gallery/movie/entity/MovieInfo;->audio:Ljava/lang/String;

    .line 395
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v6, v0}, Lcom/miui/gallery/movie/core/MovieManager;->setAudio(Lcom/miui/gallery/movie/entity/AudioResource;)V

    .line 396
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioAdapter:Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    invoke-virtual {v7}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->getItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->setSelectedItemPosition(I)V

    .line 401
    .end local v0    # "audioResource":Lcom/miui/gallery/movie/entity/AudioResource;
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->resetMovieShareData()V

    goto :goto_1

    .line 386
    :cond_4
    const/4 v5, 0x0

    .line 387
    .local v5, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 388
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 389
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/miui/gallery/movie/utils/ConvertFilepathUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 398
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c0573

    invoke-static {v6, v7}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_3

    .line 402
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v4    # "soundFilePath":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 403
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, p3}, Lcom/miui/gallery/movie/utils/MovieUtils;->getImageFromClipData(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 404
    .restart local v2    # "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v6, v6, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 405
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v6, v6, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 406
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v6, v6, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_8

    .line 407
    iget-boolean v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mIsShortVideo:Z

    if-eqz v6, :cond_7

    .line 408
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0c02be

    invoke-static {v6, v7}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 410
    :cond_7
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/entity/MovieInfo;->discardToLongVideo()Z

    .line 411
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    const v7, 0x7f1201ce

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 412
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v7, v7, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/miui/gallery/movie/core/MovieManager;->resetImage(Ljava/util/List;Z)V

    .line 417
    :goto_4
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshEditAdapter()V

    .line 418
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setSelectedItemPosition(I)V

    .line 419
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->resetMovieShareData()V

    .line 420
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    invoke-interface {v6}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->updateStorySha1Data()V

    .line 421
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/core/MovieManager;->replay()V

    goto/16 :goto_1

    .line 414
    :cond_8
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/entity/MovieInfo;->discardToShortVideo()Z

    .line 415
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v7, v7, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/miui/gallery/movie/core/MovieManager;->resetImage(Ljava/util/List;Z)V

    goto :goto_4
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 124
    instance-of v0, p1, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    if-eqz v0, :cond_0

    .line 125
    check-cast p1, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->getMovieManager()Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieManager:Lcom/miui/gallery/movie/core/MovieManager;

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->getMovieInfo()Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    .line 129
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 107
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "card_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mStoryMovieCardId:J

    .line 112
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 9
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 672
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 673
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 674
    .local v1, "animalOffset":I
    if-eqz p2, :cond_0

    .line 675
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    int-to-float v5, v1

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 676
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 677
    new-instance v3, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 678
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 679
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 680
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    .line 681
    new-instance v3, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$9;

    invoke-direct {v3, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$9;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 693
    :goto_0
    return-object v0

    .line 688
    .end local v2    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_0
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    aput v8, v4, v6

    int-to-float v5, v1

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 689
    .restart local v2    # "y":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 690
    new-instance v3, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 691
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    const v1, 0x7f0400b9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->initView(Landroid/view/View;)V

    .line 118
    return-object v0
.end method

.method public onDeleteClick()V
    .locals 3

    .prologue
    .line 427
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 428
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0c02c3

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->getSelectedItemPosition()I

    move-result v0

    .line 432
    .local v0, "deletePos":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-object v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 434
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMenuFragmentListener:Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    invoke-interface {v1}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->getMovieManager()Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/movie/core/MovieManager;->removeImageAtIndex(I)V

    .line 435
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setSelectedItemPosition(I)V

    .line 436
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->notifyDataSetChanged()V

    .line 437
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->resetMovieShareData()V

    .line 438
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDeleteClicked:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 660
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 661
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateResourceRequest:Lcom/miui/gallery/movie/net/TemplateResourceRequest;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mTemplateResourceRequest:Lcom/miui/gallery/movie/net/TemplateResourceRequest;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/net/TemplateResourceRequest;->cancel()V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioResourceRequest:Lcom/miui/gallery/movie/net/AudioResourceRequest;

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mAudioResourceRequest:Lcom/miui/gallery/movie/net/AudioResourceRequest;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/net/AudioResourceRequest;->cancel()V

    .line 667
    :cond_1
    invoke-static {}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->getInstance()Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->cancelAll()V

    .line 668
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 237
    if-nez p1, :cond_1

    .line 238
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mIsShortVideo:Z

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    if-eq v0, v1, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshEditAdapter()V

    .line 240
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mMovieInfo:Lcom/miui/gallery/movie/entity/MovieInfo;

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    if-eqz v0, :cond_2

    const v0, 0x7f1201cd

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDeleteClicked:Z

    if-eqz v0, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->refreshEditAdapter()V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mDeleteClicked:Z

    .line 247
    :cond_1
    return-void

    .line 240
    :cond_2
    const v0, 0x7f1201ce

    goto :goto_0
.end method

.method public onResumeClick()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->mEditAdapter:Lcom/miui/gallery/movie/ui/adapter/EditAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/adapter/EditAdapter;->setSelectedItemPosition(I)V

    .line 452
    return-void
.end method
