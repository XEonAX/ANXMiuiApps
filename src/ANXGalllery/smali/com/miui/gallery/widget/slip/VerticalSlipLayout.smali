.class public Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
.super Landroid/widget/FrameLayout;
.source "VerticalSlipLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;,
        Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mBottomView:Landroid/view/View;

.field private mDragEnable:Z

.field private mFixedSideSlipDis:I

.field private mFlingToSlipped:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mIsSlipped:Z

.field private mIsSlippedWhenEnter:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaxSlipY:I

.field private mMaximumVelocity:I

.field private mMinSlipY:I

.field private mMinimumVelocity:I

.field private mNonSlippedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlipListener:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

.field private mSlipMode:I

.field private mSlipRunnable:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;

.field private mSlipState:I

.field private mSlipViewInitialized:Z

.field private mSlippedDrawable:Landroid/graphics/drawable/Drawable;

.field private mTopVInitMarginBottom:I

.field private mTopVInitMarginTop:I

.field private mTopView:Landroid/view/View;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-boolean v5, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mDragEnable:Z

    .line 45
    iput v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionX:F

    .line 46
    iput v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    .line 47
    iput v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionY:F

    .line 48
    iput v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionX:F

    .line 49
    iput v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    .line 53
    iput v3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    .line 54
    iput v3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipState:I

    .line 55
    iput-boolean v3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsSlippedWhenEnter:Z

    .line 70
    iput v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMinSlipY:I

    .line 71
    iput v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMaxSlipY:I

    .line 77
    iput v3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mFixedSideSlipDis:I

    .line 84
    iput-boolean v3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsSlipped:Z

    .line 97
    sget-object v2, Lcom/miui/gallery/R$styleable;->VerticalSlipLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    .line 99
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsSlippedWhenEnter:Z

    .line 100
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mFixedSideSlipDis:I

    .line 101
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 102
    .local v1, "slippedDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 103
    iput-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlippedDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->initViewPager()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsSlipped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlippedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
    .param p1, "x1"    # F

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->performSlipTo(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->refreshSlipStatusByTarget(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->onSlipEnd()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getSlipY()I

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mFlingToSlipped:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getSlippedY()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mNonSlippedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setBottomViewVisible(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->notifySlipAnimChildren(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipListener:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .prologue
    .line 21
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipState:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setSlipState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->onSlipStart()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipRunnable:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;)Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
    .param p1, "x1"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipRunnable:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;

    return-object p1
.end method

.method private calculateSlipTo(FI)I
    .locals 7
    .param p1, "deltaY"    # F
    .param p2, "velocity"    # I

    .prologue
    const v6, 0x3e4ccccd    # 0.2f

    const v5, 0x3d4ccccd    # 0.05f

    .line 447
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v3

    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 448
    .local v0, "deltaRatio":F
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMinimumVelocity:I

    mul-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMaximumVelocity:I

    div-int/lit8 v3, v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v1, v2

    .line 449
    .local v1, "reverseVelocity":F
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_4

    .line 451
    cmpl-float v2, v0, v6

    if-lez v2, :cond_1

    .line 452
    int-to-float v2, p2

    neg-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v2

    .line 465
    :goto_0
    return v2

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v2

    goto :goto_0

    .line 453
    :cond_1
    cmpl-float v2, v0, v5

    if-lez v2, :cond_3

    .line 454
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMinimumVelocity:I

    if-le p2, v2, :cond_2

    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v2

    goto :goto_0

    .line 456
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v2

    goto :goto_0

    .line 460
    :cond_4
    cmpl-float v2, v0, v6

    if-lez v2, :cond_6

    .line 461
    int-to-float v2, p2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_5

    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v2

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v2

    goto :goto_0

    .line 462
    :cond_6
    cmpl-float v2, v0, v5

    if-lez v2, :cond_8

    .line 463
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMinimumVelocity:I

    neg-int v2, v2

    if-ge p2, v2, :cond_7

    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v2

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v2

    goto :goto_0

    .line 465
    :cond_8
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v2

    goto :goto_0
.end method

.method private canSlip()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 176
    iget v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mDragEnable:Z

    if-eqz v1, :cond_0

    .line 184
    iget-boolean v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipViewInitialized:Z

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v1

    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 192
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    .line 318
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 322
    :cond_0
    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 279
    :cond_0
    return-void
.end method

.method private getLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 608
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method private getMaxSlipY()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMaxSlipY:I

    return v0
.end method

.method private getMinSlipY()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMinSlipY:I

    return v0
.end method

.method private getSlipY()I
    .locals 2

    .prologue
    .line 547
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 552
    :goto_0
    return v0

    .line 549
    :cond_0
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 550
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0

    .line 552
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getSlippedY()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    packed-switch v0, :pswitch_data_0

    .line 485
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 481
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v0

    goto :goto_0

    .line 483
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v0

    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initSlipParams()V
    .locals 2

    .prologue
    .line 617
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    packed-switch v0, :pswitch_data_0

    .line 627
    :goto_0
    return-void

    .line 619
    :pswitch_0
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopVInitMarginTop:I

    iput v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMinSlipY:I

    .line 620
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mBottomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMaxSlipY:I

    goto :goto_0

    .line 623
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mBottomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMinSlipY:I

    .line 624
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopVInitMarginBottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMaxSlipY:I

    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initSlipView()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getChildCount()I

    move-result v0

    .line 136
    .local v0, "count":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopView:Landroid/view/View;

    .line 140
    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mBottomView:Landroid/view/View;

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopVInitMarginTop:I

    .line 142
    iget-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopVInitMarginBottom:I

    .line 143
    iget-boolean v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsSlippedWhenEnter:Z

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setBottomViewVisible(Z)V

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipViewInitialized:Z

    goto :goto_0
.end method

.method private initViewPager()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 113
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTouchSlop:I

    .line 114
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMinimumVelocity:I

    .line 115
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMaximumVelocity:I

    .line 116
    iget-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mNonSlippedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void
.end method

.method private needInitSlipParams()Z
    .locals 2

    .prologue
    .line 604
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMinSlipY:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needIntercept(FF)Z
    .locals 8
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const-wide v6, 0x3fd41b2f769cf0e0L    # 0.3141592653589793

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move v0, v1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 200
    invoke-virtual {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isSlipped()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    cmpl-float v2, p2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 203
    :cond_2
    cmpg-float v2, p2, v4

    if-gez v2, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 206
    :cond_4
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    if-ne v2, v0, :cond_7

    .line 207
    invoke-virtual {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isSlipped()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 208
    cmpg-float v2, p2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 210
    :cond_5
    cmpl-float v2, p2, v4

    if-lez v2, :cond_6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 213
    goto :goto_0
.end method

.method private notifySlipAnimChildren(Landroid/view/View;F)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # F

    .prologue
    .line 732
    iget-object v3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipListener:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

    if-eqz v3, :cond_0

    .line 733
    iget-object v3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipListener:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

    invoke-interface {v3, p2}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;->onSlipping(F)V

    .line 735
    :cond_0
    instance-of v3, p1, Lcom/miui/gallery/widget/slip/ISlipAnimView;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 736
    check-cast v3, Lcom/miui/gallery/widget/slip/ISlipAnimView;

    invoke-interface {v3, p2}, Lcom/miui/gallery/widget/slip/ISlipAnimView;->onSlipping(F)V

    .line 738
    :cond_1
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 739
    check-cast v2, Landroid/view/ViewGroup;

    .line 740
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 741
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 742
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->notifySlipAnimChildren(Landroid/view/View;F)V

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method private onSlipEnd()V
    .locals 1

    .prologue
    .line 296
    new-instance v0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$1;-><init>(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->post(Ljava/lang/Runnable;)Z

    .line 313
    return-void
.end method

.method private onSlipStart()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlippedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 289
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setBottomViewVisible(Z)V

    .line 290
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipListener:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipListener:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

    invoke-interface {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;->onSlipStart()V

    .line 293
    :cond_0
    return-void
.end method

.method private performSlipBy(F)V
    .locals 3
    .param p1, "dy"    # F

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getSlipY()I

    move-result v1

    int-to-float v1, v1

    add-float v0, v1, p1

    .line 495
    .local v0, "tarSlipTo":F
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 496
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->performSlipTo(F)V

    .line 497
    return-void
.end method

.method private performSlipTo(F)V
    .locals 8
    .param p1, "y"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/high16 v6, 0x4032000000000000L    # 18.0

    .line 500
    iget-object v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 501
    .local v1, "tlp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    mul-float/2addr v2, v5

    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v3

    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 502
    .local v0, "ratio":F
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 504
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mFixedSideSlipDis:I

    int-to-double v2, v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    .line 505
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mFixedSideSlipDis:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 515
    :cond_0
    :goto_0
    invoke-direct {p0, p0, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->notifySlipAnimChildren(Landroid/view/View;F)V

    .line 516
    iget-object v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTopView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    return-void

    .line 507
    :cond_1
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 508
    sub-float v0, v5, v0

    .line 509
    invoke-virtual {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 510
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mFixedSideSlipDis:I

    int-to-double v2, v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    .line 511
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mFixedSideSlipDis:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private refreshSlipStatusByTarget(I)V
    .locals 4
    .param p1, "target"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 560
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    if-ne v2, v0, :cond_2

    .line 561
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v2

    if-le p1, v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsSlipped:Z

    .line 565
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 561
    goto :goto_0

    .line 562
    :cond_2
    iget v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v2

    if-ge p1, v2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsSlipped:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private resetSlipParams()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 612
    iput v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMinSlipY:I

    .line 613
    iput v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMaxSlipY:I

    .line 614
    return-void
.end method

.method private setBottomViewVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 668
    iget-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mBottomView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 669
    return-void

    .line 668
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setSlipState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 659
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipState:I

    if-eq v0, p1, :cond_0

    .line 660
    iput p1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipState:I

    .line 661
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipListener:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipListener:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;->onSlipStateChanged(I)V

    .line 665
    :cond_0
    return-void
.end method

.method private setSlippedInternal(Z)V
    .locals 3
    .param p1, "smooth"    # Z

    .prologue
    const/4 v2, 0x0

    .line 596
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 597
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v0

    invoke-direct {p0, v0, v2, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->slipTo(IIZ)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v0

    invoke-direct {p0, v0, v2, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->slipTo(IIZ)V

    goto :goto_0
.end method

.method private setUnSlippedInternal(Z)V
    .locals 3
    .param p1, "smooth"    # Z

    .prologue
    const/4 v2, 0x0

    .line 582
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 583
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMinSlipY()I

    move-result v0

    invoke-direct {p0, v0, v2, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->slipTo(IIZ)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->getMaxSlipY()I

    move-result v0

    invoke-direct {p0, v0, v2, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->slipTo(IIZ)V

    goto :goto_0
.end method

.method private slipTo(IIZ)V
    .locals 1
    .param p1, "y"    # I
    .param p2, "velocity"    # I
    .param p3, "smooth"    # Z

    .prologue
    .line 521
    new-instance v0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$2;-><init>(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;ZII)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->post(Ljava/lang/Runnable;)Z

    .line 544
    return-void
.end method

.method private startDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    .line 283
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setSlipState(I)V

    .line 284
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->onSlipStart()V

    .line 285
    return-void
.end method

.method private translateTouchDistance(F)F
    .locals 1
    .param p1, "touchDistance"    # F

    .prologue
    .line 490
    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 169
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFlingToSlipped()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mFlingToSlipped:Z

    return v0
.end method

.method public isSlipped()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsSlipped:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipRunnable:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipRunnable:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->abort()V

    .line 654
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipListener:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

    .line 655
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 656
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 150
    iget-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipViewInitialized:Z

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->initSlipView()V

    .line 153
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 218
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->canSlip()Z

    move-result v5

    if-nez v5, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v4

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 225
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 267
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_3

    .line 268
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->ensureVelocityTracker()V

    .line 269
    iget-object v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 272
    :cond_3
    iget-boolean v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 227
    :pswitch_0
    iput-boolean v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionX:F

    iput v5, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionX:F

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    iput v5, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionY:F

    .line 230
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    goto :goto_1

    .line 233
    :pswitch_1
    iget v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    if-eq v4, v7, :cond_2

    .line 236
    iget v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 237
    .local v1, "pointerIndex":I
    if-ltz v1, :cond_2

    .line 240
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 241
    .local v2, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 242
    .local v3, "y":F
    iget-boolean v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    if-nez v4, :cond_4

    .line 243
    iget v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTouchSlop:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 244
    iget v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionX:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    sub-float v5, v3, v5

    invoke-direct {p0, v4, v5}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->needIntercept(FF)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 245
    iget v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionX:F

    iput v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionX:F

    .line 246
    iget v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionY:F

    iput v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    .line 247
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->startDrag()V

    .line 248
    const-string v4, "VerticalSlipLayout"

    const-string v5, "onSlipStart"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_5

    .line 256
    iget v4, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionY:F

    sub-float v4, v3, v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->translateTouchDistance(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->performSlipBy(F)V

    .line 258
    :cond_5
    iput v2, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionX:F

    .line 259
    iput v3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionY:F

    goto/16 :goto_1

    .line 251
    :cond_6
    iput v7, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    goto :goto_2

    .line 263
    .end local v1    # "pointerIndex":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->endDrag()V

    goto/16 :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 637
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 638
    iget-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipViewInitialized:Z

    if-eqz v0, :cond_1

    .line 639
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->needInitSlipParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->initSlipParams()V

    .line 642
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsSlippedWhenEnter:Z

    if-eqz v0, :cond_1

    .line 643
    iput-boolean v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsSlippedWhenEnter:Z

    .line 644
    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setSlippedInternal(Z)V

    .line 647
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->resetSlipParams()V

    .line 632
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 633
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, -0x1

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 326
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->canSlip()Z

    move-result v10

    if-nez v10, :cond_0

    .line 443
    :goto_0
    return v3

    .line 330
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 332
    .local v0, "action":I
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v10

    if-eqz v10, :cond_1

    .line 333
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->endDrag()V

    goto :goto_0

    .line 337
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 439
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    if-eqz v10, :cond_3

    .line 440
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->ensureVelocityTracker()V

    .line 441
    iget-object v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    move v3, v9

    .line 443
    goto :goto_0

    .line 339
    :pswitch_1
    iput-boolean v3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionX:F

    iput v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionX:F

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    iput v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionY:F

    .line 342
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    goto :goto_1

    .line 346
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 347
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 348
    .local v7, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 349
    .local v8, "y":F
    iput v7, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionX:F

    .line 350
    iput v8, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionY:F

    .line 351
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    .line 352
    iget-boolean v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    if-nez v10, :cond_2

    .line 353
    iput v7, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionX:F

    .line 354
    iput v8, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    goto :goto_1

    .line 359
    .end local v1    # "index":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 360
    .local v5, "pointIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 361
    .local v4, "pointId":I
    iget v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    if-ne v10, v4, :cond_2

    .line 362
    if-nez v5, :cond_4

    move v3, v9

    .line 363
    .local v3, "newPointerIndex":I
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 364
    .restart local v7    # "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 365
    .restart local v8    # "y":F
    iput v7, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionX:F

    .line 366
    iput v8, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionY:F

    .line 367
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    .line 368
    iget-boolean v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    if-nez v10, :cond_2

    .line 369
    iput v7, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionX:F

    .line 370
    iput v8, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    goto :goto_1

    .line 376
    .end local v3    # "newPointerIndex":I
    .end local v4    # "pointId":I
    .end local v5    # "pointIndex":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_4
    iget v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    if-eq v10, v12, :cond_2

    .line 379
    iget v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 380
    .local v6, "pointerIndex":I
    if-ltz v6, :cond_2

    .line 383
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 384
    .restart local v7    # "x":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 385
    .restart local v8    # "y":F
    iget-boolean v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    if-nez v10, :cond_5

    .line 386
    iget v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mTouchSlop:I

    mul-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    .line 387
    iget v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionX:F

    sub-float v10, v7, v10

    iget v11, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    sub-float v11, v8, v11

    invoke-direct {p0, v10, v11}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->needIntercept(FF)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 388
    iget v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionX:F

    iput v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionX:F

    .line 389
    iget v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionY:F

    iput v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    .line 390
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->startDrag()V

    .line 391
    const-string v10, "VerticalSlipLayout"

    const-string v11, "onSlipStart"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_5
    :goto_2
    iget-boolean v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    if-eqz v10, :cond_6

    .line 399
    iget v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionY:F

    sub-float v10, v8, v10

    invoke-direct {p0, v10}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->translateTouchDistance(F)F

    move-result v10

    invoke-direct {p0, v10}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->performSlipBy(F)V

    .line 401
    :cond_6
    iput v7, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionX:F

    .line 402
    iput v8, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mLastMotionY:F

    goto/16 :goto_1

    .line 394
    :cond_7
    iput v12, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    goto :goto_2

    .line 406
    .end local v6    # "pointerIndex":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_5
    iget-boolean v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    if-eqz v10, :cond_8

    .line 407
    iget v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    if-eq v10, v12, :cond_9

    .line 408
    iget v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 409
    .restart local v6    # "pointerIndex":I
    if-ltz v6, :cond_2

    .line 412
    iget-object v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    iget v12, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMaximumVelocity:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 413
    iget-object v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v11, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    float-to-int v2, v10

    .line 414
    .local v2, "initialVelocity":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iget v11, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    sub-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->translateTouchDistance(F)F

    move-result v10

    invoke-direct {p0, v10, v2}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->calculateSlipTo(FI)I

    move-result v10

    invoke-direct {p0, v10, v2, v9}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->slipTo(IIZ)V

    .line 419
    .end local v2    # "initialVelocity":I
    .end local v6    # "pointerIndex":I
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->endDrag()V

    goto/16 :goto_1

    .line 416
    :cond_9
    invoke-virtual {p0, v9}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setUnSlipped(Z)V

    goto :goto_3

    .line 423
    :pswitch_6
    iget-boolean v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsBeingDragged:Z

    if-eqz v10, :cond_a

    .line 424
    iget v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    if-eq v10, v12, :cond_b

    .line 425
    iget v10, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 426
    .restart local v6    # "pointerIndex":I
    if-ltz v6, :cond_2

    .line 429
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iget v11, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mInitialMotionY:F

    sub-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->translateTouchDistance(F)F

    move-result v10

    invoke-direct {p0, v10, v3}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->calculateSlipTo(FI)I

    move-result v10

    invoke-direct {p0, v10, v3, v9}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->slipTo(IIZ)V

    .line 434
    .end local v6    # "pointerIndex":I
    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->endDrag()V

    goto/16 :goto_1

    .line 431
    :cond_b
    invoke-virtual {p0, v9}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setUnSlipped(Z)V

    goto :goto_4

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "dragEnable"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mDragEnable:Z

    .line 157
    return-void
.end method

.method public setFixedSideSlipDistance(I)V
    .locals 1
    .param p1, "fixedSideSlipDis"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mFixedSideSlipDis:I

    .line 129
    invoke-virtual {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isSlipped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setSlippedInternal(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public setOnSlipListener(Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mSlipListener:Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;

    .line 165
    return-void
.end method

.method public setSlipped(Z)V
    .locals 1
    .param p1, "smooth"    # Z

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->canSlip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isSlipped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setSlippedInternal(Z)V

    .line 593
    :cond_0
    return-void
.end method

.method public setSlippedWhenEnter(Z)V
    .locals 2
    .param p1, "slippedWhenEnter"    # Z

    .prologue
    .line 120
    iget v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mMinSlipY:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setSlipped(Z)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->mIsSlippedWhenEnter:Z

    goto :goto_0
.end method

.method public setUnSlipped(Z)V
    .locals 1
    .param p1, "smooth"    # Z

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->canSlip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isSlipped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setUnSlippedInternal(Z)V

    .line 579
    :cond_0
    return-void
.end method
