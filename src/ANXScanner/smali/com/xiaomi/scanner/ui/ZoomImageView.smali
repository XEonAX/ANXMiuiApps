.class public Lcom/xiaomi/scanner/ui/ZoomImageView;
.super Landroid/widget/ImageView;
.source "ZoomImageView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;,
        Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;,
        Lcom/xiaomi/scanner/ui/ZoomImageView$ScrollerProxy;,
        Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;,
        Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;,
        Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_SCALE:F = 3.0f

.field public static final DEFAULT_MID_SCALE:F = 1.75f

.field public static final DEFAULT_MIN_SCALE:F = 1.0f

.field private static final EDGE_BOTH:I = 0x2

.field private static final EDGE_LEFT:I = 0x0

.field private static final EDGE_NONE:I = -0x1

.field private static final EDGE_RIGHT:I = 0x1


# instance fields
.field private allowParentInterceptOnEdge:Z

.field private final baseMatrix:Landroid/graphics/Matrix;

.field private currentFlingRunnable:Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

.field private final displayRect:Landroid/graphics/RectF;

.field private final drawMatrix:Landroid/graphics/Matrix;

.field private isZoomEnabled:Z

.field private longClickListener:Landroid/view/View$OnLongClickListener;

.field private mBottom:I

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private final matrixValues:[F

.field private maxScale:F

.field private midScale:F

.field private minScale:F

.field private multiGestureDetector:Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

.field private photoTapListener:Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;

.field private scaleType:Landroid/widget/ImageView$ScaleType;

.field private scrollEdge:I

.field private final suppMatrix:Landroid/graphics/Matrix;

.field private viewTapListener:Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 409
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 413
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 416
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 380
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    .line 381
    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->midScale:F

    .line 382
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->maxScale:F

    .line 384
    iput-boolean v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->allowParentInterceptOnEdge:Z

    .line 389
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    .line 390
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->drawMatrix:Landroid/graphics/Matrix;

    .line 391
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    .line 392
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->displayRect:Landroid/graphics/RectF;

    .line 393
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->matrixValues:[F

    .line 402
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scrollEdge:I

    .line 405
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 418
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 420
    new-instance v0, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->multiGestureDetector:Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

    .line 422
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setIsZoomEnabled(Z)V

    .line 423
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/ui/ZoomImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->viewTapListener:Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/xiaomi/scanner/ui/ZoomImageView;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->longClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/xiaomi/scanner/ui/ZoomImageView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/ui/ZoomImageView;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/ui/ZoomImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->allowParentInterceptOnEdge:Z

    return v0
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->multiGestureDetector:Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/ui/ZoomImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;

    .prologue
    .line 27
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scrollEdge:I

    return v0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->currentFlingRunnable:Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/xiaomi/scanner/ui/ZoomImageView;Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;)Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;
    .param p1, "x1"    # Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->currentFlingRunnable:Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/ui/ZoomImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;

    .prologue
    .line 27
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->maxScale:F

    return v0
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/ui/ZoomImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;

    .prologue
    .line 27
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->midScale:F

    return v0
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/ui/ZoomImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;

    .prologue
    .line 27
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    return v0
.end method

.method static synthetic access$900(Lcom/xiaomi/scanner/ui/ZoomImageView;)Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/ZoomImageView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->photoTapListener:Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;

    return-object v0
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkMatrixBounds()V

    .line 721
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 722
    return-void
.end method

.method private checkMatrixBounds()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 725
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v3

    .line 726
    .local v3, "rect":Landroid/graphics/RectF;
    if-nez v3, :cond_0

    .line 778
    :goto_0
    return-void

    .line 730
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    .local v2, "height":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 731
    .local v6, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 733
    .local v1, "deltaY":F
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getHeight()I

    move-result v4

    .line 734
    .local v4, "viewHeight":I
    int-to-float v7, v4

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_2

    .line 735
    sget-object v7, Lcom/xiaomi/scanner/ui/ZoomImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 743
    int-to-float v7, v4

    sub-float/2addr v7, v2

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->top:F

    sub-float v1, v7, v8

    .line 752
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getWidth()I

    move-result v5

    .line 753
    .local v5, "viewWidth":I
    int-to-float v7, v5

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_4

    .line 754
    sget-object v7, Lcom/xiaomi/scanner/ui/ZoomImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v8, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 762
    int-to-float v7, v5

    sub-float/2addr v7, v6

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->left:F

    sub-float v0, v7, v8

    .line 765
    :goto_2
    const/4 v7, 0x2

    iput v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scrollEdge:I

    .line 777
    :goto_3
    iget-object v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 737
    .end local v5    # "viewWidth":I
    :pswitch_0
    iget v7, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v7

    .line 738
    goto :goto_1

    .line 740
    :pswitch_1
    int-to-float v7, v4

    sub-float/2addr v7, v2

    iget v8, v3, Landroid/graphics/RectF;->top:F

    sub-float v1, v7, v8

    .line 741
    goto :goto_1

    .line 746
    :cond_2
    iget v7, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3

    .line 747
    iget v7, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v7

    goto :goto_1

    .line 748
    :cond_3
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 749
    int-to-float v7, v4

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v7, v8

    goto :goto_1

    .line 756
    .restart local v5    # "viewWidth":I
    :pswitch_2
    iget v7, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v7

    .line 757
    goto :goto_2

    .line 759
    :pswitch_3
    int-to-float v7, v5

    sub-float/2addr v7, v6

    iget v8, v3, Landroid/graphics/RectF;->left:F

    sub-float v0, v7, v8

    .line 760
    goto :goto_2

    .line 766
    :cond_4
    iget v7, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_5

    .line 767
    const/4 v7, 0x0

    iput v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scrollEdge:I

    .line 768
    iget v7, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v7

    goto :goto_3

    .line 769
    :cond_5
    iget v7, v3, Landroid/graphics/RectF;->right:F

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    .line 770
    int-to-float v7, v5

    iget v8, v3, Landroid/graphics/RectF;->right:F

    sub-float v0, v7, v8

    .line 771
    const/4 v7, 0x1

    iput v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scrollEdge:I

    goto :goto_3

    .line 773
    :cond_6
    const/4 v7, -0x1

    iput v7, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scrollEdge:I

    goto :goto_3

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 754
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private checkZoomLevels(FFF)V
    .locals 2
    .param p1, "minZoom"    # F
    .param p2, "midZoom"    # F
    .param p3, "maxZoom"    # F

    .prologue
    .line 881
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_0

    .line 882
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinZoom should be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_0
    cmpl-float v0, p2, p3

    if-ltz v0, :cond_1

    .line 884
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MidZoom should be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_1
    return-void
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v4, 0x0

    .line 787
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 788
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 789
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->displayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 790
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->displayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 791
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->displayRect:Landroid/graphics/RectF;

    .line 794
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 873
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 874
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 878
    :goto_0
    return-void

    .line 876
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private resetMatrix()V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 802
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 803
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkMatrixBounds()V

    .line 804
    return-void
.end method

.method private final update()V
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->isZoomEnabled:Z

    if-eqz v0, :cond_0

    .line 709
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 710
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->resetMatrix()V

    goto :goto_0
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 13
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 812
    if-nez p1, :cond_0

    .line 869
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getWidth()I

    move-result v9

    int-to-float v7, v9

    .line 817
    .local v7, "viewWidth":F
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getHeight()I

    move-result v9

    int-to-float v6, v9

    .line 818
    .local v6, "viewHeight":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 819
    .local v1, "drawableWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 821
    .local v0, "drawableHeight":I
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 823
    int-to-float v9, v1

    div-float v8, v7, v9

    .line 824
    .local v8, "widthScale":F
    int-to-float v9, v0

    div-float v2, v6, v9

    .line 826
    .local v2, "heightScale":F
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_1

    .line 827
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    int-to-float v10, v1

    sub-float v10, v7, v10

    div-float/2addr v10, v12

    int-to-float v11, v0

    sub-float v11, v6, v11

    div-float/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 868
    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->resetMatrix()V

    goto :goto_0

    .line 830
    :cond_1
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_2

    .line 831
    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 832
    .local v5, "scale":F
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 833
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    int-to-float v10, v1

    mul-float/2addr v10, v5

    sub-float v10, v7, v10

    div-float/2addr v10, v12

    int-to-float v11, v0

    mul-float/2addr v11, v5

    sub-float v11, v6, v11

    div-float/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 836
    .end local v5    # "scale":F
    :cond_2
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_3

    .line 837
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 838
    .restart local v5    # "scale":F
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 839
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    int-to-float v10, v1

    mul-float/2addr v10, v5

    sub-float v10, v7, v10

    div-float/2addr v10, v12

    int-to-float v11, v0

    mul-float/2addr v11, v5

    sub-float v11, v6, v11

    div-float/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 843
    .end local v5    # "scale":F
    :cond_3
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v9, v1

    int-to-float v10, v0

    invoke-direct {v4, v11, v11, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 844
    .local v4, "mTempSrc":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v11, v11, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 846
    .local v3, "mTempDst":Landroid/graphics/RectF;
    sget-object v9, Lcom/xiaomi/scanner/ui/ZoomImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v10, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 852
    :pswitch_0
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sget-object v10, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v4, v3, v10}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 848
    :pswitch_1
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sget-object v10, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v4, v3, v10}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 856
    :pswitch_2
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sget-object v10, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v4, v3, v10}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 860
    :pswitch_3
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sget-object v10, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v4, v3, v10}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 846
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->drawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 699
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->drawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 700
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->drawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkMatrixBounds()V

    .line 434
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->maxScale:F

    return v0
