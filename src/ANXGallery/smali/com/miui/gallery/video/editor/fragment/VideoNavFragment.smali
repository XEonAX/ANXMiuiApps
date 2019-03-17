.class public Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;
.super Lcom/miui/gallery/video/editor/ui/MenuFragment;
.source "VideoNavFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;
    }
.end annotation


# static fields
.field private static sAnimAppearDelay:I

.field private static sAnimAppearDuration:I

.field private static sAnimDisappearDuration:I

.field private static sAnimOffset:I


# instance fields
.field private mAdapter:Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;

.field private mDialog:Landroid/app/Dialog;

.field private mNavRecyclerView:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;

.field private mNavigatorDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/MenuFragmentData;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$OnItemClickListener;

.field private mTvDiscard:Landroid/widget/TextView;

.field private mTvExport:Landroid/widget/TextView;

.field private mVideoFrames:I

.field private mVideoFramesManager:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

.field private showAnimate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;-><init>()V

    .line 48
    iput v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mVideoFrames:I

    .line 53
    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->showAnimate:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mNavigatorDataList:Ljava/util/List;

    .line 180
    new-instance v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;-><init>(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mOnItemClickListener:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$OnItemClickListener;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mNavigatorDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->initRecylerView()V

    return-void
.end method

.method static synthetic access$602(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mVideoFrames:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method private initAnimatorData()V
    .locals 2

    .prologue
    .line 66
    sget v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimOffset:I

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0387

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimOffset:I

    .line 69
    :cond_0
    sget v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimAppearDuration:I

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimAppearDuration:I

    .line 72
    :cond_1
    sget v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimDisappearDuration:I

    if-nez v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimDisappearDuration:I

    .line 75
    :cond_2
    sget v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimAppearDelay:I

    if-nez v0, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimAppearDelay:I

    .line 78
    :cond_3
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 176
    const-string v0, "VideoNavFragment"

    const-string/jumbo v1, "the video fps is: %s"

    iget v2, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mVideoFrames:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    iget v1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mVideoFrames:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;->getNavigatorData(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mNavigatorDataList:Ljava/util/List;

    .line 178
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mTvExport:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$1;-><init>(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mTvDiscard:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$2;-><init>(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method

.method private initRecylerView()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->initData()V

    .line 103
    new-instance v0, Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mNavigatorDataList:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mNavRecyclerView:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mOnItemClickListener:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;->setOnItemClickListener(Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$OnItemClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/adapter/VideoNavAdapter;->getItemCount()I

    move-result v7

    .line 107
    .local v7, "count":I
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 108
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 109
    .local v8, "itemWidth":I
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    mul-int v2, v8, v7

    sub-int/2addr v0, v2

    add-int/lit8 v2, v7, -0x1

    div-int v3, v0, v2

    .line 110
    .local v3, "hInterval":I
    iget-object v9, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mNavRecyclerView:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;

    new-instance v0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;

    move v2, v1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;-><init>(IIIIII)V

    invoke-virtual {v9, v0}, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mNavRecyclerView:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 112
    return-void
.end method


# virtual methods
.method public doApply()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;->onSave()V

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doCancel()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;->onCancel()V

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentEffect()Ljava/util/List;
    .locals 1
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
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEffectId()I
    .locals 1

    .prologue
    .line 237
    const v0, 0x7f120034

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->initAnimatorData()V

    .line 62
    new-instance v0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;-><init>(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mVideoFramesManager:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

    .line 63
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 10
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 131
    iget-boolean v3, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->showAnimate:Z

    if-nez v3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v1

    .line 135
    :cond_1
    const/16 v3, 0x2002

    if-ne v3, p1, :cond_2

    if-nez p2, :cond_0

    .line 138
    :cond_2
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 139
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_4

    .line 140
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    sget v5, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimOffset:I

    int-to-float v5, v5

    aput v5, v4, v7

    aput v9, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 141
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 142
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 143
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 144
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_3
    sget v3, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimAppearDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 148
    sget v3, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimAppearDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 149
    new-instance v3, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$3;

    invoke-direct {v3, p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$3;-><init>(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 166
    .end local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_4
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v9, v4, v7

    sget v5, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimOffset:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 167
    .restart local v2    # "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 168
    .restart local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v7

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 169
    new-instance v3, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 170
    sget v3, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->sAnimDisappearDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/16 :goto_0

    .line 141
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 167
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const v1, 0x7f040175

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onDestroy()V

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mDialog:Landroid/app/Dialog;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mVideoFramesManager:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mVideoFramesManager:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->onDestroy()V

    .line 226
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f120235

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mNavRecyclerView:Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;

    .line 90
    const v0, 0x7f1201eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mTvExport:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f12013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mTvDiscard:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mTvExport:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->hasEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->initListener()V

    .line 94
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mVideoFrames:I

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->mVideoFramesManager:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$VideoFramesManager;->handleVideoFrames()V

    .line 99
    :goto_1
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->initRecylerView()V

    goto :goto_1
.end method

.method public updateLastFragment(Lcom/miui/gallery/video/editor/ui/MenuFragment;)V
    .locals 1
    .param p1, "lastFragment"    # Lcom/miui/gallery/video/editor/ui/MenuFragment;

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->showAnimate:Z

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->showAnimate:Z

    goto :goto_0
.end method
