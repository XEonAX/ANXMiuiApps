.class public Lcom/miui/gallery/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/view/GestureDetector$GestureHandler;,
        Lcom/miui/gallery/view/GestureDetector$SimpleOnGestureListener;,
        Lcom/miui/gallery/view/GestureDetector$OnContextClickListener;,
        Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;,
        Lcom/miui/gallery/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mContextClickListener:Lcom/miui/gallery/view/GestureDetector$OnContextClickListener;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreNextUpEvent:Z

.field private mInContextClick:Z

.field private mInLongPress:Z

.field private mIsDoubleTapEnabled:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/miui/gallery/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 218
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/miui/gallery/view/GestureDetector;->TAP_TIMEOUT:I

    .line 219
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/miui/gallery/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/view/GestureDetector;-><init>(Landroid/content/Context;Lcom/miui/gallery/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 357
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/miui/gallery/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    if-eqz p3, :cond_2

    .line 373
    new-instance v0, Lcom/miui/gallery/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Lcom/miui/gallery/view/GestureDetector$GestureHandler;-><init>(Lcom/miui/gallery/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 377
    :goto_0
    iput-object p2, p0, Lcom/miui/gallery/view/GestureDetector;->mListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

    .line 378
    instance-of v0, p2, Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 379
    check-cast v0, Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/GestureDetector;->setOnDoubleTapListener(Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;)V

    .line 381
    :cond_0
    instance-of v0, p2, Lcom/miui/gallery/view/GestureDetector$OnContextClickListener;

    if-eqz v0, :cond_1

    .line 382
    check-cast p2, Lcom/miui/gallery/view/GestureDetector$OnContextClickListener;

    .end local p2    # "listener":Lcom/miui/gallery/view/GestureDetector$OnGestureListener;
    invoke-virtual {p0, p2}, Lcom/miui/gallery/view/GestureDetector;->setContextClickListener(Lcom/miui/gallery/view/GestureDetector$OnContextClickListener;)V

    .line 384
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/view/GestureDetector;->init(Landroid/content/Context;)V

    .line 385
    return-void

    .line 375
    .restart local p2    # "listener":Lcom/miui/gallery/view/GestureDetector$OnGestureListener;
    :cond_2
    new-instance v0, Lcom/miui/gallery/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Lcom/miui/gallery/view/GestureDetector$GestureHandler;-><init>(Lcom/miui/gallery/view/GestureDetector;)V

    iput-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/gallery/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/GestureDetector;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/view/GestureDetector;)Lcom/miui/gallery/view/GestureDetector$OnGestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/GestureDetector;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/view/GestureDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/view/GestureDetector;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/view/GestureDetector;)Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/GestureDetector;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapListener:Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/view/GestureDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/GestureDetector;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/miui/gallery/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/view/GestureDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/view/GestureDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/miui/gallery/view/GestureDetector;->mDeferConfirmSingleTap:Z

    return p1
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 720
    iget-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 721
    iget-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 722
    iget-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 723
    iget-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 725
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mIsDoubleTapping:Z

    .line 726
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mStillDown:Z

    .line 727
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 728
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 729
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 730
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mInLongPress:Z

    .line 731
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mInContextClick:Z

    .line 732
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 733
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 736
    iget-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 737
    iget-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 738
    iget-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 739
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mIsDoubleTapping:Z

    .line 740
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 741
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 742
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 743
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mInLongPress:Z

    .line 744
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mInContextClick:Z

    .line 745
    iput-boolean v2, p0, Lcom/miui/gallery/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 746
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/view/GestureDetector;->mInLongPress:Z

    .line 774
    iget-object v0, p0, Lcom/miui/gallery/view/GestureDetector;->mListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/miui/gallery/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 775
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 406
    iget-object v4, p0, Lcom/miui/gallery/view/GestureDetector;->mListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

    if-nez v4, :cond_0

    .line 407
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "OnGestureListener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 409
    :cond_0
    iput-boolean v5, p0, Lcom/miui/gallery/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 412
    iput-boolean v5, p0, Lcom/miui/gallery/view/GestureDetector;->mIsDoubleTapEnabled:Z

    .line 417
    if-nez p1, :cond_1

    .line 419
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    .line 420
    .local v3, "touchSlop":I
    move v2, v3

    .line 422
    .local v2, "doubleTapTouchSlop":I
    const/16 v1, 0x64

    .line 425
    .local v1, "doubleTapSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 426
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 437
    :goto_0
    mul-int v4, v3, v3

    iput v4, p0, Lcom/miui/gallery/view/GestureDetector;->mTouchSlopSquare:I

    .line 438
    mul-int v4, v2, v2

    iput v4, p0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 439
    mul-int v4, v1, v1

    iput v4, p0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 440
    return-void

    .line 428
    .end local v1    # "doubleTapSlop":I
    .end local v2    # "doubleTapTouchSlop":I
    .end local v3    # "touchSlop":I
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 429
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 431
    .restart local v3    # "touchSlop":I
    move v2, v3

    .line 433
    .restart local v2    # "doubleTapTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 434
    .restart local v1    # "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 435
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 751
    iget-boolean v5, p0, Lcom/miui/gallery/view/GestureDetector;->mIsDoubleTapEnabled:Z

    if-nez v5, :cond_1

    .line 767
    :cond_0
    :goto_0
    return v4

    .line 756
    :cond_1
    iget-boolean v5, p0, Lcom/miui/gallery/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-eqz v5, :cond_0

    .line 760
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 761
    .local v0, "deltaTime":J
    sget v5, Lcom/miui/gallery/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-gtz v5, :cond_0

    const-wide/16 v6, 0x28

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    .line 765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int v2, v5, v6

    .line 766
    .local v2, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v3, v5, v6

    .line 767
    .local v3, "deltaY":I
    mul-int v5, v2, v2

    mul-int v6, v3, v3

    add-int/2addr v5, v6

    iget v6, p0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v5, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 42
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 498
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 500
    .local v6, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    if-nez v36, :cond_0

    .line 501
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 503
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 505
    and-int/lit16 v0, v6, 0xff

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    const/16 v22, 0x1

    .line 507
    .local v22, "pointerUp":Z
    :goto_0
    if-eqz v22, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v25

    .line 510
    .local v25, "skipIndex":I
    :goto_1
    const/16 v26, 0x0

    .local v26, "sumX":F
    const/16 v27, 0x0

    .line 511
    .local v27, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 512
    .local v7, "count":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v7, :cond_4

    .line 513
    move/from16 v0, v25

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 512
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 505
    .end local v7    # "count":I
    .end local v18    # "i":I
    .end local v22    # "pointerUp":Z
    .end local v25    # "skipIndex":I
    .end local v26    # "sumX":F
    .end local v27    # "sumY":F
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 507
    .restart local v22    # "pointerUp":Z
    :cond_2
    const/16 v25, -0x1

    goto :goto_1

    .line 514
    .restart local v7    # "count":I
    .restart local v18    # "i":I
    .restart local v25    # "skipIndex":I
    .restart local v26    # "sumX":F
    .restart local v27    # "sumY":F
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v36

    add-float v26, v26, v36

    .line 515
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v36

    add-float v27, v27, v36

    goto :goto_3

    .line 517
    :cond_4
    if-eqz v22, :cond_6

    add-int/lit8 v12, v7, -0x1

    .line 518
    .local v12, "div":I
    :goto_4
    int-to-float v0, v12

    move/from16 v36, v0

    div-float v14, v26, v36

    .line 519
    .local v14, "focusX":F
    int-to-float v0, v12

    move/from16 v36, v0

    div-float v15, v27, v36

    .line 521
    .local v15, "focusY":F
    const/16 v17, 0x0

    .line 523
    .local v17, "handled":Z
    and-int/lit16 v0, v6, 0xff

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_0

    .line 679
    :cond_5
    :goto_5
    :pswitch_0
    return v17

    .end local v12    # "div":I
    .end local v14    # "focusX":F
    .end local v15    # "focusY":F
    .end local v17    # "handled":Z
    :cond_6
    move v12, v7

    .line 517
    goto :goto_4

    .line 525
    .restart local v12    # "div":I
    .restart local v14    # "focusX":F
    .restart local v15    # "focusY":F
    .restart local v17    # "handled":Z
    :pswitch_1
    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/view/GestureDetector;->mDownFocusX:F

    .line 526
    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/view/GestureDetector;->mDownFocusY:F

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/view/GestureDetector;->cancelTaps()V

    goto :goto_5

    .line 532
    :pswitch_2
    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/view/GestureDetector;->mDownFocusX:F

    .line 533
    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/view/GestureDetector;->mDownFocusY:F

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    const/16 v37, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    .line 539
    .local v28, "upIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 540
    .local v19, "id1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v33

    .line 541
    .local v33, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v35

    .line 542
    .local v35, "y1":F
    const/16 v18, 0x0

    :goto_6
    move/from16 v0, v18

    if-ge v0, v7, :cond_5

    .line 543
    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 542
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 545
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 546
    .local v20, "id2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v36

    mul-float v32, v33, v36

    .line 547
    .local v32, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v36

    mul-float v34, v35, v36

    .line 549
    .local v34, "y":F
    add-float v13, v32, v34

    .line 550
    .local v13, "dot":F
    const/16 v36, 0x0

    cmpg-float v36, v13, v36

    if-gez v36, :cond_7

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_5

    .line 558
    .end local v13    # "dot":F
    .end local v19    # "id1":I
    .end local v20    # "id2":I
    .end local v28    # "upIndex":I
    .end local v32    # "x":F
    .end local v33    # "x1":F
    .end local v34    # "y":F
    .end local v35    # "y1":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapListener:Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    if-eqz v36, :cond_a

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v16

    .line 560
    .local v16, "hadTapMessage":Z
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_d

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    .line 562
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 564
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mIsDoubleTapping:Z

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapListener:Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapListener:Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 575
    .end local v16    # "hadTapMessage":Z
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/view/GestureDetector;->mDownFocusX:F

    .line 576
    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/view/GestureDetector;->mDownFocusY:F

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_b

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    .line 580
    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 581
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 582
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 583
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mStillDown:Z

    .line 584
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mInLongPress:Z

    .line 585
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 587
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/view/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v36, v0

    if-eqz v36, :cond_c

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v38

    sget v40, Lcom/miui/gallery/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    sget v40, Lcom/miui/gallery/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 592
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v38

    sget v40, Lcom/miui/gallery/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/miui/gallery/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 594
    goto/16 :goto_5

    .line 571
    .restart local v16    # "hadTapMessage":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    sget v38, Lcom/miui/gallery/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 597
    .end local v16    # "hadTapMessage":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/view/GestureDetector;->mInLongPress:Z

    move/from16 v36, v0

    if-nez v36, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/view/GestureDetector;->mInContextClick:Z

    move/from16 v36, v0

    if-nez v36, :cond_5

    .line 600
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/view/GestureDetector;->mLastFocusX:F

    move/from16 v36, v0

    sub-float v23, v36, v14

    .line 601
    .local v23, "scrollX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/view/GestureDetector;->mLastFocusY:F

    move/from16 v36, v0

    sub-float v24, v36, v15

    .line 602
    .local v24, "scrollY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapListener:Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    goto/16 :goto_5

    .line 605
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v36, v0

    if-eqz v36, :cond_10

    .line 606
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/view/GestureDetector;->mDownFocusX:F

    move/from16 v36, v0

    sub-float v36, v14, v36

    move/from16 v0, v36

    float-to-int v9, v0

    .line 607
    .local v9, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/view/GestureDetector;->mDownFocusY:F

    move/from16 v36, v0

    sub-float v36, v15, v36

    move/from16 v0, v36

    float-to-int v10, v0

    .line 608
    .local v10, "deltaY":I
    mul-int v36, v9, v9

    mul-int v37, v10, v10

    add-int v11, v36, v37

    .line 609
    .local v11, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/view/GestureDetector;->mTouchSlopSquare:I

    move/from16 v36, v0

    move/from16 v0, v36

    if-le v11, v0, :cond_f

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/gallery/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    .line 611
    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/view/GestureDetector;->mLastFocusX:F

    .line 612
    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/view/GestureDetector;->mLastFocusY:F

    .line 613
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 618
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    move/from16 v36, v0

    move/from16 v0, v36

    if-le v11, v0, :cond_5

    .line 619
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_5

    .line 621
    .end local v9    # "deltaX":I
    .end local v10    # "deltaY":I
    .end local v11    # "distance":I
    :cond_10
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v36

    const/high16 v37, 0x3f800000    # 1.0f

    cmpl-float v36, v36, v37

    if-gez v36, :cond_11

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v36

    const/high16 v37, 0x3f800000    # 1.0f

    cmpl-float v36, v36, v37

    if-ltz v36, :cond_5

    .line 622
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/gallery/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    .line 623
    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/gallery/view/GestureDetector;->mLastFocusX:F

    .line 624
    move-object/from16 v0, p0

    iput v15, v0, Lcom/miui/gallery/view/GestureDetector;->mLastFocusY:F

    goto/16 :goto_5

    .line 629
    .end local v23    # "scrollX":F
    .end local v24    # "scrollY":F
    :pswitch_5
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mStillDown:Z

    .line 630
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 631
    .local v8, "currentUpEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v36, v0

    if-eqz v36, :cond_15

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapListener:Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 656
    :cond_12
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_13

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    .line 660
    :cond_13
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/miui/gallery/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    if-eqz v36, :cond_14

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->recycle()V

    .line 665
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 667
    :cond_14
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mIsDoubleTapping:Z

    .line 668
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 669
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_5

    .line 634
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/view/GestureDetector;->mInLongPress:Z

    move/from16 v36, v0

    if-eqz v36, :cond_16

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/view/GestureDetector;->mInLongPress:Z

    goto :goto_8

    .line 637
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v36, v0

    if-eqz v36, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/view/GestureDetector;->mIgnoreNextUpEvent:Z

    move/from16 v36, v0

    if-nez v36, :cond_17

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/miui/gallery/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 639
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/view/GestureDetector;->mDeferConfirmSingleTap:Z

    move/from16 v36, v0

    if-eqz v36, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapListener:Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    if-eqz v36, :cond_12

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapListener:Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto/16 :goto_8

    .line 642
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/view/GestureDetector;->mIgnoreNextUpEvent:Z

    move/from16 v36, v0

    if-nez v36, :cond_12

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    .line 646
    .local v29, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    .line 647
    .local v21, "pointerId":I
    const/16 v36, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v29

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 648
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v31

    .line 649
    .local v31, "velocityY":F
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v30

    .line 651
    .local v30, "velocityX":F
    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    cmpl-float v36, v36, v37

    if-gtz v36, :cond_18

    .line 652
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_12

    .line 653
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mListener:Lcom/miui/gallery/view/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/gallery/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    goto/16 :goto_8

    .line 675
    .end local v8    # "currentUpEvent":Landroid/view/MotionEvent;
    .end local v21    # "pointerId":I
    .end local v29    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v30    # "velocityX":F
    .end local v31    # "velocityY":F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/view/GestureDetector;->cancel()V

    goto/16 :goto_5

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setContextClickListener(Lcom/miui/gallery/view/GestureDetector$OnContextClickListener;)V
    .locals 0
    .param p1, "onContextClickListener"    # Lcom/miui/gallery/view/GestureDetector$OnContextClickListener;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/miui/gallery/view/GestureDetector;->mContextClickListener:Lcom/miui/gallery/view/GestureDetector$OnContextClickListener;

    .line 461
    return-void
.end method

.method public setIsDoubleTapEnabled(Z)V
    .locals 0
    .param p1, "isDoubleTapEnabled"    # Z

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/miui/gallery/view/GestureDetector;->mIsDoubleTapEnabled:Z

    .line 479
    return-void
.end method

.method public setOnDoubleTapListener(Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/miui/gallery/view/GestureDetector;->mDoubleTapListener:Lcom/miui/gallery/view/GestureDetector$OnDoubleTapListener;

    .line 451
    return-void
.end method
