.class public Luk/co/senab/photoview/gestures/FroyoGestureDetector;
.super Luk/co/senab/photoview/gestures/EclairGestureDetector;
.source "FroyoGestureDetector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field protected final mDetector:Landroid/view/ScaleGestureDetector;

.field private mMultiPointerDiff:F

.field private mPrimaryPointerId:I

.field private mSecondLastTouchX:F

.field private mSecondLastTouchY:F

.field private mSecondPointerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "FroyoGestureDetector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 38
    invoke-direct {p0, p1}, Luk/co/senab/photoview/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    .line 78
    iput v1, p0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    .line 79
    iput v1, p0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    .line 82
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mMultiPointerDiff:F

    .line 39
    new-instance v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector$1;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/gestures/FroyoGestureDetector$1;-><init>(Luk/co/senab/photoview/gestures/FroyoGestureDetector;)V

    .line 63
    .local v0, "mScaleListener":Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 64
    return-void
.end method

.method private calculateDistance(DD)D
    .locals 5
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .prologue
    .line 107
    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private checkPointerIndex(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 85
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

.method private handleDragEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v25, 0x1

    return v25

    .line 118
    :pswitch_1
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 124
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 125
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    .line 126
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchX:F

    .line 127
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchY:F

    .line 128
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mIsDragging:Z

    .line 129
    sget-boolean v25, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->DEBUG:Z

    if-eqz v25, :cond_0

    .line 130
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v25

    const-string v26, "FroyoGestureDetector"

    const-string v27, "ACTION_DOWN pointer id %s"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v25 .. v27}, Luk/co/senab/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v9    # "index":I
    :cond_1
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v25

    const-string v26, "FroyoGestureDetector"

    const-string v27, "Velocity tracker is null"

    invoke-interface/range {v25 .. v27}, Luk/co/senab/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 136
    .restart local v9    # "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    .line 137
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondLastTouchX:F

    .line 138
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondLastTouchY:F

    .line 139
    sget-boolean v25, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->DEBUG:Z

    if-eqz v25, :cond_0

    .line 140
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v25

    const-string v26, "FroyoGestureDetector"

    const-string v27, "ACTION_POINTER_DOWN pointer id %s"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v25 .. v27}, Luk/co/senab/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    .end local v9    # "index":I
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    .line 146
    .local v11, "invalidPointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 147
    .local v10, "invalidPointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v10, v0, :cond_3

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    .line 154
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 155
    .local v13, "newPointerIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->checkPointerIndex(Landroid/view/MotionEvent;I)Z

    move-result v25

    if-nez v25, :cond_2

    .line 156
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v25

    const-string v26, "FroyoGestureDetector"

    const-string v27, "new primary id %s, new index %s, count %s"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v25 .. v27}, Luk/co/senab/photoview/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_2
    invoke-virtual/range {p0 .. p1}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchX:F

    .line 159
    invoke-virtual/range {p0 .. p1}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchY:F

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/VelocityTracker;->clear()V

    .line 165
    .end local v13    # "newPointerIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mIsDragging:Z

    move/from16 v25, v0

    if-nez v25, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v0, v10, :cond_5

    .line 166
    :cond_4
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .line 168
    .local v14, "pointCount":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v14, v0, :cond_5

    .line 169
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v14, :cond_5

    .line 170
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 171
    .local v15, "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v15, :cond_8

    if-eq v15, v10, :cond_8

    .line 172
    move-object/from16 v0, p0

    iput v15, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    .line 178
    .end local v8    # "i":I
    .end local v14    # "pointCount":I
    .end local v15    # "pointerId":I
    :cond_5
    sget-boolean v25, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->DEBUG:Z

    if-eqz v25, :cond_0

    .line 179
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v25

    const-string v26, "FroyoGestureDetector"

    const-string v27, "pointer info after ACTION_POINTER_UP, primary %s, second %s, count %s"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v25 .. v27}, Luk/co/senab/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 151
    :cond_6
    if-nez v11, :cond_7

    const/16 v25, 0x1

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    goto/16 :goto_2

    :cond_7
    const/16 v25, 0x0

    goto :goto_4

    .line 169
    .restart local v8    # "i":I
    .restart local v14    # "pointCount":I
    .restart local v15    # "pointerId":I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 184
    .end local v8    # "i":I
    .end local v10    # "invalidPointerId":I
    .end local v11    # "invalidPointerIndex":I
    .end local v14    # "pointCount":I
    .end local v15    # "pointerId":I
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v23

    .line 185
    .local v23, "x":F
    invoke-virtual/range {p0 .. p1}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v24

    .line 186
    .local v24, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchX:F

    move/from16 v25, v0

    sub-float v6, v23, v25

    .local v6, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchY:F

    move/from16 v25, v0

    sub-float v7, v24, v25

    .line 188
    .local v7, "dy":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mIsDragging:Z

    move/from16 v25, v0

    if-nez v25, :cond_b

    .line 189
    const/4 v12, 0x1

    .line 190
    .local v12, "isOnePointer":Z
    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    .line 192
    .local v18, "secondIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->checkPointerIndex(Landroid/view/MotionEvent;I)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 193
    const/4 v12, 0x0

    .line 194
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .line 195
    .local v19, "secondX":F
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    .line 196
    .local v20, "secondY":F
    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondLastTouchX:F

    move/from16 v25, v0

    sub-float v16, v19, v25

    .local v16, "secondDx":F
    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondLastTouchY:F

    move/from16 v25, v0

    sub-float v17, v20, v25

    .line 197
    .local v17, "secondDy":F
    sget-boolean v25, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->DEBUG:Z

    if-eqz v25, :cond_9

    .line 198
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v25

    const-string v26, "FroyoGestureDetector"

    const-string v27, "dx %s, dy %s, secondDx %s. secondDy %s"

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v25 .. v27}, Luk/co/senab/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mMultiPointerDiff:F

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v6, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->floatNear(FFF)Z

    move-result v25

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mMultiPointerDiff:F

    move/from16 v25, v0

    move/from16 v0, v17

    move/from16 v1, v25

    invoke-static {v7, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->floatNear(FFF)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 201
    float-to-double v0, v6

    move-wide/from16 v26, v0

    float-to-double v0, v7

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->calculateDistance(DD)D

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mTouchSlop:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    cmpl-double v25, v26, v28

    if-ltz v25, :cond_c

    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mIsDragging:Z

    .line 212
    .end local v16    # "secondDx":F
    .end local v17    # "secondDy":F
    .end local v18    # "secondIndex":I
    .end local v19    # "secondX":F
    .end local v20    # "secondY":F
    :cond_a
    :goto_6
    if-eqz v12, :cond_b

    .line 215
    float-to-double v0, v6

    move-wide/from16 v26, v0

    float-to-double v0, v7

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->calculateDistance(DD)D

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mTouchSlop:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    cmpl-double v25, v26, v28

    if-ltz v25, :cond_f

    const/16 v25, 0x1

    :goto_7
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mIsDragging:Z

    .line 219
    .end local v12    # "isOnePointer":Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mIsDragging:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mListener:Luk/co/senab/photoview/gestures/OnGestureListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Luk/co/senab/photoview/gestures/OnGestureListener;->onDrag(FF)V

    .line 221
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchX:F

    .line 222
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchY:F

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 201
    .restart local v12    # "isOnePointer":Z
    .restart local v16    # "secondDx":F
    .restart local v17    # "secondDy":F
    .restart local v18    # "secondIndex":I
    .restart local v19    # "secondX":F
    .restart local v20    # "secondY":F
    :cond_c
    const/16 v25, 0x0

    goto :goto_5

    .line 203
    :cond_d
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchX:F

    .line 204
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchY:F

    .line 205
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondLastTouchX:F

    .line 206
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondLastTouchY:F

    goto :goto_6

    .line 209
    .end local v16    # "secondDx":F
    .end local v17    # "secondDy":F
    .end local v19    # "secondX":F
    .end local v20    # "secondY":F
    :cond_e
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mSecondPointerId:I

    goto/16 :goto_6

    .line 215
    .end local v18    # "secondIndex":I
    :cond_f
    const/16 v25, 0x0

    goto :goto_7

    .line 233
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v12    # "isOnePointer":Z
    .end local v23    # "x":F
    .end local v24    # "y":F
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/VelocityTracker;->recycle()V

    .line 235
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 237
    :cond_10
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mIsDragging:Z

    goto/16 :goto_0

    .line 242
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mIsDragging:Z

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11

    .line 244
    invoke-virtual/range {p0 .. p1}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchX:F

    .line 245
    invoke-virtual/range {p0 .. p1}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchY:F

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    const/16 v26, 0x3e8

    invoke-virtual/range {v25 .. v26}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v21

    .local v21, "vX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v22

    .line 255
    .local v22, "vY":F
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v25

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mMinimumVelocity:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_11

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mListener:Luk/co/senab/photoview/gestures/OnGestureListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mLastTouchY:F

    move/from16 v27, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v29, v0

    invoke-interface/range {v25 .. v29}, Luk/co/senab/photoview/gestures/OnGestureListener;->onFling(FFFF)V

    .line 263
    .end local v21    # "vX":F
    .end local v22    # "vY":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/VelocityTracker;->recycle()V

    .line 265
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 267
    :cond_12
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mIsDragging:Z

    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    iget v1, p0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 91
    .local v0, "pointerIndex":I
    invoke-direct {p0, p1, v0}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->checkPointerIndex(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 94
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    goto :goto_0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    iget v1, p0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mPrimaryPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 100
    .local v0, "pointerIndex":I
    invoke-direct {p0, p1, v0}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->checkPointerIndex(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 103
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_0
.end method

.method public isScaling()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    iget-object v0, p0, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 74
    invoke-direct {p0, p1}, Luk/co/senab/photoview/gestures/FroyoGestureDetector;->handleDragEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
