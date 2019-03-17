.class public Lcom/nexstreaming/app/common/util/RotationGestureDetector;
.super Ljava/lang/Object;
.source "RotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;
    }
.end annotation


# instance fields
.field private mFocusX:F

.field private mFocusY:F

.field private mInProgress:Z

.field private mInitialTheta:D

.field private final mListener:Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;

.field private mPrimaryPointerId:I

.field private mSecondaryPointerId:I


# direct methods
.method public constructor <init>(Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    .line 26
    iput-object p1, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mListener:Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;

    .line 27
    return-void
.end method


# virtual methods
.method public isInProgress()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 33
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mPrimaryPointerId:I

    goto :goto_0

    .line 36
    :pswitch_2
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mListener:Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, v5}, Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;->onEndRotate(Z)V

    .line 38
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    goto :goto_0

    .line 42
    :pswitch_3
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mSecondaryPointerId:I

    .line 44
    iget v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mSecondaryPointerId:I

    iget v1, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mPrimaryPointerId:I

    if-eq v0, v1, :cond_0

    .line 47
    iget v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mPrimaryPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 48
    iget v1, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mSecondaryPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 49
    if-ltz v0, :cond_1

    if-gez v1, :cond_2

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mListener:Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, v2}, Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;->onEndRotate(Z)V

    .line 51
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 58
    add-float v4, v2, v3

    div-float/2addr v4, v6

    iput v4, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mFocusX:F

    .line 59
    add-float v4, v0, v1

    div-float/2addr v4, v6

    iput v4, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mFocusY:F

    .line 60
    sub-float/2addr v0, v1

    float-to-double v0, v0

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInitialTheta:D

    .line 61
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mListener:Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;

    iget v1, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mFocusX:F

    iget v2, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mFocusY:F

    invoke-interface {v0, v1, v2}, Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;->onBeginRotate(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iput-boolean v5, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    goto :goto_0

    .line 67
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 68
    iget-boolean v1, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mSecondaryPointerId:I

    if-eq v1, v0, :cond_3

    iget v1, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mPrimaryPointerId:I

    if-ne v1, v0, :cond_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mListener:Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, v2}, Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;->onEndRotate(Z)V

    .line 70
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    goto/16 :goto_0

    .line 74
    :pswitch_5
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    if-eqz v0, :cond_0

    .line 75
    iget v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mPrimaryPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 76
    iget v1, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mSecondaryPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 77
    if-ltz v0, :cond_4

    if-gez v1, :cond_5

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mListener:Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, v2}, Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;->onEndRotate(Z)V

    .line 79
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    goto/16 :goto_0

    .line 82
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 85
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 86
    sub-float/2addr v0, v1

    float-to-double v0, v0

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 87
    iget-object v2, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mListener:Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;

    iget v3, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mFocusX:F

    iget v4, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mFocusY:F

    iget-wide v6, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInitialTheta:D

    sub-double/2addr v0, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v6

    double-to-float v0, v0

    invoke-interface {v2, v3, v4, v0}, Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;->onRotate(FFF)V

    goto/16 :goto_0

    .line 91
    :pswitch_6
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mListener:Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, v2}, Lcom/nexstreaming/app/common/util/RotationGestureDetector$OnRotationGestureListener;->onEndRotate(Z)V

    .line 93
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/util/RotationGestureDetector;->mInProgress:Z

    goto/16 :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
