.class Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;
    }
.end annotation


# instance fields
.field private final CRITICAL_VELOCITY:F

.field private mAjustAnim:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;

.field private mRotateDetector:Luk/co/senab/photoview/gestures/RotateGestureDetector;

.field private mRotatedDegrees:F

.field final synthetic this$0:Luk/co/senab/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Luk/co/senab/photoview/PhotoViewAttacher;)V
    .locals 6

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    .line 2370
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2371
    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2372
    .local v1, "context":Landroid/content/Context;
    new-instance v4, Luk/co/senab/photoview/gestures/RotateGestureDetector;

    invoke-direct {v4, v1, p0}, Luk/co/senab/photoview/gestures/RotateGestureDetector;-><init>(Landroid/content/Context;Luk/co/senab/photoview/gestures/RotateGestureDetector$OnRotationGestureListener;)V

    iput-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mRotateDetector:Luk/co/senab/photoview/gestures/RotateGestureDetector;

    .line 2373
    new-instance v4, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;

    invoke-direct {v4, p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;-><init>(Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;Landroid/content/Context;)V

    iput-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mAjustAnim:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;

    .line 2375
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2376
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    int-to-float v3, v4

    .line 2377
    .local v3, "minVelocity":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    int-to-float v2, v4

    .line 2378
    .local v2, "maxVelocity":F
    mul-float v4, v3, v5

    div-float v5, v2, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->CRITICAL_VELOCITY:F

    .line 2379
    return-void
.end method

.method static synthetic access$2100(Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;
    .param p1, "x1"    # Landroid/graphics/RectF;
    .param p2, "x2"    # Landroid/graphics/RectF;

    .prologue
    .line 2358
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->needTrimToBaseRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;Landroid/graphics/Matrix;)[F
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 2358
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->calculateTranslate(Landroid/graphics/Matrix;)[F

    move-result-object v0

    return-object v0
.end method

.method private adjustAfterRotate(Luk/co/senab/photoview/gestures/RotateGestureDetector;ZF)V
    .locals 23
    .param p1, "detector"    # Luk/co/senab/photoview/gestures/RotateGestureDetector;
    .param p2, "clockwise"    # Z
    .param p3, "velocity"    # F

    .prologue
    .line 2495
    move-object/from16 v0, p0

    iget-object v3, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v19

    .line 2496
    .local v19, "imageView":Landroid/widget/ImageView;
    if-nez v19, :cond_0

    .line 2553
    :goto_0
    return-void

    .line 2500
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mAjustAnim:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->stop()V

    .line 2503
    move-object/from16 v0, p0

    iget-object v3, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v4

    .line 2504
    .local v4, "fromRotation":F
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->calculateFinalDegrees(ZF)I

    move-result v3

    int-to-float v5, v3

    .line 2505
    .local v5, "toRotation":F
    new-instance v20, Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 2506
    .local v20, "rotateMatrix":Landroid/graphics/Matrix;
    sub-float v3, v4, v5

    invoke-virtual/range {p1 .. p1}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->getFocusX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->getFocusY()F

    move-result v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2507
    const/4 v15, 0x0

    .line 2512
    .local v15, "debugMatrix":Landroid/graphics/Matrix;
    sub-float v3, v4, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v3, v1}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->calculateRotateDuration(FF)I

    move-result v8

    .line 2514
    .local v8, "rotateDuration":I
    move-object/from16 v0, p0

    iget-object v3, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mAjustAnim:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;

    invoke-virtual/range {p1 .. p1}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->getFocusX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->getFocusY()F

    move-result v7

    invoke-virtual/range {v3 .. v8}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->rotate(FFFFI)V

    .line 2519
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->calculateTranslate(Landroid/graphics/Matrix;)[F

    move-result-object v16

    .line 2520
    .local v16, "deltas":[F
    if-eqz v16, :cond_1

    .line 2521
    move-object/from16 v0, p0

    iget-object v9, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mAjustAnim:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    aget v12, v16, v3

    const/4 v3, 0x1

    aget v13, v16, v3

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->translate(FFFFI)V

    .line 2532
    :cond_1
    move/from16 v21, v8

    .line 2533
    .local v21, "scaleDuration":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->calculateScale(Landroid/graphics/Matrix;)F

    move-result v17

    .line 2534
    .local v17, "factor":F
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2535
    move-object/from16 v0, p0

    iget-object v3, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1400(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/MatrixUtil;->getScale(Landroid/graphics/Matrix;)F

    move-result v18

    .line 2536
    .local v18, "fromScale":F
    mul-float v22, v18, v17

    .line 2537
    .local v22, "toScale":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->calculateScaleDuration(FF)I

    move-result v21

    .line 2538
    move-object/from16 v0, p0

    iget-object v3, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mAjustAnim:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;

    move/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->scale(FFI)V

    .line 2550
    .end local v18    # "fromScale":F
    .end local v22    # "toScale":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mAjustAnim:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;

    move-object/from16 v0, p0

    iget-object v6, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v6}, Luk/co/senab/photoview/PhotoViewAttacher;->access$700(Luk/co/senab/photoview/PhotoViewAttacher;)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, v21

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v3, v6, v7, v9}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->alpha(FFI)V

    .line 2552
    move-object/from16 v0, p0

    iget-object v3, v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mAjustAnim:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->start()V

    goto/16 :goto_0
.end method

.method private calculateFinalDegrees(ZF)I
    .locals 8
    .param p1, "clockwise"    # Z
    .param p2, "velocity"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    .line 2431
    iget-object v5, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v5}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v0

    .line 2432
    .local v0, "degrees":F
    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mRotatedDegrees:F

    rem-float v4, v5, v6

    .line 2433
    .local v4, "remainderDegrees":F
    cmpl-float v5, v4, v7

    if-lez v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    cmpg-float v5, v4, v7

    if-gez v5, :cond_2

    if-eqz p1, :cond_2

    .line 2434
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v4, v6, v5

    .line 2438
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 2440
    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->CRITICAL_VELOCITY:F

    cmpl-float v5, p2, v5

    if-lez v5, :cond_7

    .line 2441
    const/high16 v5, 0x41a00000    # 20.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    .line 2444
    rem-float v3, v0, v6

    .line 2446
    .local v3, "remainder":F
    cmpl-float v5, v3, v7

    if-lez v5, :cond_4

    .line 2447
    if-eqz p1, :cond_3

    .line 2448
    neg-float v1, v3

    .line 2459
    .local v1, "delta":F
    :goto_1
    iget-object v5, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    add-float v6, v0, v1

    invoke-static {v5, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1300(Luk/co/senab/photoview/PhotoViewAttacher;F)I

    move-result v2

    .line 2473
    .end local v1    # "delta":F
    .end local v3    # "remainder":F
    .local v2, "finalDegrees":I
    :goto_2
    return v2

    .line 2436
    .end local v2    # "finalDegrees":I
    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_0

    .line 2450
    .restart local v3    # "remainder":F
    :cond_3
    sub-float v1, v6, v3

    .restart local v1    # "delta":F
    goto :goto_1

    .line 2453
    .end local v1    # "delta":F
    :cond_4
    if-eqz p1, :cond_5

    .line 2454
    const/high16 v5, -0x3d4c0000    # -90.0f

    sub-float v1, v5, v3

    .restart local v1    # "delta":F
    goto :goto_1

    .line 2456
    .end local v1    # "delta":F
    :cond_5
    neg-float v1, v3

    .restart local v1    # "delta":F
    goto :goto_1

    .line 2461
    .end local v1    # "delta":F
    .end local v3    # "remainder":F
    :cond_6
    float-to-int v5, v0

    div-int/lit8 v5, v5, 0x5a

    mul-int/lit8 v2, v5, 0x5a

    .restart local v2    # "finalDegrees":I
    goto :goto_2

    .line 2464
    .end local v2    # "finalDegrees":I
    :cond_7
    const/high16 v5, 0x42340000    # 45.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_8

    .line 2465
    iget-object v5, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v5, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1300(Luk/co/senab/photoview/PhotoViewAttacher;F)I

    move-result v2

    .restart local v2    # "finalDegrees":I
    goto :goto_2

    .line 2467
    .end local v2    # "finalDegrees":I
    :cond_8
    float-to-int v5, v0

    div-int/lit8 v5, v5, 0x5a

    mul-int/lit8 v2, v5, 0x5a

    .restart local v2    # "finalDegrees":I
    goto :goto_2
.end method

.method private calculateRotateDuration(FF)I
    .locals 1
    .param p1, "degreesDelta"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 2478
    const/16 v0, 0x12c

    return v0
.end method

.method private calculateScale(Landroid/graphics/Matrix;)F
    .locals 8
    .param p1, "rotatedMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v5, 0x7fc00000    # NaNf

    .line 2618
    iget-object v6, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v6}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 2619
    .local v2, "imageView":Landroid/widget/ImageView;
    if-nez v2, :cond_1

    .line 2639
    :cond_0
    :goto_0
    return v5

    .line 2625
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2626
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/miui/gallery/util/MatrixUtil;->getRotate(Landroid/graphics/Matrix;)F

    move-result v6

    float-to-int v4, v6

    .line 2628
    .local v4, "rotation":I
    iget-object v6, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v6, v1, v4}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1600(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/RectF;

    move-result-object v0

    .line 2629
    .local v0, "baseDisplay":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 2633
    new-instance v3, Landroid/graphics/RectF;

    iget-object v6, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v6, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2635
    .local v3, "rotatedDisplay":Landroid/graphics/RectF;
    invoke-direct {p0, v3, v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->needTrimToBaseRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2637
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0
.end method

.method private calculateScaleDuration(FF)I
    .locals 1
    .param p1, "scaleDelta"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 2483
    const/16 v0, 0x12c

    return v0
.end method

.method private calculateTranslate(Landroid/graphics/Matrix;)[F
    .locals 10
    .param p1, "rotatedMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 2561
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v8}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    .line 2562
    .local v4, "imageView":Landroid/widget/ImageView;
    if-nez v4, :cond_1

    .line 2614
    :cond_0
    :goto_0
    return-object v7

    .line 2568
    :cond_1
    const/4 v2, 0x0

    .line 2569
    .local v2, "deltaX":F
    const/4 v3, 0x0

    .line 2570
    .local v3, "deltaY":F
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2571
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/miui/gallery/util/MatrixUtil;->getRotate(Landroid/graphics/Matrix;)F

    move-result v8

    float-to-int v6, v8

    .line 2573
    .local v6, "rotation":I
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v8, v1, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1600(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/RectF;

    move-result-object v0

    .line 2574
    .local v0, "baseDisplay":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 2580
    new-instance v5, Landroid/graphics/RectF;

    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v7, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2584
    .local v5, "rotatedDisplay":Landroid/graphics/RectF;
    invoke-direct {p0, v5, v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->needTrimToBaseRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2588
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v2, v7

    .line 2589
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v3, v7

    .line 2614
    :cond_2
    :goto_1
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v2, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    goto :goto_0

    .line 2593
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v8, v4}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1700(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    .line 2594
    iget v7, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    .line 2595
    iget v7, v5, Landroid/graphics/RectF;->left:F

    sub-float v7, v9, v7

    float-to-int v7, v7

    int-to-float v2, v7

    .line 2597
    :cond_4
    iget v7, v5, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v8, v4}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1700(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    .line 2598
    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v7, v4}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1700(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result v7

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v2, v7

    .line 2603
    :cond_5
    :goto_2
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v8, v4}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1800(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    .line 2604
    iget v7, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_6

    .line 2605
    iget v7, v5, Landroid/graphics/RectF;->top:F

    sub-float v7, v9, v7

    float-to-int v7, v7

    int-to-float v3, v7

    .line 2607
    :cond_6
    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v8, v4}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1800(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 2608
    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v7, v4}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1800(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result v7

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v3, v7

    goto :goto_1

    .line 2601
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v2, v7

    goto :goto_2

    .line 2611
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v3, v7

    goto/16 :goto_1
.end method

.method private needTrimToBaseRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 3
    .param p1, "preRotatedRect"    # Landroid/graphics/RectF;
    .param p2, "preBaseRect"    # Landroid/graphics/RectF;

    .prologue
    const v2, 0x3f99999a    # 1.2f

    .line 2556
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1500(Luk/co/senab/photoview/PhotoViewAttacher;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 2557
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rotateBy(FFF)V
    .locals 2
    .param p1, "degrees"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 2382
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v0, p1, p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1100(Luk/co/senab/photoview/PhotoViewAttacher;FFF)V

    .line 2383
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->access$400(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V

    .line 2384
    return-void
.end method


# virtual methods
.method public isAutoRotating()Z
    .locals 1

    .prologue
    .line 2394
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mAjustAnim:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isManualRotating()Z
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mRotateDetector:Luk/co/senab/photoview/gestures/RotateGestureDetector;

    invoke-virtual {v0}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public isRotating()Z
    .locals 1

    .prologue
    .line 2387
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isManualRotating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isAutoRotating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRotate(Luk/co/senab/photoview/gestures/RotateGestureDetector;)Z
    .locals 5
    .param p1, "detector"    # Luk/co/senab/photoview/gestures/RotateGestureDetector;

    .prologue
    .line 2407
    invoke-virtual {p1}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->getRotateDegrees()F

    move-result v0

    .line 2409
    .local v0, "degrees":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2410
    :cond_0
    const/4 v1, 0x0

    .line 2417
    :goto_0
    return v1

    .line 2412
    :cond_1
    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mRotatedDegrees:F

    add-float/2addr v1, v0

    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mRotatedDegrees:F

    .line 2413
    invoke-virtual {p1}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->getFocusY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->rotateBy(FFF)V

    .line 2414
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1200(Luk/co/senab/photoview/PhotoViewAttacher;)Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2415
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1200(Luk/co/senab/photoview/PhotoViewAttacher;)Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

    move-result-object v1

    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v2

    invoke-virtual {p1}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->getFocusY()F

    move-result v4

    invoke-interface {v1, v0, v2, v3, v4}, Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;->onRotate(FFFF)V

    .line 2417
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onRotateBegin(Luk/co/senab/photoview/gestures/RotateGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Luk/co/senab/photoview/gestures/RotateGestureDetector;

    .prologue
    .line 2422
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->access$200(Luk/co/senab/photoview/PhotoViewAttacher;I)V

    .line 2423
    const/4 v0, 0x0

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mRotatedDegrees:F

    .line 2424
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1200(Luk/co/senab/photoview/PhotoViewAttacher;)Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2425
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1200(Luk/co/senab/photoview/PhotoViewAttacher;)Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v1

    invoke-interface {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;->onRotateBegin(F)V

    .line 2427
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRotateEnd(Luk/co/senab/photoview/gestures/RotateGestureDetector;ZF)V
    .locals 0
    .param p1, "detector"    # Luk/co/senab/photoview/gestures/RotateGestureDetector;
    .param p2, "clockwise"    # Z
    .param p3, "velocity"    # F

    .prologue
    .line 2491
    invoke-direct {p0, p1, p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->adjustAfterRotate(Luk/co/senab/photoview/gestures/RotateGestureDetector;ZF)V

    .line 2492
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2402
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mRotateDetector:Luk/co/senab/photoview/gestures/RotateGestureDetector;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/gestures/RotateGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2398
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->mAjustAnim:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager$AdjustAnimation;->stop()V

    .line 2399
    return-void
.end method
