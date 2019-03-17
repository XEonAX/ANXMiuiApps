.class public Luk/co/senab/photoview/gestures/RotateGestureDetector;
.super Ljava/lang/Object;
.source "RotateGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private isInProgress:Z

.field private mDegrees:F

.field private mDistanceDiffLimit:D

.field private mFirstPointerID:I

.field private mFirstPointerLastX:F

.field private mFirstPointerLastY:F

.field private mFocusX:F

.field private mFocusY:F

.field private mIsBeingRotated:Z

.field private mIsClockwise:Z

.field private mListener:Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;

.field private mMaxVelocity:I

.field private mMinVelocity:I

.field private mPointersLastDistance:D

.field private mRotateSlop:F

.field private mSecondPointerID:I

.field private mSecondPointerLastX:F

.field private mSecondPointerLastY:F

.field private mTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "RotateGestureDetector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;

    .prologue
    const/4 v4, -0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mRotateSlop:F

    .line 39
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    iput-wide v2, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mDistanceDiffLimit:D

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mIsBeingRotated:Z

    .line 56
    iput-object p2, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mListener:Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;

    .line 57
    iput v4, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerID:I

    .line 58
    iput v4, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerID:I

    .line 59
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 60
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mMinVelocity:I

    .line 61
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mMaxVelocity:I

    .line 62
    return-void
.end method

.method private calculateDegrees(FF)F
    .locals 4
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    .line 214
    invoke-direct {p0, p2}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->clipAngle(F)F

    move-result v1

    invoke-direct {p0, p1}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->clipAngle(F)F

    move-result v2

    sub-float v0, v1, v2

    .line 215
    .local v0, "delta":F
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 216
    add-float/2addr v0, v3

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 218
    sub-float/2addr v0, v3

    goto :goto_0
.end method

.method private calculateDegrees(FFFFFFFF)F
    .locals 6
    .param p1, "p1StartX"    # F
    .param p2, "p1StartY"    # F
    .param p3, "p2StartX"    # F
    .param p4, "p2StartY"    # F
    .param p5, "p1EndX"    # F
    .param p6, "p1EndY"    # F
    .param p7, "p2EndX"    # F
    .param p8, "p2EndY"    # F

    .prologue
    .line 233
    sub-float v2, p4, p2

    float-to-double v2, v2

    sub-float v4, p3, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 234
    .local v0, "from":F
    sub-float v2, p8, p6

    float-to-double v2, v2

    sub-float v4, p7, p5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 236
    .local v1, "to":F
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-direct {p0, v2, v3}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->calculateDegrees(FF)F

    move-result v2

    return v2
.end method

.method private calculateDistance(DDDD)D
    .locals 7
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 228
    sub-double v0, p1, p5

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v2, p3, p7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private callRotateEnd()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 190
    iget-boolean v7, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->isInProgress:Z

    if-eqz v7, :cond_1

    .line 191
    iput-boolean v12, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->isInProgress:Z

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "velocity":F
    iget-object v7, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mMaxVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 194
    iget-object v7, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mTracker:Landroid/view/VelocityTracker;

    iget v8, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerID:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 195
    .local v3, "x1":F
    iget-object v7, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mTracker:Landroid/view/VelocityTracker;

    iget v8, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerID:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 196
    .local v4, "x2":F
    iget-object v7, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mTracker:Landroid/view/VelocityTracker;

    iget v8, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerID:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 197
    .local v5, "y1":F
    iget-object v7, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mTracker:Landroid/view/VelocityTracker;

    iget v8, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerID:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 198
    .local v6, "y2":F
    sub-float v0, v4, v3

    .line 199
    .local v0, "deltaX":F
    sub-float v1, v6, v5

    .line 200
    .local v1, "deltaY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    move v2, v0

    .line 201
    :goto_0
    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    .line 202
    sget-boolean v7, Luk/co/senab/photoview/gestures/RotateGestureDetector;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 203
    const-string v7, "RotateGestureDetector"

    const-string v8, "x1 %s, x1 %s, y1 %s, y2 %s, deltaX %s, deltaY %s, clockwise %s"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v12

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget-boolean v11, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mIsClockwise:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-object v7, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mListener:Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;

    if-eqz v7, :cond_1

    .line 206
    iget-object v7, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mListener:Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;

    iget-boolean v8, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mIsClockwise:Z

    invoke-interface {v7, p0, v8, v2}, Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;->onRotateEnd(Luk/co/senab/photoview/gestures/RotateGestureDetector;ZF)V

    .line 209
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "velocity":F
    .end local v3    # "x1":F
    .end local v4    # "x2":F
    .end local v5    # "y1":F
    .end local v6    # "y2":F
    :cond_1
    iput-boolean v12, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mIsBeingRotated:Z

    .line 210
    invoke-direct {p0}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->releaseTracker()V

    .line 211
    return-void

    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    .restart local v2    # "velocity":F
    .restart local v3    # "x1":F
    .restart local v4    # "x2":F
    .restart local v5    # "y1":F
    .restart local v6    # "y2":F
    :cond_2
    move v2, v1

    .line 200
    goto :goto_0
.end method

