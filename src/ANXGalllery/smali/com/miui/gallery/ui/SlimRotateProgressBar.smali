.class public Lcom/miui/gallery/ui/SlimRotateProgressBar;
.super Lcom/miui/gallery/ui/SpaceRotateProgressBar;
.source "SlimRotateProgressBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/SlimRotateProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/ui/SlimRotateProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getChangeDuration(I)I
    .locals 2
    .param p1, "endNumber"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->getSpaceNumber()I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 116
    .local v0, "interval":I
    const/16 v1, 0x3a98

    if-ge v0, v1, :cond_0

    .line 118
    const/16 v1, 0x1f4

    .line 124
    :goto_0
    return v1

    .line 119
    :cond_0
    const v1, 0x7a120

    if-ge v0, v1, :cond_1

    .line 121
    const/16 v1, 0x7d0

    goto :goto_0

    .line 124
    :cond_1
    const/16 v1, 0xbb8

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    .line 81
    const/16 v0, 0x32

    .line 82
    .local v0, "stopAngle":I
    iget-object v1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mNumberAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->cancelAnimIfRunning(Landroid/animation/Animator;)V

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    const-string v2, "progress"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/RotateRingView;->getProgress()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/RotateRingView;->getProgress()I

    move-result v5

    add-int/2addr v5, v0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    .line 90
    iget-object v1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    iget-object v1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    iget-object v1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 93
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/RotateRingView;->setStartRotateStable()V

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    const-string v1, "progress"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/RotateRingView;->getProgress()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/RotateRingView;->getProgress()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/miui/gallery/ui/SlimRotateProgressBar$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/SlimRotateProgressBar$3;-><init>(Lcom/miui/gallery/ui/SlimRotateProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 111
    return-void
.end method

.method public setNumber(J)V
    .locals 1
    .param p1, "spaceNumber"    # J

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->setNumber(JZ)V

    .line 31
    return-void
.end method

.method public setNumber(JZ)V
    .locals 5
    .param p1, "spaceNumber"    # J
    .param p3, "anim"    # Z

    .prologue
    .line 34
    if-eqz p3, :cond_0

    .line 35
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->setNumber(JZLjava/lang/Runnable;)V

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->cancelAllAnim()V

    .line 38
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 39
    .local v0, "number":I
    iget-object v1, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    iget-object v2, p0, Lcom/miui/gallery/ui/SlimRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/RotateRingView;->getHeadMinAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/RotateRingView;->setHeadMaxAlpha(I)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->changeNumberWithNoAnim(I)V

    goto :goto_0
.end method

.method public setNumber(JZLjava/lang/Runnable;)V
    .locals 5
    .param p1, "spaceNumber"    # J
    .param p3, "isEnd"    # Z
    .param p4, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 52
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->startRotateRingAnim(Z)V

    .line 53
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 55
    .local v1, "number":I
    if-eqz p4, :cond_0

    .line 56
    new-instance v0, Lcom/miui/gallery/ui/SlimRotateProgressBar$1;

    invoke-direct {v0, p0, p4}, Lcom/miui/gallery/ui/SlimRotateProgressBar$1;-><init>(Lcom/miui/gallery/ui/SlimRotateProgressBar;Ljava/lang/Runnable;)V

    .line 66
    .local v0, "listenerAdapter":Landroid/animation/AnimatorListenerAdapter;
    :goto_0
    if-eqz p3, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->getSpaceNumber()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->getSpaceNumber()I

    move-result v3

    sub-int v3, v1, v3

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    new-instance v3, Lcom/miui/gallery/ui/SlimRotateProgressBar$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/miui/gallery/ui/SlimRotateProgressBar$2;-><init>(Lcom/miui/gallery/ui/SlimRotateProgressBar;ILandroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->changeNumberWithAnim(ILandroid/animation/AnimatorListenerAdapter;)V

    .line 78
    :goto_1
    return-void

    .line 64
    .end local v0    # "listenerAdapter":Landroid/animation/AnimatorListenerAdapter;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "listenerAdapter":Landroid/animation/AnimatorListenerAdapter;
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/ui/SlimRotateProgressBar;->changeNumberWithAnim(ILandroid/animation/AnimatorListenerAdapter;)V

    goto :goto_1
.end method
