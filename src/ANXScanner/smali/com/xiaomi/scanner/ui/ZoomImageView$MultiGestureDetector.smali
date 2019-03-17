.class Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZoomImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiGestureDetector"
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field private isDragging:Z

.field private lastPointerCount:F

.field private lastTouchX:F

.field private lastTouchY:F

.field private final scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final scaledMinimumFlingVelocity:F

.field private final scaledTouchSlop:F

.field final synthetic this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 88
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 90
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    .line 91
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 93
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 94
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaledMinimumFlingVelocity:F

    .line 95
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaledTouchSlop:F

    .line 96
    return-void
.end method


# virtual methods
.method public isScaling()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getScale()F

    move-result v2

    .line 258
    .local v2, "scale":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 259
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 261
    .local v5, "y":F
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$700(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    .line 262
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    new-instance v0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v3}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$700(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;FFFF)V

    invoke-virtual {v6, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->post(Ljava/lang/Runnable;)Z

    .line 272
    .end local v2    # "scale":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 263
    .restart local v2    # "scale":F
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$700(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$600(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    .line 264
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    new-instance v0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v3}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$600(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;FFFF)V

    invoke-virtual {v6, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 268
    .end local v2    # "scale":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :catch_0
    move-exception v0

    goto :goto_0

    .line 266
    .restart local v2    # "scale":F
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_1
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    new-instance v0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v3}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$800(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;FFFF)V

    invoke-virtual {v6, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$1100(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$1100(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 312
    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 234
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getScale()F

    move-result v0

    .line 235
    .local v0, "scale":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 237
    .local v1, "scaleFactor":F
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$600(Lcom/xiaomi/scanner/ui/ZoomImageView;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    cmpl-float v2, v1, v6

    if-gtz v2, :cond_2

    :cond_0
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    cmpg-float v2, v1, v6

    if-ltz v2, :cond_2

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 239
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$100(Lcom/xiaomi/scanner/ui/ZoomImageView;)V

    .line 242
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 252
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 283
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v5}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$900(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 284
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v5}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 286
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 290
    .local v3, "y":F
    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 292
    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float v5, v1, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v2, v5, v6

    .line 293
    .local v2, "xResult":F
    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v3, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v4, v5, v6

    .line 295
    .local v4, "yResult":F
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v5}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$900(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-interface {v5, v6, v2, v4}, Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    .line 304
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    .end local v1    # "x":F
    .end local v2    # "xResult":F
    .end local v3    # "y":F
    .end local v4    # "yResult":F
    :cond_0
    :goto_0
    return v9

    .line 300
    :cond_1
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v5}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$1000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 301
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v5}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$1000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 103
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 104
    const/4 v8, 0x1

    .line 229
    :goto_0
    return v8

    .line 107
    :cond_0
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 112
    const/4 v6, 0x0

    .local v6, "x":F
    const/4 v7, 0x0

    .line 113
    .local v7, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 114
    .local v3, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 115
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v6, v8

    .line 116
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v7, v8

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :cond_1
    int-to-float v8, v3

    div-float/2addr v6, v8

    .line 119
    int-to-float v8, v3

    div-float/2addr v7, v8

    .line 124
    int-to-float v8, v3

    iget v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastPointerCount:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_3

    .line 125
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isDragging:Z

    .line 126
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    .line 127
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 129
    :cond_2
    iput v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    .line 130
    iput v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    .line 132
    :cond_3
    int-to-float v8, v3

    iput v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastPointerCount:F

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 229
    :cond_4
    :goto_2
    const/4 v8, 0x1

    goto :goto_0

    .line 136
    :pswitch_0
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_5

    .line 137
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    .line 141
    :goto_3
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 143
    iput v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    .line 144
    iput v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    .line 145
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isDragging:Z

    goto :goto_2

    .line 139
    :cond_5
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_3

    .line 149
    :pswitch_1
    iget v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    sub-float v0, v6, v8

    .local v0, "dx":F
    iget v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    sub-float v1, v7, v8

    .line 151
    .local v1, "dy":F
    iget-boolean v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isDragging:Z

    if-nez v8, :cond_6

    .line 154
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iget v10, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaledTouchSlop:F

    float-to-double v10, v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_a

    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isDragging:Z

    .line 157
    :cond_6
    iget-boolean v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isDragging:Z

    if-eqz v8, :cond_4

    .line 158
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 159
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 160
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$100(Lcom/xiaomi/scanner/ui/ZoomImageView;)V

    .line 173
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$200(Lcom/xiaomi/scanner/ui/ZoomImageView;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$300(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isScaling()Z

    move-result v8

    if-nez v8, :cond_9

    .line 174
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$400(Lcom/xiaomi/scanner/ui/ZoomImageView;)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    .line 175
    invoke-static {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$400(Lcom/xiaomi/scanner/ui/ZoomImageView;)I

    move-result v8

    if-nez v8, :cond_7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v0, v8

    if-gez v8, :cond_8

    :cond_7
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    .line 176
    invoke-static {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$400(Lcom/xiaomi/scanner/ui/ZoomImageView;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    const/high16 v8, -0x40800000    # -1.0f

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_9

    .line 178
    :cond_8
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 179
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 185
    :cond_9
    iput v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    .line 186
    iput v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    .line 188
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_4

    .line 189
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 154
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .line 195
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :pswitch_2
    iget-boolean v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->isDragging:Z

    if-eqz v8, :cond_4

    .line 196
    iput v6, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchX:F

    .line 197
    iput v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastTouchY:F

    .line 200
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_4

    .line 201
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 202
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 204
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .local v4, "vX":F
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    .line 205
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 209
    .local v5, "vY":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->scaledMinimumFlingVelocity:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    .line 210
    invoke-virtual {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 211
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    new-instance v9, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    iget-object v10, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    iget-object v11, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v11}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/content/Context;)V

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$502(Lcom/xiaomi/scanner/ui/ZoomImageView;Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;)Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    .line 212
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v8}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$500(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v9}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-virtual {v10}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getHeight()I

    move-result v10

    neg-float v11, v4

    float-to-int v11, v11

    neg-float v12, v5

    float-to-int v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->fling(IIII)V

    .line 214
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->this$0:Lcom/xiaomi/scanner/ui/ZoomImageView;

    invoke-static {v9}, Lcom/xiaomi/scanner/ui/ZoomImageView;->access$500(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaomi/scanner/ui/ZoomImageView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 221
    .end local v4    # "vX":F
    .end local v5    # "vY":F
    :pswitch_3
    const/4 v8, 0x0

    iput v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->lastPointerCount:F

    .line 222
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_4

    .line 223
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 224
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_2

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
