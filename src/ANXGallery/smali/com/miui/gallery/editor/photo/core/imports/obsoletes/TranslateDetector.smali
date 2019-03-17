.class public Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;
.super Ljava/lang/Object;
.source "TranslateDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$OnTranslateListener;,
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;
    }
.end annotation


# instance fields
.field private mGestureListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$OnTranslateListener;

.field private mStartPoint:Landroid/graphics/PointF;

.field private mStartPointOne:Landroid/graphics/PointF;

.field private mState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$OnTranslateListener;)V
    .locals 1
    .param p1, "gestureListener"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$OnTranslateListener;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mStartPoint:Landroid/graphics/PointF;

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mStartPointOne:Landroid/graphics/PointF;

    .line 17
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    .line 22
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mGestureListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$OnTranslateListener;

    .line 23
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 27
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 28
    .local v3, "index":I
    if-nez v0, :cond_2

    .line 29
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 30
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mGestureListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$OnTranslateListener;

    invoke-interface {v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$OnTranslateListener;->onTranslateBegin()Z

    move-result v4

    .line 31
    .local v4, "proceed":Z
    if-eqz v4, :cond_1

    .line 32
    sget-object v6, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;->IN_PROGRESS:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    iput-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    .line 69
    .end local v4    # "proceed":Z
    :cond_0
    :goto_0
    return v5

    .line 34
    .restart local v4    # "proceed":Z
    :cond_1
    sget-object v6, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    iput-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    goto :goto_0

    .line 39
    .end local v4    # "proceed":Z
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    sget-object v8, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;->IN_PROGRESS:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    if-eq v7, v8, :cond_3

    move v5, v6

    .line 40
    goto :goto_0

    .line 43
    :cond_3
    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    .line 44
    if-nez v3, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v1, v6, v7

    .line 46
    .local v1, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v2, v6, v7

    .line 47
    .local v2, "dy":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v5, :cond_4

    .line 48
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mStartPointOne:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    div-float v1, v6, v9

    .line 49
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v6, v2

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mStartPointOne:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    div-float v2, v6, v9

    .line 50
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mStartPointOne:Landroid/graphics/PointF;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 52
    :cond_4
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mGestureListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$OnTranslateListener;

    invoke-interface {v6, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$OnTranslateListener;->onTranslate(FF)V

    .line 53
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 55
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_5
    const/4 v7, 0x5

    if-ne v0, v7, :cond_7

    .line 56
    if-nez v3, :cond_6

    .line 57
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 58
    :cond_6
    if-ne v3, v5, :cond_0

    .line 59
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mStartPointOne:Landroid/graphics/PointF;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 61
    :cond_7
    const/4 v6, 0x6

    if-ne v0, v6, :cond_8

    .line 62
    if-nez v3, :cond_0

    .line 63
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 66
    :cond_8
    sget-object v6, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    iput-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$State;

    .line 67
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->mGestureListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$OnTranslateListener;

    invoke-interface {v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$OnTranslateListener;->onTranslateEnd()V

    goto/16 :goto_0
.end method
