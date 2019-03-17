.class public Lcom/xiaomi/scanner/module/study/ui/WrapWebView;
.super Landroid/widget/RelativeLayout;
.source "WrapWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/study/ui/WrapWebView$CheckBottomDoneListener;
    }
.end annotation


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private above:Landroid/widget/FrameLayout;

.field private below:Landroid/widget/FrameLayout;

.field private checkListener:Lcom/xiaomi/scanner/module/study/ui/WrapWebView$CheckBottomDoneListener;

.field private mDownMotionY:F

.field private mIsDragging:Z

.field private mLastMotionXRemainder:F

.field private mLastY:F

.field private mScroller:Landroid/widget/Scroller;

.field private mTitleTop:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private scrollRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView$1;

    invoke-direct {v0}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView$1;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/16 v1, 0x5a

    iput v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mTitleTop:I

    .line 36
    new-instance v1, Lcom/xiaomi/scanner/module/study/ui/WrapWebView$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView$2;-><init>(Lcom/xiaomi/scanner/module/study/ui/WrapWebView;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->scrollRunnable:Ljava/lang/Runnable;

    .line 68
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 69
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mScroller:Landroid/widget/Scroller;

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mTouchSlop:I

    .line 71
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->below:Landroid/widget/FrameLayout;

    .line 72
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->below:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->below:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    .line 75
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/study/ui/WrapWebView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/ui/WrapWebView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/module/study/ui/WrapWebView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/ui/WrapWebView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 173
    return-void
.end method

.method private checkIsDragging(F)V
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 144
    iget v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mDownMotionY:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v0, v1

    .line 145
    .local v0, "yDiff":I
    iget v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mTouchSlop:I

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mIsDragging:Z

    .line 146
    return-void

    .line 145
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveAboveView(F)V
    .locals 5
    .param p1, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 149
    iget v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mLastY:F

    iget v3, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mLastMotionXRemainder:F

    add-float/2addr v2, v3

    sub-float v0, v2, p1

    .line 150
    .local v0, "deltaY":F
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    float-to-int v3, v0

    add-int v1, v2, v3

    .line 151
    .local v1, "to":I
    if-gez v1, :cond_1

    .line 152
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4, v4}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 163
    :cond_0
    :goto_0
    iput p1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mLastY:F

    .line 164
    return-void

    .line 155
    :cond_1
    iget v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mTitleTop:I

    if-le v1, v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mTitleTop:I

    invoke-virtual {v2, v4, v3}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    float-to-int v3, v0

    invoke-virtual {v2, v4, v3}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 160
    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    iput v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mLastMotionXRemainder:F

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAboveViewMove()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->checkListener:Lcom/xiaomi/scanner/module/study/ui/WrapWebView$CheckBottomDoneListener;

    if-nez v2, :cond_0

    .line 88
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 140
    :goto_0
    return v0

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 92
    .local v6, "action":I
    packed-switch v6, :pswitch_data_0

    .line 140
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 94
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mLastY:F

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mDownMotionY:F

    goto :goto_1

    .line 98
    :pswitch_1
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->below:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->below:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 102
    .local v7, "y":F
    iget-boolean v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mIsDragging:Z

    if-eqz v1, :cond_5

    .line 103
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-direct {p0, v7}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->moveAboveView(F)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->checkListener:Lcom/xiaomi/scanner/module/study/ui/WrapWebView$CheckBottomDoneListener;

    invoke-interface {v1}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView$CheckBottomDoneListener;->checkBottomDone()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mLastY:F

    cmpl-float v1, v7, v1

    if-lez v1, :cond_3

    .line 109
    iput v7, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mLastY:F

    .line 110
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 113
    :cond_3
    invoke-direct {p0, v7}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->moveAboveView(F)V

    goto :goto_0

    .line 117
    :cond_4
    iput v7, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mLastY:F

    .line 118
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 121
    :cond_5
    invoke-direct {p0, v7}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->checkIsDragging(F)V

    .line 122
    iput v7, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mLastY:F

    .line 123
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 126
    .end local v7    # "y":F
    :pswitch_2
    iput-boolean v1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mIsDragging:Z

    .line 127
    iput v3, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mLastY:F

    .line 128
    iput v3, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mDownMotionY:F

    .line 129
    iput v3, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mLastMotionXRemainder:F

    .line 130
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_6

    .line 132
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 133
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mScroller:Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    neg-int v4, v3

    const/16 v5, 0x12c

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 134
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->scrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->post(Ljava/lang/Runnable;)Z

    .line 136
    :cond_6
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 83
    return-void
.end method

.method public setBackContent(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->below:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->below:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->below:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    return-void
.end method

.method public setBottomHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->mTitleTop:I

    .line 184
    return-void
.end method

.method public setCheckListener(Lcom/xiaomi/scanner/module/study/ui/WrapWebView$CheckBottomDoneListener;)V
    .locals 0
    .param p1, "checkListener"    # Lcom/xiaomi/scanner/module/study/ui/WrapWebView$CheckBottomDoneListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->checkListener:Lcom/xiaomi/scanner/module/study/ui/WrapWebView$CheckBottomDoneListener;

    .line 52
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 187
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/WrapWebView;->above:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    return-void
.end method
