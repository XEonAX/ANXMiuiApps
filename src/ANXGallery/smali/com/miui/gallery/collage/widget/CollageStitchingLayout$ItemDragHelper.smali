.class Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;
.super Ljava/lang/Object;
.source "CollageStitchingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDragHelper"
.end annotation


# instance fields
.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mClipRect:Landroid/graphics/RectF;

.field mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

.field mCurrentBitmapRect:Landroid/graphics/RectF;

.field mCurrentY:F

.field mDragBitmap:Landroid/graphics/Bitmap;

.field mDragBitmapRect:Landroid/graphics/RectF;

.field mHideAnimator:Landroid/animation/ValueAnimator;

.field private mHideListener:Landroid/animation/Animator$AnimatorListener;

.field mInDragMode:Z

.field mMatrix:Landroid/graphics/Matrix;

.field mPaint:Landroid/graphics/Paint;

.field mShowAnimator:Landroid/animation/ValueAnimator;

.field mViewRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 492
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mPaint:Landroid/graphics/Paint;

    .line 497
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmapRect:Landroid/graphics/RectF;

    .line 498
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mViewRect:Landroid/graphics/RectF;

    .line 499
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mClipRect:Landroid/graphics/RectF;

    .line 500
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCurrentBitmapRect:Landroid/graphics/RectF;

    .line 501
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mMatrix:Landroid/graphics/Matrix;

    .line 502
    iput-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mShowAnimator:Landroid/animation/ValueAnimator;

    .line 503
    iput-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mHideAnimator:Landroid/animation/ValueAnimator;

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mInDragMode:Z

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCurrentY:F

    .line 627
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$1;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 652
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
    .param p2, "x1"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout$1;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;-><init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V

    return-void
.end method


# virtual methods
.method disableDragMode()V
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mInDragMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-nez v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->startHideAnimator()V

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mInDragMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 559
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 560
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 561
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 562
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method enableDragMode(Lcom/miui/gallery/collage/widget/CollageImageView;F)V
    .locals 6
    .param p1, "dragView"    # Lcom/miui/gallery/collage/widget/CollageImageView;
    .param p2, "currentY"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mInDragMode:Z

    .line 510
    if-nez p1, :cond_0

    .line 511
    iput-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 512
    iput-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 533
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 516
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 517
    iput-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    goto :goto_0

    .line 520
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mInDragMode:Z

    .line 521
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 522
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 523
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1800(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Landroid/graphics/RectF;Landroid/view/View;)V

    .line 524
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1900(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Landroid/graphics/RectF;)V

    .line 525
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 527
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->isMirror()Z

    move-result v3

    invoke-virtual {p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->getRotateDegree()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    .line 529
    iput p2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCurrentY:F

    .line 530
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCurrentBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 531
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageImageView;->setVisibility(I)V

    .line 532
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->startShowAnimator()V

    goto :goto_0
.end method

.method notifySwipe(F)V
    .locals 9
    .param p1, "distance"    # F

    .prologue
    const v8, 0x3e99999a    # 0.3f

    const/4 v7, 0x0

    .line 566
    iget-boolean v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mInDragMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-nez v4, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    const-string v4, "CollageStitchingLayout"

    const-string v5, "notifySwipe distance : %f"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    .line 572
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 573
    .local v0, "currentIndex":I
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 574
    .local v2, "nextChild":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 575
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1800(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Landroid/graphics/RectF;Landroid/view/View;)V

    .line 576
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1900(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Landroid/graphics/RectF;)V

    .line 577
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mClipRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v1, v4, v5

    .line 578
    .local v1, "difference":F
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v4}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v8

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    .line 579
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v0, v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2100(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;II)V

    goto :goto_0

    .line 582
    .end local v0    # "currentIndex":I
    .end local v1    # "difference":F
    .end local v2    # "nextChild":Landroid/view/View;
    :cond_2
    cmpg-float v4, p1, v7

    if-gez v4, :cond_0

    .line 584
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 585
    .restart local v0    # "currentIndex":I
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 586
    .local v3, "preChild":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 587
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1800(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Landroid/graphics/RectF;Landroid/view/View;)V

    .line 588
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1900(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Landroid/graphics/RectF;)V

    .line 589
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v4}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mClipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v1, v4, v5

    .line 590
    .restart local v1    # "difference":F
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v4}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v8

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    .line 591
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v0, v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2100(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;II)V

    goto/16 :goto_0
.end method

.method onScroll(F)V
    .locals 4
    .param p1, "distanceY"    # F

    .prologue
    const/4 v3, 0x0

    .line 543
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mInDragMode:Z

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 546
    :cond_0
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCurrentY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCurrentY:F

    .line 547
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mMatrix:Landroid/graphics/Matrix;

    neg-float v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 548
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCurrentBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 549
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mClipRect:Landroid/graphics/RectF;

    neg-float v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 550
    neg-float v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->notifySwipe(F)V

    .line 551
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->invalidate()V

    goto :goto_0
.end method

.method startHideAnimator()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 608
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 611
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 612
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1800(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Landroid/graphics/RectF;Landroid/view/View;)V

    .line 613
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1900(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;Landroid/graphics/RectF;)V

    .line 615
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mDragBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/widget/CollageImageView;->isMirror()Z

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v4}, Lcom/miui/gallery/collage/widget/CollageImageView;->getRotateDegree()I

    move-result v4

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    .line 617
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, "property_name_alpha"

    new-array v3, v9, [I

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mPaint:Landroid/graphics/Paint;

    .line 618
    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    aput v4, v3, v7

    const/16 v4, 0xff

    aput v4, v3, v8

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v7

    const-string v2, "property_name_matrix"

    new-instance v3, Lcom/miui/gallery/editor/photo/app/MatrixEvaluator;

    invoke-direct {v3}, Lcom/miui/gallery/editor/photo/app/MatrixEvaluator;-><init>()V

    new-array v4, v9, [Ljava/lang/Object;

    new-instance v5, Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {v5, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    .line 619
    invoke-static {v2, v3, v4}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v8

    const-string v2, "property_name_rect"

    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/RectFEvaluator;

    invoke-direct {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/RectFEvaluator;-><init>()V

    new-array v4, v9, [Ljava/lang/Object;

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mClipRect:Landroid/graphics/RectF;

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .line 620
    invoke-static {v5}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$2000(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Landroid/graphics/RectF;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v9

    .line 617
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mHideAnimator:Landroid/animation/ValueAnimator;

    .line 621
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 622
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mHideAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 623
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mHideAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 624
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 625
    return-void
.end method

.method startShowAnimator()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 598
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 601
    :cond_0
    new-array v0, v5, [Landroid/animation/PropertyValuesHolder;

    const-string v1, "property_name_alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/16 v3, 0xff

    aput v3, v2, v4

    const/high16 v3, 0x42ff0000    # 127.5f

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mShowAnimator:Landroid/animation/ValueAnimator;

    .line 602
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 603
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mShowAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 604
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 605
    return-void
.end method