.end method

.method public getMidScale()F
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->midScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    return v0
.end method

.method public final getScale()F
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 495
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->matrixValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final isZoomEnabled()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->isZoomEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 684
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 686
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 687
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 692
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 694
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 695
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 5

    .prologue
    .line 611
    iget-boolean v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->isZoomEnabled:Z

    if-eqz v4, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getTop()I

    move-result v3

    .line 613
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getRight()I

    move-result v2

    .line 614
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getBottom()I

    move-result v0

    .line 615
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getLeft()I

    move-result v1

    .line 624
    .local v1, "left":I
    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mTop:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mBottom:I

    if-ne v0, v4, :cond_0

    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mLeft:I

    if-ne v1, v4, :cond_0

    iget v4, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mRight:I

    if-eq v2, v4, :cond_1

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/ui/ZoomImageView;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 630
    iput v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mTop:I

    .line 631
    iput v2, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mRight:I

    .line 632
    iput v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mBottom:I

    .line 633
    iput v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->mLeft:I

    .line 636
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_1
    return-void
.end method

.method public onTouchFromParent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 639
    const/4 v6, 0x0

    .line 641
    .local v6, "handled":Z
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->isZoomEnabled:Z

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 674
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->multiGestureDetector:Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->multiGestureDetector:Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;

    invoke-virtual {v0, p2}, Lcom/xiaomi/scanner/ui/ZoomImageView$MultiGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    const/4 v6, 0x1

    .line 679
    :cond_1
    return v6

    .line 646
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 647
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 652
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->currentFlingRunnable:Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->currentFlingRunnable:Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;->cancelFling()V

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->currentFlingRunnable:Lcom/xiaomi/scanner/ui/ZoomImageView$FlingRunnable;

    goto :goto_0

    .line 662
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getScale()F

    move-result v0

    iget v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v7

    .line 664
    .local v7, "rect":Landroid/graphics/RectF;
    if-eqz v7, :cond_0

    .line 665
    new-instance v0, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->getScale()F

    move-result v2

    iget v3, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 666
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/ZoomImageView$AnimatedZoomRunnable;-><init>(Lcom/xiaomi/scanner/ui/ZoomImageView;FFFF)V

    .line 665
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 667
    const/4 v6, 0x1

    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public resetImageMatrix()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->update()V

    .line 705
    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0
    .param p1, "allowParentInterceptOnEdge"    # Z

    .prologue
    .line 551
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->allowParentInterceptOnEdge:Z

    .line 552
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 556
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 557
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->update()V

    .line 558
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 568
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->update()V

    .line 570
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 574
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 575
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->update()V

    .line 576
    return-void
