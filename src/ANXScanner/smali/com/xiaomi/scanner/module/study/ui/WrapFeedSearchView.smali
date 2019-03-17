.class public Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;
.super Landroid/widget/RelativeLayout;
.source "WrapFeedSearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$OnTouchListener;,
        Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$CheckTopDoneListener;
    }
.end annotation


# static fields
.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static final SCROLL_TIME:I = 0x3e8

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private isYDragging:Z

.field private mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

.field private mActivePointerId:I

.field private mBelow:Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

.field private mCheckListener:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$CheckTopDoneListener;

.field private mDensity:F

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mFlingThresholdVelocity:I

.field private mLastMotionYRemainder:F

.field private mLastY:F

.field private mMaximumVelocity:I

.field private mOnTouchListener:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$OnTouchListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mTopSpanHeight:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final sInterpolator:Landroid/view/animation/Interpolator;

.field private scrollRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "WrapFeedSearchView"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "defStyle"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/16 v1, 0xb4

    iput v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mTopSpanHeight:I

    .line 39
    new-instance v1, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$1;-><init>(Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 46
    new-instance v1, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$2;-><init>(Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->scrollRunnable:Ljava/lang/Runnable;

    .line 73
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 74
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mTouchSlop:I

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mMaximumVelocity:I

    .line 76
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mDensity:F

    .line 77
    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mFlingThresholdVelocity:I

    .line 79
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    .line 80
    new-instance v1, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

    invoke-direct {v1, p1}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mBelow:Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

    .line 81
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mBelow:Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v1, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    invoke-direct {v1, p1}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    .line 83
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;)Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 227
    return-void
.end method

.method private checkIsDragging(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 211
    iget v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mDownMotionX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v0, v2

    .line 212
    .local v0, "xDiff":I
    iget v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mDownMotionY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 213
    .local v1, "yDiff":I
    if-le v1, v0, :cond_0

    iget v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mTouchSlop:I

    if-le v1, v2, :cond_0

    .line 214
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->isYDragging:Z

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->isYDragging:Z

    goto :goto_0
.end method

.method private moveAboveView(F)V
    .locals 5
    .param p1, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 192
    iget v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mLastY:F

    iget v3, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mLastMotionYRemainder:F

    add-float/2addr v2, v3

    sub-float v0, v2, p1

    .line 194
    .local v0, "deltaY":F
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->getScrollY()I

    move-result v2

    float-to-int v3, v0

    add-int v1, v2, v3

    .line 195
    .local v1, "to":I
    if-lez v1, :cond_1

    .line 196
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    invoke-virtual {v2, v4, v4}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->scrollTo(II)V

    .line 207
    :cond_0
    :goto_0
    iput p1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mLastY:F

    .line 208
    return-void

    .line 199
    :cond_1
    iget v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mTopSpanHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    iget v3, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mTopSpanHeight:I

    neg-int v3, v3

    invoke-virtual {v2, v4, v3}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->scrollTo(II)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    float-to-int v3, v0

    invoke-virtual {v2, v4, v3}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->scrollBy(II)V

    .line 204
    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    iput v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mLastMotionYRemainder:F

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 271
    .local v2, "abs":I
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 272
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    neg-int v4, v2

    const/16 v5, 0x3e8

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 273
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->scrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mCheckListener:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$CheckTopDoneListener;

    if-nez v3, :cond_0

    .line 89
    sget-object v3, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "dispatchTouchEvent: no listener"

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 188
    :goto_0
    return v3

    .line 92
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 94
    .local v9, "action":I
    packed-switch v9, :pswitch_data_0

    .line 188
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 96
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 97
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mActivePointerId:I

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mLastY:F

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mDownMotionX:F

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mDownMotionY:F

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mOnTouchListener:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$OnTouchListener;

    if-eqz v3, :cond_1

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mOnTouchListener:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$OnTouchListener;

    invoke-interface {v3}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$OnTouchListener;->onTouch()V

    goto :goto_1

    .line 106
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 107
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 108
    .local v18, "y":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->isYDragging:Z

    if-eqz v3, :cond_5

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->moveAboveView(F)V

    .line 111
    const/4 v3, 0x1

    goto :goto_0

    .line 112
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mCheckListener:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$CheckTopDoneListener;

    invoke-interface {v3}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$CheckTopDoneListener;->checkTopDone()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->getScrollY()I

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mLastY:F

    cmpg-float v3, v18, v3

    if-gez v3, :cond_3

    .line 114
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mLastY:F

    .line 115
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 117
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->moveAboveView(F)V

    .line 118
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 121
    :cond_4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mLastY:F

    .line 122
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 125
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->checkIsDragging(FF)V

    .line 126
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mLastY:F

    .line 127
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 130
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->isYDragging:Z

    .line 131
    .local v11, "isYDraggingTemp":Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->isYDragging:Z

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 133
    .local v14, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v14, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 134
    move-object/from16 v0, p0

    iget v13, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mActivePointerId:I

    .line 135
    .local v13, "tempId":I
    invoke-virtual {v14, v13}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v16, v0

    .line 136
    .local v16, "velocityY":I
    invoke-virtual {v14, v13}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v15, v3

    .line 137
    .local v15, "velocityX":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mFlingThresholdVelocity:I

    if-le v3, v4, :cond_6

    .line 138
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_6

    const/4 v10, 0x1

    .line 139
    .local v10, "isFling":Z
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mTopSpanHeight:I

    .line 140
    .local v12, "temp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_a

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->getScrollY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 142
    .local v5, "abs":I
    if-eqz v10, :cond_8

    .line 143
    if-lez v16, :cond_7

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mBelow:Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->setChildrenEnabled(Z)V

    .line 145
    if-eqz v11, :cond_a

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v6, 0x0

    sub-int v7, v12, v5

    const/16 v8, 0x14d

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->scrollRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->post(Ljava/lang/Runnable;)Z

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mBelow:Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 150
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 138
    .end local v5    # "abs":I
    .end local v10    # "isFling":Z
    .end local v12    # "temp":I
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 153
    .restart local v5    # "abs":I
    .restart local v10    # "isFling":Z
    .restart local v12    # "temp":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mBelow:Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->setChildrenEnabled(Z)V

    .line 154
    if-eqz v5, :cond_a

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v6, 0x0

    neg-int v7, v5

    const/16 v8, 0x14d

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->scrollRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->post(Ljava/lang/Runnable;)Z

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mBelow:Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 159
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 163
    :cond_8
    mul-int/lit8 v3, v5, 0x2

    if-lt v3, v12, :cond_9

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mBelow:Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->setChildrenEnabled(Z)V

    .line 165
    if-eqz v11, :cond_a

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v6, 0x0

    sub-int v7, v12, v5

    const/16 v8, 0x1f4

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->scrollRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->post(Ljava/lang/Runnable;)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mBelow:Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 170
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 173
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mBelow:Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->setChildrenEnabled(Z)V

    .line 174
    if-eqz v5, :cond_a

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v6, 0x0

    neg-int v7, v5

    const/16 v8, 0x1f4

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->scrollRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->post(Ljava/lang/Runnable;)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mBelow:Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 179
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 184
    .end local v5    # "abs":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBackContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mBelow:Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->setContent(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method public setCheckListener(Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$CheckTopDoneListener;)V
    .locals 0
    .param p1, "checkListener"    # Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$CheckTopDoneListener;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mCheckListener:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$CheckTopDoneListener;

    .line 253
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->setContent(Landroid/view/View;)V

    .line 245
    return-void
.end method

.method public setOnTouchListener(Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$OnTouchListener;)V
    .locals 0
    .param p1, "touchListener"    # Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$OnTouchListener;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mOnTouchListener:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$OnTouchListener;

    .line 263
    return-void
.end method

.method public setTopSpanHeight(IZ)V
    .locals 3
    .param p1, "height"    # I
    .param p2, "showSpan"    # Z

    .prologue
    .line 237
    iput p1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mTopSpanHeight:I

    .line 238
    if-eqz p2, :cond_0

    .line 239
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->mAbove:Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;

    const/4 v1, 0x0

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->scrollTo(II)V

    .line 241
    :cond_0
    return-void
.end method