.method private checkPointerIndex(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 78
    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clipAngle(F)F
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 224
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    return v0
.end method

.method private ensureTracker()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mTracker:Landroid/view/VelocityTracker;

    .line 68
    :cond_0
    return-void
.end method

.method private releaseTracker()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mTracker:Landroid/view/VelocityTracker;

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public getFocusX()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFocusY:F

    return v0
.end method

.method public getRotateDegrees()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mDegrees:F

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->isInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->ensureTracker()V

    .line 83
    move-object/from16 v0, p0

    iget-object v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    return v4

    .line 87
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastX:F

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastY:F

    .line 89
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerID:I

    .line 90
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mDegrees:F

    .line 91
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->callRotateEnd()V

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    .line 95
    .local v21, "pointIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastX:F

    .line 96
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastY:F

    .line 97
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerID:I

    .line 98
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mDegrees:F

    .line 99
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->callRotateEnd()V

    .line 100
    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastX:F

    float-to-double v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastY:F

    float-to-double v8, v4

    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastX:F

    float-to-double v10, v4

    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastY:F

    float-to-double v12, v4

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->calculateDistance(DDDD)D

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mPointersLastDistance:D

    goto :goto_0

    .line 103
    .end local v21    # "pointIndex":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerID:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerID:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 104
    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerID:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 105
    .local v15, "p1Index":I
    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerID:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    .line 106
    .local v18, "p2Index":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->checkPointerIndex(Landroid/view/MotionEvent;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->checkPointerIndex(Landroid/view/MotionEvent;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 107
    :cond_1
    const-string v4, "RotateGestureDetector"

    const-string v5, "illegal pointer index, count[%s], pointer1[%s], pointer2[%s]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 110
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 111
    .local v16, "p1X":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    .line 112
    .local v17, "p1Y":F
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .line 113
    .local v19, "p2X":F
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    .line 114
    .local v20, "p2Y":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mIsBeingRotated:Z

    if-nez v4, :cond_4

    .line 115
    move/from16 v0, v16

    float-to-double v6, v0

    move/from16 v0, v17

    float-to-double v8, v0

    move/from16 v0, v19

    float-to-double v10, v0

    move/from16 v0, v20

    float-to-double v12, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->calculateDistance(DDDD)D

    move-result-wide v22

    .line 116
    .local v22, "pointerDistance":D
    sget-boolean v4, Luk/co/senab/photoview/gestures/RotateGestureDetector;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 117
    const-string v4, "RotateGestureDetector"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "distance old %s, distance new %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mPointersLastDistance:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mPointersLastDistance:D

    sub-double v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mDistanceDiffLimit:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_8

    .line 121
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastX:F

    .line 122
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastY:F

    .line 123
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastX:F

    .line 124
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastY:F

    .line 125
    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastX:F

    float-to-double v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastY:F

    float-to-double v8, v4

    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastX:F

    float-to-double v10, v4

    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastY:F

    float-to-double v12, v4

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->calculateDistance(DDDD)D

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mPointersLastDistance:D

    .line 141
    .end local v22    # "pointerDistance":D
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mIsBeingRotated:Z

    if-eqz v4, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget v5, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastX:F

    move-object/from16 v0, p0

    iget v6, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastY:F

    move-object/from16 v0, p0

    iget v7, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastX:F

    move-object/from16 v0, p0

    iget v8, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastY:F

    move-object/from16 v4, p0

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v19

    move/from16 v12, v20

    invoke-direct/range {v4 .. v12}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->calculateDegrees(FFFFFFFF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mDegrees:F

    .line 143
    add-float v4, v16, v19

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFocusX:F

    .line 144
    add-float v4, v17, v20

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFocusY:F

    .line 145
    sget-boolean v4, Luk/co/senab/photoview/gestures/RotateGestureDetector;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 146
    const-string v4, "RotateGestureDetector"

    const-string v5, "degrees %s, focusX %s, focusY %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mDegrees:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFocusX:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFocusY:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mDegrees:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 150
    move-object/from16 v0, p0

    iget v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mDegrees:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mIsClockwise:Z

    .line 153
    :cond_6
    const/16 v24, 0x1

    .line 155
    .local v24, "updatePre":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mListener:Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;

    if-eqz v4, :cond_7

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mListener:Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;->onRotate(Luk/co/senab/photoview/gestures/RotateGestureDetector;)Z

    move-result v24

    .line 159
    :cond_7
    if-eqz v24, :cond_0

    .line 160
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastX:F

    .line 161
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastY:F

    .line 162
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastX:F

    .line 163
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastY:F

    goto/16 :goto_0

    .line 127
    .end local v24    # "updatePre":Z
    .restart local v22    # "pointerDistance":D
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastX:F

    move-object/from16 v0, p0

    iget v6, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastY:F

    move-object/from16 v0, p0

    iget v7, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastX:F

    move-object/from16 v0, p0

    iget v8, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastY:F

    move-object/from16 v4, p0

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v19

    move/from16 v12, v20

    invoke-direct/range {v4 .. v12}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->calculateDegrees(FFFFFFFF)F

    move-result v14

    .line 128
    .local v14, "degrees":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mRotateSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 129
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mIsBeingRotated:Z

    .line 130
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastX:F

    .line 131
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerLastY:F

    .line 132
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastX:F

    .line 133
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerLastY:F

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mListener:Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;

    if-eqz v4, :cond_4

    .line 136
    move-object/from16 v0, p0

    iget-object v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mListener:Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;->onRotateBegin(Luk/co/senab/photoview/gestures/RotateGestureDetector;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->isInProgress:Z

    goto/16 :goto_1

    .line 150
    .end local v14    # "degrees":F
    .end local v22    # "pointerDistance":D
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 169
    .end local v15    # "p1Index":I
    .end local v16    # "p1X":F
    .end local v17    # "p1Y":F
    .end local v18    # "p2Index":I
    .end local v19    # "p2X":F
    .end local v20    # "p2Y":F
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->callRotateEnd()V

    .line 170
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerID:I

    goto/16 :goto_0

    .line 173
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->callRotateEnd()V

    .line 174
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerID:I

    goto/16 :goto_0

    .line 177
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->callRotateEnd()V

    .line 178
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mFirstPointerID:I

    .line 179
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Luk/co/senab/photoview/gestures/RotateGestureDetector;->mSecondPointerID:I

    goto/16 :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
