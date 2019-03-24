.class public Lcom/miui/internal/widget/ActionBarMovableLayout;
.super Lcom/miui/internal/widget/ActionBarOverlayLayout;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SPRING_BACK_DURATION:I = 0x320

.field public static final STATE_DOWN:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UP:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final hJ:Z = false


# instance fields
.field private final fO:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private qM:Landroid/view/View;

.field private qN:Landroid/widget/OverScroller;

.field private qO:I

.field private qP:Z

.field private qQ:I

.field private qR:I

.field private final qS:I

.field private final qT:I

.field private qU:I

.field private qV:I

.field private qW:I

.field private qX:I

.field private qY:I

.field private qZ:Z

.field private ra:Z

.field private rb:Z

.field private rc:Landroid/view/VelocityTracker;

.field private rd:Lmiui/app/ActionBar$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/miui/internal/widget/ActionBarMovableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qR:I

    .line 61
    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qU:I

    .line 65
    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qW:I

    .line 69
    const/16 v1, 0x8

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qY:I

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->ra:Z

    .line 84
    sget-object v1, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout:[I

    sget v2, Lcom/miui/internal/R$attr;->actionBarMovableLayoutStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 87
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_0

    .line 88
    sget v1, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout_overScrollRange:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qV:I

    .line 92
    :cond_0
    sget v1, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout_scrollRange:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qU:I

    .line 93
    sget v1, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout_scrollStart:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qW:I

    .line 95
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->fO:I

    .line 98
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qN:Landroid/widget/OverScroller;

    .line 99
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qS:I

    .line 100
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qT:I

    .line 102
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarMovableLayout;->setOverScrollMode(I)V

    .line 104
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 627
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 628
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qO:I

    if-ne v1, v2, :cond_1

    .line 629
    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 630
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 631
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qO:I

    .line 632
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 633
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 636
    :cond_1
    return-void
.end method

.method private b(Landroid/view/View;II)Z
    .locals 6

    .line 389
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 390
    return v0

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 398
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qM:Landroid/view/View;

    if-ne p1, v5, :cond_1

    .line 399
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContainer;->getTop()I

    move-result p1

    .line 400
    add-int/2addr v1, p1

    .line 401
    add-int/2addr v3, p1

    .line 404
    :cond_1
    if-lt p3, v1, :cond_2

    if-ge p3, v3, :cond_2

    if-lt p2, v2, :cond_2

    if-ge p2, v4, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0
.end method

.method private be()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 409
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 413
    :goto_0
    return-void
.end method

.method private bf()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 417
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    .line 419
    :cond_0
    return-void
.end method

.method private bg()V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    .line 426
    :cond_0
    return-void
.end method

.method private bi()Z
    .locals 2

    .line 639
    nop

    .line 640
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->bh()V

    .line 641
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qM:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qM:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 643
    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qY:I

    if-eq v0, v1, :cond_0

    .line 644
    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qY:I

    .line 645
    const/4 v0, 0x1

    goto :goto_0

    .line 649
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected applyTranslationY(F)V
    .locals 1

    .line 606
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->motionToTranslation(F)F

    move-result p1

    .line 607
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 609
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->bh()V

    .line 610
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qM:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qM:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 613
    :cond_0
    return-void
.end method

.method bh()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qM:Landroid/view/View;

    .line 431
    return-void
.end method

.method public computeScroll()V
    .locals 12

    .line 275
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qN:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    .line 277
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qN:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 279
    if-eq v0, v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 281
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    .line 282
    const/4 v3, 0x0

    sub-int v4, v1, v0

    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/miui/internal/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->postInvalidateOnAnimation()V

    .line 286
    goto :goto_0

    .line 287
    :cond_1
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rb:Z

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->springBack()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rb:Z

    .line 292
    :cond_2
    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 483
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    return v0
.end method

.method protected computeVerticalVelocity()I
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    .line 493
    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qT:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 494
    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qO:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected fling(I)V
    .locals 11

    .line 502
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    .line 503
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 504
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qN:Landroid/widget/OverScroller;

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 505
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rb:Z

    .line 507
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->postInvalidate()V

    .line 508
    return-void
.end method

.method public getOverScrollDistance()I
    .locals 1

    .line 361
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qV:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getScrollRange()I
    .locals 1

    .line 369
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qU:I

    return v0
.end method

.method public getScrollStart()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qX:I

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mContentView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 437
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 439
    return-void

    .line 442
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 443
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 445
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingLeft()I

    move-result v1

    .line 446
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, p5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 445
    invoke-static {p2, v1, p3}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 447
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingTop()I

    move-result p3

    .line 448
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr p3, v1

    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p3, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v0

    .line 449
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v0

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qX:I

    sub-int/2addr p3, v0

    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 447
    invoke-static {p4, p3, p5}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getChildMeasureSpec(III)I

    move-result p3

    .line 451
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 452
    return-void
.end method

.method protected motionToTranslation(F)F
    .locals 1

    .line 595
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qV:I

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qU:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qX:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 597
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->bh()V

    .line 598
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qM:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qM:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 599
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qM:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 602
    :cond_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 110
    sget v0, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    return v1

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 117
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qP:Z

    if-eqz v2, :cond_1

    .line 118
    return v3

    .line 121
    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iput-boolean v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qP:Z

    .line 140
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->bf()V

    .line 141
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 142
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_0

    .line 153
    :pswitch_1
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qP:Z

    .line 154
    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qO:I

    .line 155
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->bg()V

    .line 156
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScrollEnd()V

    .line 158
    goto :goto_0

    .line 123
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 125
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qO:I

    .line 127
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->be()V

    .line 128
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 129
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qN:Landroid/widget/OverScroller;

    invoke-virtual {p1, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 135
    goto :goto_0

    .line 161
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->a(Landroid/view/MotionEvent;)V

    .line 166
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qP:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 456
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->onLayout(ZIIII)V

    .line 461
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qZ:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->bi()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 462
    :cond_1
    :goto_0
    move p1, p2

    :goto_1
    iget-boolean p3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qZ:Z

    if-nez p3, :cond_3

    .line 463
    iget p3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qW:I

    if-gez p3, :cond_2

    .line 464
    iget p3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qU:I

    iput p3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qW:I

    .line 467
    :cond_2
    iget p3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qW:I

    iput p3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    .line 468
    iput-boolean p2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qZ:Z

    .line 471
    :cond_3
    if-eqz p1, :cond_4

    .line 472
    iget p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 474
    :cond_4
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 331
    int-to-float p1, p2

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScroll(F)V

    .line 333
    iput p2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    .line 339
    iget p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    if-nez p1, :cond_0

    if-eqz p4, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result p1

    .line 342
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qS:I

    mul-int/lit8 p3, p3, 0x2

    if-le p2, p3, :cond_0

    .line 343
    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz p2, :cond_0

    .line 344
    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    neg-int p1, p1

    int-to-float p1, p1

    const p3, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p3

    const/16 p3, 0x1f4

    invoke-interface {p2, p1, p3}, Lmiui/app/ActionBar$OnScrollListener;->onFling(FI)V

    .line 348
    :cond_0
    return-void
.end method

.method protected onScroll(F)V
    .locals 3

    .line 579
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 581
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qR:I

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qU:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-interface {v0, v1, p1}, Lmiui/app/ActionBar$OnScrollListener;->onScroll(IF)V

    .line 584
    :cond_0
    return-void
.end method

.method protected onScrollBegin()V
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    invoke-interface {v0}, Lmiui/app/ActionBar$OnScrollListener;->onStartScroll()V

    .line 576
    :cond_0
    return-void
.end method

.method protected onScrollEnd()V
    .locals 1

    .line 587
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qR:I

    .line 589
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    invoke-interface {v0}, Lmiui/app/ActionBar$OnScrollListener;->onStopScroll()V

    .line 592
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v10, p0

    .line 171
    move-object/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->bf()V

    .line 172
    iget-object v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 175
    and-int/lit16 v0, v0, 0xff

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 264
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->a(Landroid/view/MotionEvent;)V

    .line 265
    iget v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qO:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    goto/16 :goto_1

    .line 257
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 258
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 259
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qO:I

    .line 261
    goto/16 :goto_1

    .line 187
    :pswitch_3
    iget-boolean v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qP:Z

    if-eqz v0, :cond_3

    .line 188
    iget v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qO:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 189
    if-ne v0, v13, :cond_0

    .line 190
    return v14

    .line 192
    :cond_0
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    .line 198
    iget v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 199
    sub-float v0, v15, v0

    float-to-int v2, v0

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v6

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v8

    .line 202
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Lcom/miui/internal/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 204
    iput v15, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 206
    if-eqz v0, :cond_2

    .line 207
    iget v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    if-nez v0, :cond_1

    .line 208
    iput-boolean v14, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qP:Z

    .line 209
    iput v13, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qO:I

    .line 211
    invoke-virtual {v11, v14}, Landroid/view/MotionEvent;->setAction(I)V

    .line 212
    invoke-virtual/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 214
    :cond_1
    iget-object v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 216
    :cond_2
    goto :goto_1

    .line 217
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    iput-boolean v12, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qP:Z

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->bf()V

    .line 220
    iget-object v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_1

    .line 229
    :pswitch_4
    iget-boolean v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qP:Z

    if-eqz v0, :cond_6

    .line 230
    iput-boolean v14, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qP:Z

    .line 231
    iput v13, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qO:I

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v0

    .line 239
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qS:I

    if-le v1, v2, :cond_4

    .line 240
    invoke-virtual {v10, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->fling(I)V

    goto :goto_0

    .line 242
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v9

    .line 243
    iget-object v3, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qN:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    iget v5, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->invalidate()V

    goto :goto_0

    .line 246
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->springBack()V

    .line 249
    :goto_0
    goto :goto_1

    .line 181
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 182
    invoke-virtual {v11, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->qO:I

    .line 184
    nop

    .line 270
    :cond_6
    :goto_1
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 0

    .line 300
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollMode()I

    move-result p1

    .line 301
    nop

    .line 302
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalScrollRange()I

    move-result p3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalScrollExtent()I

    move-result p5

    const/4 p7, 0x1

    const/4 p9, 0x0

    if-le p3, p5, :cond_0

    .line 303
    move p3, p7

    goto :goto_0

    .line 302
    :cond_0
    nop

    .line 303
    move p3, p9

    :goto_0
    if-eqz p1, :cond_2

    if-ne p1, p7, :cond_1

    if-eqz p3, :cond_1

    goto :goto_1

    .line 306
    :cond_1
    move p1, p9

    goto :goto_2

    .line 303
    :cond_2
    :goto_1
    nop

    .line 306
    move p1, p7

    :goto_2
    add-int/2addr p2, p4

    .line 307
    if-nez p1, :cond_3

    .line 308
    nop

    .line 312
    move p8, p9

    .line 313
    :cond_3
    add-int p1, p8, p6

    .line 315
    nop

    .line 316
    if-le p2, p1, :cond_4

    .line 317
    nop

    .line 318
    goto :goto_3

    .line 319
    :cond_4
    if-gez p2, :cond_5

    .line 320
    nop

    .line 321
    nop

    .line 324
    move p1, p9

    goto :goto_3

    :cond_5
    move p1, p2

    move p7, p9

    :goto_3
    invoke-virtual {p0, p9, p1, p9, p7}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onOverScrolled(IIZZ)V

    .line 326
    return p7
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 489
    return-void
.end method

.method public setInitialMotionY(I)V
    .locals 0

    .line 351
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qW:I

    .line 352
    return-void
.end method

.method public setMotionY(I)V
    .locals 0

    .line 653
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    .line 654
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScroll(F)V

    .line 655
    return-void
.end method

.method public setOnScrollListener(Lmiui/app/ActionBar$OnScrollListener;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    .line 374
    return-void
.end method

.method public setOverScrollDistance(I)V
    .locals 1

    .line 355
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_0

    .line 356
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qV:I

    .line 358
    :cond_0
    return-void
.end method

.method public setScrollRange(I)V
    .locals 0

    .line 365
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qU:I

    .line 366
    return-void
.end method

.method public setScrollStart(I)V
    .locals 0

    .line 377
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qX:I

    .line 378
    return-void
.end method

.method public setSpringBackEnabled(Z)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->ra:Z

    .line 386
    return-void
.end method

.method protected shouldStartScroll(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 511
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qO:I

    .line 512
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 513
    return v2

    .line 516
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 517
    if-ne v0, v1, :cond_1

    .line 518
    sget-object p1, Lcom/miui/internal/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    const-string v0, "invalid pointer index"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return v2

    .line 522
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 523
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 525
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 526
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 527
    iget v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionX:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 529
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mContentView:Landroid/view/View;

    float-to-int v6, v1

    float-to-int v7, p1

    invoke-direct {p0, v5, v6, v7}, Lcom/miui/internal/widget/ActionBarMovableLayout;->b(Landroid/view/View;II)Z

    move-result v5

    .line 530
    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qM:Landroid/view/View;

    invoke-direct {p0, v8, v6, v7}, Lcom/miui/internal/widget/ActionBarMovableLayout;->b(Landroid/view/View;II)Z

    move-result v6

    .line 532
    const/4 v7, 0x1

    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_0

    .line 534
    :cond_2
    move v5, v2

    goto :goto_1

    .line 532
    :cond_3
    :goto_0
    nop

    .line 534
    move v5, v7

    .line 535
    :goto_1
    if-eqz v5, :cond_7

    .line 536
    iget v5, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->fO:I

    if-le v3, v5, :cond_7

    if-le v3, v4, :cond_7

    .line 537
    nop

    .line 538
    iget v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    if-nez v3, :cond_5

    .line 539
    if-gez v0, :cond_4

    .line 540
    goto :goto_2

    .line 542
    :cond_4
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    invoke-interface {v3}, Lmiui/app/ActionBar$OnScrollListener;->onContentScrolled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 543
    goto :goto_2

    .line 546
    :cond_5
    if-lez v0, :cond_6

    iget v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v4

    if-lt v3, v4, :cond_6

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->rd:Lmiui/app/ActionBar$OnScrollListener;

    .line 547
    invoke-interface {v3}, Lmiui/app/ActionBar$OnScrollListener;->onContentScrolled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 548
    goto :goto_2

    .line 553
    :cond_6
    move v3, v7

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v3, :cond_9

    .line 554
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 555
    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 557
    if-lez v0, :cond_8

    move v2, v7

    nop

    :cond_8
    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qR:I

    .line 559
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 560
    if-eqz p1, :cond_9

    .line 561
    invoke-interface {p1, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 569
    :cond_9
    return v3
.end method

.method protected springBack()V
    .locals 7

    .line 616
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->ra:Z

    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    .line 618
    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    div-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    sub-int/2addr v0, v1

    .line 619
    :goto_0
    move v5, v0

    goto :goto_1

    .line 618
    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    neg-int v0, v0

    goto :goto_0

    .line 619
    :goto_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qN:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->qQ:I

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 620
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->postInvalidateOnAnimation()V

    .line 622
    :cond_1
    return-void
.end method
