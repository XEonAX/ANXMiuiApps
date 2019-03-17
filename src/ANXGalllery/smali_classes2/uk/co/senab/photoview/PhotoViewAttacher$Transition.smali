.class Luk/co/senab/photoview/PhotoViewAttacher$Transition;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transition"
.end annotation


# instance fields
.field private isExitTransition:Z

.field private isExited:Z

.field private isRunning:Z

.field private mAlphaScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

.field private mClipMatrix:Landroid/graphics/Matrix;

.field private mClipRect:Landroid/graphics/RectF;

.field private mClipScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

.field private mCurrentX:I

.field private mCurrentY:I

.field public mListener:Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

.field private mScaleScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

.field private mTranslateScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

.field final synthetic this$0:Luk/co/senab/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1862
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1863
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 1864
    .local v0, "i":Landroid/view/animation/Interpolator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-static {p2, v1}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->getScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    move-result-object v1

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mAlphaScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    .line 1865
    invoke-static {p2, v0}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->getScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    move-result-object v1

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mTranslateScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    .line 1866
    invoke-static {p2, v0}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->getScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    move-result-object v1

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mScaleScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    .line 1867
    invoke-static {p2, v0}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->getScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    move-result-object v1

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    .line 1868
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipMatrix:Landroid/graphics/Matrix;

    .line 1869
    return-void
.end method


# virtual methods
.method public alpha(FF)V
    .locals 6
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    const/4 v2, 0x0

    const v4, 0x461c4000    # 10000.0f

    .line 1901
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mAlphaScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    mul-float v1, p1, v4

    float-to-int v1, v1

    sub-float v3, p2, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v5, 0x96

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->startScroll(IIIII)V

    .line 1902
    return-void
.end method

.method public clip(FFFF)V
    .locals 8
    .param p1, "clipX"    # F
    .param p2, "clipY"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    const v4, 0x461c4000    # 10000.0f

    .line 1886
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v7

    .line 1887
    .local v7, "displayRect":Landroid/graphics/RectF;
    if-nez v7, :cond_0

    .line 1898
    :goto_0
    return-void

    .line 1893
    :cond_0
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 1894
    .local v6, "axis":F
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, v6, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1895
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipRect:Landroid/graphics/RectF;

    .line 1896
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1897
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    mul-float v1, p1, v4

    float-to-int v1, v1

    mul-float v2, p2, v4

    float-to-int v2, v2

    mul-float v3, p3, v4

    float-to-int v3, v3

    mul-float/2addr v4, p4

    float-to-int v4, v4

    const/16 v5, 0x96

    invoke-virtual/range {v0 .. v5}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->startScroll(IIIII)V

    goto :goto_0
.end method

.method public ensureAlpha(Z)V
    .locals 4
    .param p1, "enter"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1941
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1942
    .local v0, "alpha":F
    if-eqz p1, :cond_1

    .line 1943
    iget-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->access$700(Luk/co/senab/photoview/PhotoViewAttacher;)F

    move-result v3

    invoke-static {v3, v2}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1947
    :goto_0
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v1, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->access$800(Luk/co/senab/photoview/PhotoViewAttacher;F)V

    .line 1948
    return-void

    .line 1943
    :cond_0
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->access$700(Luk/co/senab/photoview/PhotoViewAttacher;)F

    move-result v0

    goto :goto_0

    .line 1945
    :cond_1
    iget-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->access$700(Luk/co/senab/photoview/PhotoViewAttacher;)F

    move-result v3

    invoke-static {v3, v1}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_2
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->access$700(Luk/co/senab/photoview/PhotoViewAttacher;)F

    move-result v0

    goto :goto_1
.end method