.end method

.method public final setIsZoomEnabled(Z)V
    .locals 0
    .param p1, "isZoomEnabled"    # Z

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->isZoomEnabled:Z

    .line 543
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->update()V

    .line 544
    return-void
.end method

.method public setMaxScale(F)V
    .locals 2
    .param p1, "maxScale"    # F

    .prologue
    .line 484
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    iget v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->midScale:F

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkZoomLevels(FFF)V

    .line 485
    iput p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->maxScale:F

    .line 486
    return-void
.end method

.method public setMidScale(F)V
    .locals 2
    .param p1, "midScale"    # F

    .prologue
    .line 467
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    iget v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->maxScale:F

    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkZoomLevels(FFF)V

    .line 468
    iput p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->midScale:F

    .line 469
    return-void
.end method

.method public setMinScale(F)V
    .locals 2
    .param p1, "minScale"    # F

    .prologue
    .line 450
    iget v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->midScale:F

    iget v1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->maxScale:F

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/ui/ZoomImageView;->checkZoomLevels(FFF)V

    .line 451
    iput p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->minScale:F

    .line 452
    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 587
    return-void
.end method

.method public final setOnPhotoTapListener(Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->photoTapListener:Lcom/xiaomi/scanner/ui/ZoomImageView$OnPhotoTapListener;

    .line 597
    return-void
.end method

.method public final setOnViewTapListener(Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->viewTapListener:Lcom/xiaomi/scanner/ui/ZoomImageView$OnViewTapListener;

    .line 607
    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 515
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported in ZoomImageView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_1

    .line 521
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 522
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/ZoomImageView;->update()V

    .line 524
    :cond_1
    return-void
.end method
