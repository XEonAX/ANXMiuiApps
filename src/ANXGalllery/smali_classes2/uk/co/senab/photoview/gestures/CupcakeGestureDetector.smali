.class public Luk/co/senab/photoview/gestures/CupcakeGestureDetector;
.super Ljava/lang/Object;
.source "CupcakeGestureDetector.java"

# interfaces
.implements Luk/co/senab/photoview/gestures/GestureDetector;


# instance fields
.field protected mIsDragging:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field protected mListener:Luk/co/senab/photoview/gestures/OnGestureListener;

.field final mMinimumVelocity:F

.field final mTouchSlop:F

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 42
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mMinimumVelocity:F

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mTouchSlop:F

    .line 44
    return-void
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    return v0
.end method

.method public isScaling()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return v7

    .line 69
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 70
    iget-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_1

    .line 71
    iget-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 76
    :goto_1
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    .line 77
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    .line 78
    iput-boolean v6, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v8

    const-string v9, "CupcakeGestureDetector"

    const-string v10, "Velocity tracker is null"

    invoke-interface {v8, v9, v10}, Luk/co/senab/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 83
    :pswitch_1
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v4

    .line 84
    .local v4, "x":F
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v5

    .line 85
    .local v5, "y":F
    iget v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    sub-float v0, v4, v8

    .local v0, "dx":F
    iget v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    sub-float v1, v5, v8

    .line 87
    .local v1, "dy":F
    iget-boolean v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-nez v8, :cond_3

    .line 90
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iget v10, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mTouchSlop:F

    float-to-double v10, v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_2

    move v6, v7

    :cond_2
    iput-boolean v6, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    .line 93
    :cond_3
    iget-boolean v6, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-eqz v6, :cond_0

    .line 94
    iget-object v6, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mListener:Luk/co/senab/photoview/gestures/OnGestureListener;

    invoke-interface {v6, v0, v1}, Luk/co/senab/photoview/gestures/OnGestureListener;->onDrag(FF)V

    .line 95
    iput v4, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    .line 96
    iput v5, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    .line 98
    iget-object v6, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 99
    iget-object v6, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 107
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_2
    iget-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_4

    .line 108
    iget-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 109
    iput-object v13, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 111
    :cond_4
    iput-boolean v6, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    goto :goto_0

    .line 116
    :pswitch_3
    iget-boolean v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-eqz v8, :cond_5

    .line 117
    iget-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    .line 118
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    .line 119
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    .line 122
    iget-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 123
    iget-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 125
    iget-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .local v2, "vX":F
    iget-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 126
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 130
    .local v3, "vY":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mMinimumVelocity:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    .line 131
    iget-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mListener:Luk/co/senab/photoview/gestures/OnGestureListener;

    iget v9, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    iget v10, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    neg-float v11, v2

    neg-float v12, v3

    invoke-interface {v8, v9, v10, v11, v12}, Luk/co/senab/photoview/gestures/OnGestureListener;->onFling(FFFF)V

    .line 138
    .end local v2    # "vX":F
    .end local v3    # "vY":F
    :cond_5
    iget-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_6

    .line 139
    iget-object v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 140
    iput-object v13, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 142
    :cond_6
    iput-boolean v6, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    goto/16 :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnGestureListener(Luk/co/senab/photoview/gestures/OnGestureListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/photoview/gestures/OnGestureListener;

    .prologue
    .line 36
    iput-object p1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->mListener:Luk/co/senab/photoview/gestures/OnGestureListener;

    .line 37
    return-void
.end method
