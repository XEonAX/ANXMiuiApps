.class public Luk/co/senab/photoview/DefaultOnDoubleTapListener;
.super Ljava/lang/Object;
.source "DefaultOnDoubleTapListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field private photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Luk/co/senab/photoview/PhotoViewAttacher;)V
    .locals 0
    .param p1, "photoViewAttacher"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->setPhotoViewAttacher(Luk/co/senab/photoview/PhotoViewAttacher;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 70
    iget-object v3, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-nez v3, :cond_1

    .line 71
    const/4 v2, 0x0

    .line 85
    :cond_0
    :goto_0
    return v2

    .line 73
    :cond_1
    iget-object v3, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->canZoom()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 79
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 80
    .local v1, "y":F
    iget-object v3, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3, v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->onDoubleTap(FF)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0    # "x":F
    .end local v1    # "y":F
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 37
    iget-object v7, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-nez v7, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v6

    .line 40
    :cond_1
    iget-object v7, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 42
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v7, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 43
    iget-object v7, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 45
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 49
    .local v4, "y":F
    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 51
    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v2, v6

    .line 52
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v3, v6, v7

    .line 53
    .local v3, "xResult":F
    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float v6, v4, v6

    .line 54
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v5, v6, v7

    .line 56
    .local v5, "yResult":F
    iget-object v6, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v6}, Luk/co/senab/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v6

    invoke-interface {v6, v1, v3, v5}, Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    .line 57
    const/4 v6, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    .end local v2    # "x":F
    .end local v3    # "xResult":F
    .end local v4    # "y":F
    .end local v5    # "yResult":F
    :cond_2
    iget-object v7, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getOnViewTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 62
    iget-object v7, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getOnViewTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-interface {v7, v1, v8, v9}, Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    goto :goto_0
.end method

.method public setPhotoViewAttacher(Luk/co/senab/photoview/PhotoViewAttacher;)V
    .locals 0
    .param p1, "newPhotoViewAttacher"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 32
    iput-object p1, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    .line 33
    return-void
.end method
