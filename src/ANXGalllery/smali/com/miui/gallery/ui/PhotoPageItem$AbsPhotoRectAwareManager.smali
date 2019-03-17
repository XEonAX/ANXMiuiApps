.class public abstract Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AbsPhotoRectAwareManager"
.end annotation


# instance fields
.field private isDrawableDisplayInside:Z

.field private isRotating:Z

.field protected mMargin:I

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageItem;


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract adjustLocation(ZLandroid/graphics/RectF;Z)V
.end method

.method protected abstract changeVisibilityForSpecialScene()V
.end method

.method protected generateHideAnimation()Landroid/view/animation/Animation;
    .locals 11

    .prologue
    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 740
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 741
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 745
    .local v0, "scale":Landroid/view/animation/Animation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 746
    .local v9, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 747
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 748
    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 749
    const-wide/16 v2, 0xc8

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 750
    return-object v10
.end method

.method protected generateShowAnimation()Landroid/view/animation/Animation;
    .locals 11

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 726
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 727
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 731
    .local v0, "scale":Landroid/view/animation/Animation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 732
    .local v9, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 733
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 734
    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 735
    const-wide/16 v2, 0x12c

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 736
    return-object v10
.end method

.method protected getAdjustAnimDuration(Z)I
    .locals 1
    .param p1, "isActionBarVisible"    # Z

    .prologue
    .line 775
    if-eqz p1, :cond_0

    const/16 v0, 0x15e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xfa

    goto :goto_0
.end method

.method protected getAdjustAnimInterpolator(Z)Landroid/view/animation/Interpolator;
    .locals 1
    .param p1, "isActionBarVisible"    # Z

    .prologue
    .line 779
    if-eqz p1, :cond_0

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    goto :goto_0
.end method

.method protected getHorizontalMargin()I
    .locals 3

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->getVerticalMargin()I

    move-result v1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-static {v0}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsetRight(Landroid/view/View;)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMaxTranslationX()F
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method protected getMaxTranslationY()F
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method protected getVerticalMargin()I
    .locals 2

    .prologue
    .line 812
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->mMargin:I

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->mMargin:I

    .line 815
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->mMargin:I

    return v0
.end method

.method protected isDrawableDisplayInside()Z
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->isDrawableDisplayInside:Z

    return v0
.end method

.method protected isRotating()Z
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->isRotating:Z

    return v0
.end method

.method public onActionModeChanged(Z)V
    .locals 3
    .param p1, "inActionMode"    # Z

    .prologue
    .line 709
    const-string v0, "PhotoPageItem"

    const-string v1, "onActionModeChanged %s"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 710
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->changeVisibilityForSpecialScene()V

    .line 711
    return-void
.end method

.method public final onMatrixChanged(Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v2, 0x0

    .line 762
    const/4 v1, 0x0

    .line 763
    .local v1, "isInside":Z
    if-eqz p1, :cond_0

    .line 764
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoView;->getBaseDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 765
    .local v0, "baseRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    const/4 v1, 0x1

    .line 767
    .end local v0    # "baseRect":Landroid/graphics/RectF;
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->isDrawableDisplayInside:Z

    if-eq v1, v3, :cond_1

    .line 768
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->isDrawableDisplayInside:Z

    .line 769
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->onScaleInsideChanged(Z)V

    .line 771
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageItem;->isActionBarVisible()Z

    move-result v3

    invoke-virtual {p0, v3, p1, v2}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->adjustLocation(ZLandroid/graphics/RectF;Z)V

    .line 772
    return-void

    .restart local v0    # "baseRect":Landroid/graphics/RectF;
    :cond_2
    move v1, v2

    .line 765
    goto :goto_0
.end method

.method public onRotate(FFFF)V
    .locals 0
    .param p1, "degreesDelta"    # F
    .param p2, "currentDegree"    # F
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F

    .prologue
    .line 792
    return-void
.end method

.method public final onRotateBegin(F)V
    .locals 1
    .param p1, "fromDegrees"    # F

    .prologue
    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->isRotating:Z

    .line 797
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->isRotating:Z

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->onRotateStateChanged(Z)V

    .line 798
    return-void
.end method

.method public final onRotateEnd(F)V
    .locals 3
    .param p1, "toDegrees"    # F

    .prologue
    .line 802
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->isRotating:Z

    .line 803
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->isRotating:Z

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->onRotateStateChanged(Z)V

    .line 805
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 806
    .local v0, "param":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "toDegree"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string v1, "photo"

    const-string v2, "manual_rotate"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 809
    return-void
.end method

.method public onRotateStateChanged(Z)V
    .locals 3
    .param p1, "rotating"    # Z

    .prologue
    .line 715
    const-string v0, "PhotoPageItem"

    const-string v1, "onRotateStateChanged %s"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->changeVisibilityForSpecialScene()V

    .line 717
    return-void
.end method

.method public onScaleInsideChanged(Z)V
    .locals 3
    .param p1, "inside"    # Z

    .prologue
    .line 721
    const-string v0, "PhotoPageItem"

    const-string v1, "onScaleInsideChanged %s"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->changeVisibilityForSpecialScene()V

    .line 723
    return-void
.end method

.method public onSelected()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p0}, Luk/co/senab/photoview/PhotoView;->setOnRotateListener(Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;)V

    .line 825
    return-void
.end method

.method public onUnSelected()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->setOnRotateListener(Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;)V

    .line 830
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 834
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->isRotating:Z

    .line 835
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->isDrawableDisplayInside:Z

    .line 836
    return-void
.end method
