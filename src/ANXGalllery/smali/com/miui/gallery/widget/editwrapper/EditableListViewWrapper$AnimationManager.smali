.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;
.super Ljava/lang/Object;
.source "EditableListViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$MyScaleItemImageViewAnimatorListener;
    }
.end annotation


# instance fields
.field private isTurnOnScaleImageViewAni:Z

.field private mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScroll2PickHelper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;

.field final synthetic this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    .line 402
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->mScroll2PickHelper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->isTurnOnScaleImageViewAni:Z

    .line 704
    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;Landroid/widget/ImageView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # F

    .prologue
    .line 379
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->setImageViewScale(Landroid/widget/ImageView;F)V

    return-void
.end method

.method private finishImageViewScaleAnimatorIfNecessary(Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 435
    const v3, 0x7f12001d

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 436
    .local v1, "oldAnimator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 439
    :cond_0
    if-eqz v1, :cond_1

    .line 440
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->getImageViewScale(Landroid/widget/ImageView;)F

    move-result v0

    .line 441
    .local v0, "curScale":F
    const v3, 0x7f120028

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 442
    .local v2, "targetScale":F
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x800000

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 443
    invoke-direct {p0, p1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->setImageViewScale(Landroid/widget/ImageView;F)V

    .line 446
    .end local v0    # "curScale":F
    .end local v2    # "targetScale":F
    :cond_1
    return-void
.end method

.method private getImageViewScale(Landroid/widget/ImageView;)F
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 693
    instance-of v0, p1, Lcom/miui/gallery/widget/ScalableImageView;

    if-eqz v0, :cond_0

    .line 694
    check-cast p1, Lcom/miui/gallery/widget/ScalableImageView;

    .end local p1    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/miui/gallery/widget/ScalableImageView;->getMatrixScale()F

    move-result v0

    .line 696
    :goto_0
    return v0

    .restart local p1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setImageViewScale(Landroid/widget/ImageView;F)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "scale"    # F

    .prologue
    .line 687
    instance-of v0, p1, Lcom/miui/gallery/widget/ScalableImageView;

    if-eqz v0, :cond_0

    .line 688
    check-cast p1, Lcom/miui/gallery/widget/ScalableImageView;

    .end local p1    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1, p2}, Lcom/miui/gallery/widget/ScalableImageView;->setMatrixScale(F)V

    .line 690
    :cond_0
    return-void
.end method

.method private setItemImageView2OriginalScaleAfterEnlarge(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x0

    .line 669
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->finishImageViewScaleAnimatorIfNecessary(Landroid/widget/ImageView;)V

    .line 670
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->setImageViewScale(Landroid/widget/ImageView;F)V

    .line 671
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 674
    :cond_0
    const v0, 0x7f120024

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 675
    const v0, 0x7f12001d

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 676
    return-void
.end method

.method private setItemImageViewEnlargeAfterChecked(Landroid/widget/ImageView;I)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "position"    # I

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->finishImageViewScaleAnimatorIfNecessary(Landroid/widget/ImageView;)V

    .line 681
    const v0, 0x7f120024

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 682
    const v0, 0x3f99999a    # 1.2f

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->setImageViewScale(Landroid/widget/ImageView;F)V

    .line 683
    const v0, 0x7f12001d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 684
    return-void
.end method

.method private startScaleItemImageViewAnimationInternal(Landroid/widget/ImageView;ZIII)V
    .locals 10
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "enlarge"    # Z
    .param p3, "position"    # I
    .param p4, "delay"    # I
    .param p5, "duration"    # I

    .prologue
    const v9, 0x7f120028

    const v8, 0x7f120024

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 450
    iget-boolean v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->isTurnOnScaleImageViewAni:Z

    if-nez v4, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->finishImageViewScaleAnimatorIfNecessary(Landroid/widget/ImageView;)V

    .line 456
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 457
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-lez v4, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/high16 v3, 0x3f800000    # 1.0f

    .line 463
    .local v3, "originFactor":F
    const v2, 0x3f99999a    # 1.2f

    .line 464
    .local v2, "enlargeFactor":F
    if-eqz p2, :cond_3

    .line 465
    new-array v4, v7, [F

    aput v3, v4, v5

    aput v2, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 466
    new-instance v4, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$MyScaleItemImageViewAnimatorListener;

    invoke-direct {v4, p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$MyScaleItemImageViewAnimatorListener;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 469
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p1, v8, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 471
    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v4, :cond_2

    .line 472
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    .line 474
    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v9, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 483
    :goto_1
    int-to-long v4, p5

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 484
    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 485
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 486
    const v4, 0x7f12001d

    invoke-virtual {p1, v4, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 487
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 476
    :cond_3
    new-array v4, v7, [F

    aput v2, v4, v5

    aput v3, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 478
    new-instance v4, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$MyScaleItemImageViewAnimatorListener;

    invoke-direct {v4, p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$MyScaleItemImageViewAnimatorListener;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 479
    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 480
    const/4 v4, 0x0

    invoke-virtual {p1, v8, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 481
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v9, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private startScaleListViewAnimation(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;Z)V
    .locals 13
    .param p1, "listView"    # Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
    .param p2, "enlarge"    # Z

    .prologue
    .line 549
    if-eqz p2, :cond_1

    .line 550
    const v7, 0x3f6b851f    # 0.92f

    .line 551
    .local v7, "beginScale":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 557
    .local v8, "endScale":F
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildCount()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 558
    invoke-virtual {p1, v9}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 559
    .local v12, "view":Landroid/view/View;
    instance-of v0, v12, Lcom/miui/gallery/ui/Checkable;

    if-nez v0, :cond_2

    .line 557
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 553
    .end local v7    # "beginScale":F
    .end local v8    # "endScale":F
    .end local v9    # "i":I
    .end local v12    # "view":Landroid/view/View;
    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    .line 554
    .restart local v7    # "beginScale":F
    const v8, 0x3f6b851f    # 0.92f

    .restart local v8    # "endScale":F
    goto :goto_0

    .line 562
    .restart local v9    # "i":I
    .restart local v12    # "view":Landroid/view/View;
    :cond_2
    const-string v0, "scaleX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v7, v2, v3

    const/4 v3, 0x1

    aput v8, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 564
    .local v10, "pvhY":Landroid/animation/PropertyValuesHolder;
    const-string v0, "scaleY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v7, v2, v3

    const/4 v3, 0x1

    aput v8, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 566
    .local v11, "pvhZ":Landroid/animation/PropertyValuesHolder;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v10, v0, v2

    const/4 v2, 0x1

    aput-object v11, v0, v2

    invoke-static {v12, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 567
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 568
    .local v6, "animator":Landroid/animation/ObjectAnimator;
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 569
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 570
    const v0, 0x7f120027

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 572
    if-eqz p2, :cond_0

    .line 573
    instance-of v0, v12, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    if-eqz v0, :cond_0

    move-object v0, v12

    .line 574
    check-cast v0, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    .line 575
    invoke-interface {v0}, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 576
    .local v1, "imageView":Landroid/widget/ImageView;
    const v0, 0x7f120024

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    const/4 v2, 0x0

    .line 579
    invoke-virtual {p1, v12}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAdapterPositionForExternal(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, p0

    .line 577
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleItemImageViewAnimationInternal(Landroid/widget/ImageView;ZIII)V

    goto :goto_2

    .line 585
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v6    # "animator":Landroid/animation/ObjectAnimator;
    .end local v10    # "pvhY":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "pvhZ":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->mScroll2PickHelper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public resetViewPropertyIfNeed(Landroid/view/View;Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const v7, 0x7f120024

    const v6, 0x7f120027

    const v5, 0x7f120025

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f6b851f    # 0.92f

    .line 623
    invoke-virtual {p1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 624
    .local v1, "itemScaleFactor":Ljava/lang/Object;
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->isInChoiceMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 625
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Float;

    .end local v1    # "itemScaleFactor":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2, v3}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 627
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 628
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 629
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 640
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->isTurnOnScaleImageViewAni:Z

    if-nez v2, :cond_4

    .line 665
    .end local p1    # "view":Landroid/view/View;
    :goto_1
    return-void

    .line 632
    .restart local v1    # "itemScaleFactor":Ljava/lang/Object;
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Float;

    .end local v1    # "itemScaleFactor":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2, v4}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 634
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 635
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 636
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 644
    :cond_4
    instance-of v2, p1, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    if-eqz v2, :cond_6

    .line 645
    check-cast p1, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    .line 646
    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 647
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->isInChoiceMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 648
    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 649
    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p3, :cond_5

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .line 650
    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCheckState(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 651
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->setItemImageView2OriginalScaleAfterEnlarge(Landroid/widget/ImageView;)V

    .line 654
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCheckState(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 655
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 656
    invoke-direct {p0, v0, p3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->setItemImageViewEnlargeAfterChecked(Landroid/widget/ImageView;I)V

    .line 664
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_6
    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v5, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 659
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_7
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 660
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->setItemImageView2OriginalScaleAfterEnlarge(Landroid/widget/ImageView;)V

    goto :goto_2
.end method

.method public setLongTouchPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 406
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->mScroll2PickHelper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;

    invoke-static {v0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;->access$1100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager$Scroll2PickHelper;I)V

    .line 407
    return-void
.end method

.method public startEnterActionModeAni()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleListViewAnimation(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;Z)V

    .line 541
    return-void
.end method

.method public startExistActionModeAni()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleListViewAnimation(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;Z)V

    .line 545
    return-void
.end method

.method public startPickingNumberAnimation(Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$ShowNumberWhenPicking;)V
    .locals 10
    .param p1, "view"    # Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$ShowNumberWhenPicking;

    .prologue
    .line 588
    invoke-interface {p1}, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$ShowNumberWhenPicking;->getBackgroundMask()Landroid/widget/ImageView;

    move-result-object v0

    .line 589
    .local v0, "backgroundMask":Landroid/widget/ImageView;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    invoke-interface {p1}, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$ShowNumberWhenPicking;->getShowNumberTextView()Landroid/widget/TextView;

    move-result-object v5

    .line 591
    .local v5, "showingNumberView":Landroid/widget/TextView;
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v9}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    .line 595
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    .line 596
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    .line 599
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v6, v7

    .line 594
    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x12c

    .line 602
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 603
    .local v2, "fadeIn":Landroid/animation/ObjectAnimator;
    new-instance v6, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v6}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 605
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_3

    .line 606
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    .line 607
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 608
    .local v3, "fadeOut":Landroid/animation/ObjectAnimator;
    new-instance v6, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v6}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 609
    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 611
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 612
    .local v4, "pickingNumberAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 613
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 615
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_4

    .line 616
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x2bc

    .line 617
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 618
    .local v1, "bgMaskAlpha":Landroid/animation/ObjectAnimator;
    new-instance v6, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v6}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 619
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 620
    return-void

    .line 593
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 595
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 596
    :array_2
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 605
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 615
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public startScaleAllItemImageViewAnimation(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;Z)V
    .locals 8
    .param p1, "listView"    # Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
    .param p2, "checked"    # Z

    .prologue
    .line 525
    invoke-virtual {p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildCount()I

    move-result v0

    .line 526
    .local v0, "childCount":I
    if-lez v0, :cond_0

    .line 527
    const/4 v3, 0x0

    .line 528
    .local v3, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 529
    invoke-virtual {p1, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 530
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    if-eqz v6, :cond_1

    move-object v6, v5

    .line 531
    check-cast v6, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;

    invoke-interface {v6}, Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 533
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1, v5}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAdapterPositionForExternal(Landroid/view/View;)I

    move-result v6

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    mul-int/lit8 v7, v4, 0x28

    .line 532
    invoke-virtual {p0, v2, v6, p2, v7}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZI)V

    .line 528
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_0

    .line 537
    .end local v1    # "i":I
    .end local v4    # "j":I
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    return-void

    .restart local v1    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1
.end method

.method public startScaleItemImageViewAnimation(Landroid/widget/ImageView;I)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "position"    # I

    .prologue
    const/16 v5, 0x12c

    const/16 v4, 0x64

    .line 492
    const v0, 0x7f120024

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 493
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleItemImageViewAnimationInternal(Landroid/widget/ImageView;ZIII)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleItemImageViewAnimationInternal(Landroid/widget/ImageView;ZIII)V

    goto :goto_0
.end method

.method public startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZI)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "position"    # I
    .param p3, "checked"    # Z
    .param p4, "delay"    # I

    .prologue
    .line 507
    const/16 v5, 0x12c

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZII)V

    .line 509
    return-void
.end method

.method public startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZII)V
    .locals 7
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "position"    # I
    .param p3, "checked"    # Z
    .param p4, "delay"    # I
    .param p5, "duration"    # I

    .prologue
    const v6, 0x7f120024

    .line 513
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 514
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleItemImageViewAnimationInternal(Landroid/widget/ImageView;ZIII)V

    .line 518
    :cond_0
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 519
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleItemImageViewAnimationInternal(Landroid/widget/ImageView;ZIII)V

    .line 522
    :cond_1
    return-void
.end method

.method public startScaleItemImageViewAnimationByScrollPicked(Landroid/widget/ImageView;IZ)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "position"    # I
    .param p3, "checked"    # Z

    .prologue
    .line 501
    const/16 v0, 0x64

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZI)V

    .line 503
    return-void
.end method