.method public getClipRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public isExited()Z
    .locals 1

    .prologue
    .line 1913
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isExited:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1909
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning:Z

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 1952
    iget-boolean v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning:Z

    if-nez v8, :cond_1

    .line 1953
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    const/4 v9, 0x4

    invoke-static {v8, v9}, Luk/co/senab/photoview/PhotoViewAttacher;->access$100(Luk/co/senab/photoview/PhotoViewAttacher;I)V

    .line 2038
    :cond_0
    :goto_0
    return-void

    .line 1956
    :cond_1
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v8}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 1957
    .local v6, "imageView":Landroid/widget/ImageView;
    if-eqz v6, :cond_d

    .line 1958
    const/4 v7, 0x0

    .line 1959
    .local v7, "more":Z
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mTranslateScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v8}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1960
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mTranslateScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v8}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->getCurrX()I

    move-result v8

    iget v9, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mCurrentX:I

    sub-int v4, v8, v9

    .line 1961
    .local v4, "dx":I
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mTranslateScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v8}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->getCurrY()I

    move-result v8

    iget v9, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mCurrentY:I

    sub-int v5, v8, v9

    .line 1962
    .local v5, "dy":I
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    int-to-float v9, v4

    int-to-float v10, v5

    invoke-static {v8, v9, v10}, Luk/co/senab/photoview/PhotoViewAttacher;->access$300(Luk/co/senab/photoview/PhotoViewAttacher;FF)V

    .line 1963
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mTranslateScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v8}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->getCurrX()I

    move-result v8

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mCurrentX:I

    .line 1964
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mTranslateScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v8}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->getCurrY()I

    move-result v8

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mCurrentY:I

    .line 1965
    const/4 v7, 0x1

    .line 1967
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    :cond_2
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mScaleScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v8}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1968
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mScaleScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v8}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->getCurrX()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x461c4000    # 10000.0f

    iget-object v10, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v10}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v10

    mul-float/2addr v9, v10

    div-float v3, v8, v9

    .line 1969
    .local v3, "dScale":F
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v9, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v9}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-static {v8, v9}, Luk/co/senab/photoview/PhotoViewAttacher;->access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    .line 1970
    .local v2, "curRect":Landroid/graphics/RectF;
    if-eqz v2, :cond_3

    .line 1971
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget v9, v2, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v8, v3, v3, v9, v10}, Luk/co/senab/photoview/PhotoViewAttacher;->access$900(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V

    .line 1975
    :cond_3
    const/4 v7, 0x1

    .line 1977
    .end local v2    # "curRect":Landroid/graphics/RectF;
    .end local v3    # "dScale":F
    :cond_4
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v8}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1978
    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v9}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->getCurrX()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const v9, 0x461c4000    # 10000.0f

    div-float v0, v8, v9

    .line 1979
    .local v0, "clipX":F
    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v9}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->getCurrY()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const v9, 0x461c4000    # 10000.0f

    div-float v1, v8, v9

    .line 1980
    .local v1, "clipY":F
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v9, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v9}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-static {v8, v9}, Luk/co/senab/photoview/PhotoViewAttacher;->access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    .line 1981
    .restart local v2    # "curRect":Landroid/graphics/RectF;
    if-eqz v2, :cond_5

    .line 1982
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipMatrix:Landroid/graphics/Matrix;

    iget v9, v2, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, v2, Landroid/graphics/RectF;->top:F

    iget v11, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v8, v0, v1, v9, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1983
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v9, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1987
    :cond_5
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v0, v8}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1988
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipRect:Landroid/graphics/RectF;

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 1989
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iput v9, v8, Landroid/graphics/RectF;->right:F

    .line 1991
    :cond_6
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v1, v8}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1992
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipRect:Landroid/graphics/RectF;

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/RectF;->top:F

    .line 1993
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iput v9, v8, Landroid/graphics/RectF;->bottom:F

    .line 1995
    :cond_7
    const/4 v7, 0x1

    .line 1997
    .end local v0    # "clipX":F
    .end local v1    # "clipY":F
    .end local v2    # "curRect":Landroid/graphics/RectF;
    :cond_8
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mAlphaScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v8}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1998
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mAlphaScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v10}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->getCurrX()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const v10, 0x461c4000    # 10000.0f

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Luk/co/senab/photoview/PhotoViewAttacher;->access$800(Luk/co/senab/photoview/PhotoViewAttacher;F)V

    .line 1999
    const/4 v7, 0x1

    .line 2001
    :cond_9
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v9, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v9}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-static {v8, v9}, Luk/co/senab/photoview/PhotoViewAttacher;->access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 2002
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v9, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v9}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-static {v8, v9}, Luk/co/senab/photoview/PhotoViewAttacher;->access$400(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V

    .line 2006
    :goto_1
    if-eqz v7, :cond_b

    .line 2007
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    const/4 v9, 0x4

    invoke-static {v8, v9}, Luk/co/senab/photoview/PhotoViewAttacher;->access$200(Luk/co/senab/photoview/PhotoViewAttacher;I)V

    .line 2008
    invoke-static {v6, p0}, Luk/co/senab/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2004
    :cond_a
    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_1

    .line 2010
    :cond_b
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    const/4 v9, 0x4

    invoke-static {v8, v9}, Luk/co/senab/photoview/PhotoViewAttacher;->access$100(Luk/co/senab/photoview/PhotoViewAttacher;I)V

    .line 2011
    iget-boolean v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning:Z

    if-eqz v8, :cond_0

    .line 2015
    const/4 v8, 0x0

    iput-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipRect:Landroid/graphics/RectF;

    .line 2016
    const/4 v8, 0x0

    iput-boolean v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning:Z

    .line 2017
    iget-boolean v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isExitTransition:Z

    if-eqz v8, :cond_c

    .line 2018
    const/4 v8, 0x1

    iput-boolean v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isExited:Z

    .line 2023
    :goto_2
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mListener:Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    if-eqz v8, :cond_0

    .line 2024
    new-instance v8, Luk/co/senab/photoview/PhotoViewAttacher$Transition$1;

    invoke-direct {v8, p0}, Luk/co/senab/photoview/PhotoViewAttacher$Transition$1;-><init>(Luk/co/senab/photoview/PhotoViewAttacher$Transition;)V

    const-wide/16 v10, 0x14

    invoke-virtual {v6, v8, v10, v11}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2020
    :cond_c
    const/4 v8, 0x0

    iput-boolean v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isExited:Z

    .line 2021
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v8}, Luk/co/senab/photoview/PhotoViewAttacher;->access$1000(Luk/co/senab/photoview/PhotoViewAttacher;)V

    goto :goto_2

    .line 2036
    .end local v7    # "more":Z
    :cond_d
    iget-object v8, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    const/4 v9, 0x4

    invoke-static {v8, v9}, Luk/co/senab/photoview/PhotoViewAttacher;->access$100(Luk/co/senab/photoview/PhotoViewAttacher;I)V

    goto/16 :goto_0
