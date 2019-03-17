.class public Lcom/miui/gallery/ui/CleanerRotateProgressBar;
.super Lcom/miui/gallery/ui/SpaceRotateProgressBar;
.source "CleanerRotateProgressBar.java"


# instance fields
.field private mHasShowEmptyAnim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/SpaceRotateProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->mHasShowEmptyAnim:Z

    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->setDescription(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/ui/CleanerRotateProgressBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerRotateProgressBar;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->mHasShowEmptyAnim:Z

    return p1
.end method


# virtual methods
.method public hideRingCircle(Z)V
    .locals 2
    .param p1, "anim"    # Z

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->disappearRingCircleAnim()V

    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->setDetailDescription(Ljava/lang/String;)V

    .line 40
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/RotateRingView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setNumber(J)V
    .locals 1
    .param p1, "spaceNumber"    # J

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->setNumber(JZ)V

    .line 53
    return-void
.end method

.method public setNumber(JZ)V
    .locals 5
    .param p1, "spaceNumber"    # J
    .param p3, "anim"    # Z

    .prologue
    .line 56
    if-eqz p3, :cond_0

    .line 57
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->setNumber(JZLjava/lang/Runnable;)V

    .line 63
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->cancelAllAnim()V

    .line 60
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 61
    .local v0, "number":I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->changeNumberWithNoAnim(I)V

    goto :goto_0
.end method

.method public setNumber(JZLjava/lang/Runnable;)V
    .locals 5
    .param p1, "spaceNumber"    # J
    .param p3, "isEnd"    # Z
    .param p4, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 73
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->startRotateRingAnim(Z)V

    .line 74
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 76
    .local v1, "number":I
    if-eqz p4, :cond_0

    .line 77
    new-instance v0, Lcom/miui/gallery/ui/CleanerRotateProgressBar$1;

    invoke-direct {v0, p0, p4}, Lcom/miui/gallery/ui/CleanerRotateProgressBar$1;-><init>(Lcom/miui/gallery/ui/CleanerRotateProgressBar;Ljava/lang/Runnable;)V

    .line 87
    .local v0, "listenerAdapter":Landroid/animation/AnimatorListenerAdapter;
    :goto_0
    if-eqz p3, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->getSpaceNumber()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->getSpaceNumber()I

    move-result v3

    sub-int v3, v1, v3

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    new-instance v3, Lcom/miui/gallery/ui/CleanerRotateProgressBar$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar$2;-><init>(Lcom/miui/gallery/ui/CleanerRotateProgressBar;ILandroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->changeNumberWithAnim(ILandroid/animation/AnimatorListenerAdapter;)V

    .line 99
    :goto_1
    return-void

    .line 85
    .end local v0    # "listenerAdapter":Landroid/animation/AnimatorListenerAdapter;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "listenerAdapter":Landroid/animation/AnimatorListenerAdapter;
    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->changeNumberWithAnim(ILandroid/animation/AnimatorListenerAdapter;)V

    goto :goto_1
.end method

.method public showEmptyAnim()V
    .locals 2

    .prologue
    .line 102
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->showEmptyAnim(J)V

    .line 103
    return-void
.end method

.method public showEmptyAnim(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->mHasShowEmptyAnim:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->mEmptyValueView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->mEmptyValueView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->showRingCircle(Z)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar$3;-><init>(Lcom/miui/gallery/ui/CleanerRotateProgressBar;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showRingCircle(Z)V
    .locals 2
    .param p1, "anim"    # Z

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->appearRingCircleAnim()V

    .line 48
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->setDetailDescription(Ljava/lang/String;)V

    .line 49
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->mRotateRing:Lcom/miui/gallery/widget/RotateRingView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/RotateRingView;->setAlpha(F)V

    goto :goto_0
.end method
