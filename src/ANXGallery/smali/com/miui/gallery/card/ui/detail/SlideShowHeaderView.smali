.class public Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;
.super Landroid/widget/RelativeLayout;
.source "SlideShowHeaderView.java"


# instance fields
.field private mIsPlayEnable:Z

.field private mIsPlayIconInited:Z

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mPlayIcon:Landroid/view/View;

.field private mPlayIconAlphaAnim:Landroid/animation/ObjectAnimator;

.field private final mSlideShowController:Lcom/miui/gallery/card/ui/detail/SlideShowController;

.field private final mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v2, 0xdac

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mIsPlayIconInited:Z

    .line 50
    new-instance v0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView$1;-><init>(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040146

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const v0, 0x7f120296

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/SlideShowView;

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/SlideShowView;->setSlideDuration(I)V

    .line 45
    new-instance v0, Lcom/miui/gallery/card/ui/detail/SlideShowController;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/card/ui/detail/SlideShowController;-><init>(Lcom/miui/gallery/widget/SlideShowView;I)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mSlideShowController:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    .line 46
    const v0, 0x7f120297

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIcon:Landroid/view/View;

    .line 47
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mIsPlayIconInited:Z

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mIsPlayIconInited:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;)Lcom/miui/gallery/widget/SlideShowView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;

    return-object v0
.end method

.method private startPlayIconAlphaAnim(Z)V
    .locals 6
    .param p1, "isAppear"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIconAlphaAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIconAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIconAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 105
    :cond_0
    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIcon:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIconAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIconAlphaAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIconAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 112
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIcon:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIconAlphaAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method


# virtual methods
.method public getPlayIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIcon:Landroid/view/View;

    return-object v0
.end method

.method public isPlayEnable()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mIsPlayEnable:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mSlideShowController:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->pause()V

    .line 78
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mSlideShowController:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->resume()V

    .line 74
    return-void
.end method

.method public setPlayEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mIsPlayEnable:Z

    .line 94
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->startPlayIconAlphaAnim(Z)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mPlayIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->startPlayIconAlphaAnim(Z)V

    goto :goto_0
.end method

.method public setSlideRefreshedListener(Lcom/miui/gallery/widget/SlideShowView$OnRefreshedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/widget/SlideShowView$OnRefreshedListener;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/SlideShowView;->setRefreshListener(Lcom/miui/gallery/widget/SlideShowView$OnRefreshedListener;)V

    .line 116
    return-void
.end method

.method public updateMedias(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/miui/gallery/card/model/BaseMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "mediaInfos":Ljava/util/List;, "Ljava/util/List<+Lcom/miui/gallery/card/model/BaseMedia;>;"
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->mSlideShowController:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->updateMedias(Ljava/util/List;)V

    .line 82
    return-void
.end method