.end method

.method public scale(FF)V
    .locals 6
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    const/4 v2, 0x0

    const v4, 0x461c4000    # 10000.0f

    .line 1882
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mScaleScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    mul-float v1, p1, v4

    float-to-int v1, v1

    sub-float v3, p2, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v5, 0x96

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->startScroll(IIIII)V

    .line 1883
    return-void
.end method

.method public setTransitionListener(Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    .prologue
    .line 1872
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mListener:Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    .line 1873
    return-void
.end method

.method public start(Z)V
    .locals 2
    .param p1, "isExit"    # Z

    .prologue
    .line 1921
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1922
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1923
    const/4 v1, 0x1

    iput-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning:Z

    .line 1924
    iput-boolean p1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isExitTransition:Z

    .line 1925
    invoke-static {v0, p0}, Luk/co/senab/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1927
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1930
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1931
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1932
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1934
    :cond_0
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mTranslateScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v1, v2}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->forceFinished(Z)V

    .line 1935
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mScaleScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v1, v2}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->forceFinished(Z)V

    .line 1936
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mClipScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v1, v2}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->forceFinished(Z)V

    .line 1937
    const/4 v1, 0x0

    iput-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning:Z

    .line 1938
    return-void
.end method

.method public translate(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 1876
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mCurrentX:I

    .line 1877
    iput p2, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mCurrentY:I

    .line 1878
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mTranslateScroller:Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;

    const/16 v5, 0x96

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;->startScroll(IIIII)V

    .line 1879
    return-void
.end method
