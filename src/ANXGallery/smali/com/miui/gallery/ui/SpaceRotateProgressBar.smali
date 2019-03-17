.class public Lcom/miui/gallery/ui/SpaceRotateProgressBar;
.super Landroid/widget/FrameLayout;
.source "SpaceRotateProgressBar.java"


# instance fields
.field protected mDescriptionText:Landroid/widget/TextView;

.field protected mDetailDescriptionText:Landroid/widget/TextView;

.field protected mEmptyValueView:Landroid/widget/ImageView;

.field protected mNumberAnimator:Landroid/animation/ObjectAnimator;

.field protected mRingAlphaAnimator:Landroid/animation/ObjectAnimator;

.field protected mRingHeadAnimator:Landroid/animation/ObjectAnimator;

.field protected mRingRotateAnimator:Landroid/animation/ObjectAnimator;

.field protected mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

.field private mSpaceNumber:I

.field protected mSpaceNumberView:Lcom/miui/gallery/widget/RightTopCornerTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040149

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f12029b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mDescriptionText:Landroid/widget/TextView;

    .line 59
    const v2, 0x7f12029c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mDetailDescriptionText:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f120299

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/widget/RightTopCornerTextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mSpaceNumberView:Lcom/miui/gallery/widget/RightTopCornerTextView;

    .line 61
    const v2, 0x7f120298

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/widget/RotateRingView;

    iput-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    .line 62
    const v2, 0x7f12029a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mEmptyValueView:Landroid/widget/ImageView;

    .line 63
    return-void
.end method


# virtual methods
.method protected final appearRingCircleAnim()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->cancelAnimIfRunning(Landroid/animation/Animator;)V

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 166
    return-void

    .line 162
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public cancelAllAnim()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mNumberAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->cancelAnimIfRunning(Landroid/animation/Animator;)V

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->cancelAnimIfRunning(Landroid/animation/Animator;)V

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingHeadAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->cancelAnimIfRunning(Landroid/animation/Animator;)V

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->cancelAnimIfRunning(Landroid/animation/Animator;)V

    .line 173
    return-void
.end method

.method protected cancelAnimIfRunning(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 178
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 182
    :cond_0
    return-void
.end method

.method protected final changeNumberEndStageAnim(ILandroid/animation/AnimatorListenerAdapter;)V
    .locals 11
    .param p1, "endNumber"    # I
    .param p2, "listenerAdapter"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 112
    const/16 v1, 0xb4

    .line 113
    .local v1, "stopAngle":I
    iget-object v4, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    iget-object v4, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 119
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    const-string v5, "progress"

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v7}, Lcom/miui/gallery/widget/RotateRingView;->getProgress()I

    move-result v7

    aput v7, v6, v8

    iget-object v7, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v7}, Lcom/miui/gallery/widget/RotateRingView;->getProgress()I

    move-result v7

    add-int/2addr v7, v1

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    .line 121
    iget-object v4, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mNumberAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->cancelAnimIfRunning(Landroid/animation/Animator;)V

    .line 122
    const-string/jumbo v4, "spaceNumber"

    new-array v5, v10, [I

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->getSpaceNumber()I

    move-result v6

    aput v6, v5, v8

    aput p1, v5, v9

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mNumberAnimator:Landroid/animation/ObjectAnimator;

    .line 124
    const-wide/16 v2, 0x3e8

    .line 125
    .local v2, "duration":J
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 126
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mNumberAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 127
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 128
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 134
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->disappearRingHeadAnim(J)V

    .line 135
    return-void

    .line 117
    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    .end local v2    # "duration":J
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final changeNumberWithAnim(ILandroid/animation/AnimatorListenerAdapter;)V
    .locals 4
    .param p1, "endNumber"    # I
    .param p2, "listenerAdapter"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mNumberAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->cancelAnimIfRunning(Landroid/animation/Animator;)V

    .line 90
    const-string/jumbo v0, "spaceNumber"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->getSpaceNumber()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mNumberAnimator:Landroid/animation/ObjectAnimator;

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mNumberAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->getChangeDuration(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mNumberAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    if-eqz p2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mNumberAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mNumberAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 97
    return-void
.end method

.method protected final changeNumberWithNoAnim(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->setSpaceNumber(I)V

    .line 187
    return-void
.end method

.method protected final disappearRingCircleAnim()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->cancelAnimIfRunning(Landroid/animation/Animator;)V

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 157
    return-void

    .line 153
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected final disappearRingHeadAnim(J)V
    .locals 7
    .param p1, "timeDuration"    # J

    .prologue
    .line 139
    iget-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/RotateRingView;->getHeadMaxAlpha()I

    move-result v0

    .line 140
    .local v0, "maxAlpha":I
    iget-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/RotateRingView;->getHeadMinAlpha()I

    move-result v1

    .line 141
    .local v1, "minAlpha":I
    if-le v0, v1, :cond_0

    .line 142
    iget-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingHeadAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->cancelAnimIfRunning(Landroid/animation/Animator;)V

    .line 143
    iget-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    const-string v3, "headMaxAlpha"

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingHeadAnimator:Landroid/animation/ObjectAnimator;

    .line 144
    iget-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingHeadAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 145
    iget-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingHeadAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    iget-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingHeadAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 148
    :cond_0
    return-void
.end method

.method protected getChangeDuration(I)I
    .locals 2
    .param p1, "endNumber"    # I

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->getSpaceNumber()I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 101
    .local v0, "interval":I
    const v1, 0x7a120

    if-ge v0, v1, :cond_0

    .line 103
    const/16 v1, 0x7d0

    .line 106
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0xbb8

    goto :goto_0
.end method

.method public getSpaceNumber()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mSpaceNumber:I

    return v0
.end method

.method public isRotating()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method public setDetailDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mDetailDescriptionText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mDetailDescriptionText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mDetailDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSpaceNumber(I)V
    .locals 9
    .param p1, "number"    # I

    .prologue
    const/16 v8, 0x384

    const/high16 v7, 0x447a0000    # 1000.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 204
    iput p1, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mSpaceNumber:I

    .line 205
    const/16 v2, 0x64

    if-ge p1, v2, :cond_0

    .line 206
    const/16 p1, 0x64

    .line 208
    :cond_0
    const-string v2, "%.1f"

    new-array v3, v6, [Ljava/lang/Object;

    rem-int/lit8 v4, p1, 0x64

    sub-int v4, p1, v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "numberText":Ljava/lang/String;
    const v0, 0x7f0c02a1

    .line 210
    .local v0, "cornerTextResId":I
    if-le p1, v8, :cond_1

    .line 211
    div-int/lit16 p1, p1, 0x3e8

    .line 212
    if-lez p1, :cond_1

    .line 213
    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 214
    const v0, 0x7f0c02a1

    .line 218
    :cond_1
    if-le p1, v8, :cond_2

    .line 219
    const-string v2, "%.1f"

    new-array v3, v6, [Ljava/lang/Object;

    int-to-float v4, p1

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 220
    const v0, 0x7f0c023d

    .line 222
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mSpaceNumberView:Lcom/miui/gallery/widget/RightTopCornerTextView;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/widget/RightTopCornerTextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v2, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mSpaceNumberView:Lcom/miui/gallery/widget/RightTopCornerTextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/RightTopCornerTextView;->setCornerText(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method protected final startRotateRingAnim(Z)V
    .locals 6
    .param p1, "keepIfRunning"    # Z

    .prologue
    const/4 v5, -0x1

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    if-eqz p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/RotateRingView;->setStartRotateStable()V

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    const-string v1, "progress"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/RotateRingView;->getProgress()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/RotateRingView;->getProgress()I

    move-result v4

    add-int/lit16 v4, v4, 0x167

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    const-wide v2, 0x4094d55555555555L    # 1333.3333333333333

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/ui/SpaceRotateProgressBar;->mRingRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
