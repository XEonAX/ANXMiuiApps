.class public Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;
.super Ljava/lang/Object;
.source "BitmapGestureParamsHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;
    }
.end annotation


# instance fields
.field private mAnimTargetMatrix:Landroid/graphics/Matrix;

.field public mBitmapDisplayInitRect:Landroid/graphics/RectF;

.field public mBitmapDisplayInsideRect:Landroid/graphics/RectF;

.field public mBitmapDisplayRect:Landroid/graphics/RectF;

.field public mBitmapRect:Landroid/graphics/RectF;

.field public mBitmapToDisplayMatrix:Landroid/graphics/Matrix;

.field public mCanvasMatrix:Landroid/graphics/Matrix;

.field public mCanvasMatrixInvert:Landroid/graphics/Matrix;

.field public mDisplayInitRect:Landroid/graphics/RectF;

.field public mDisplayInsideRect:Landroid/graphics/RectF;

.field public mDisplayRect:Landroid/graphics/RectF;

.field public mDisplayToBitmapMatrix:Landroid/graphics/Matrix;

.field private mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

.field private mMatrixUpdateListener:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

.field private mMatrixValues:[F

.field private mMaxWidth:F

.field public mMaxWidthScale:F

.field private mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

.field private mRectFTemp:Landroid/graphics/RectF;

.field private mScaleFocusX:F

.field private mScaleFocusY:F

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "paramsChangeListener"    # Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInitRect:Landroid/graphics/RectF;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapRect:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInsideRect:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInsideRect:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapToDisplayMatrix:Landroid/graphics/Matrix;

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayToBitmapMatrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrixInvert:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMatrixValues:[F

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mRectFTemp:Landroid/graphics/RectF;

    .line 54
    iput v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mScaleFocusX:F

    .line 55
    iput v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mScaleFocusY:F

    .line 178
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$1;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMatrixUpdateListener:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    .line 74
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mTarget:Landroid/view/View;

    .line 75
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMatrixUpdateListener:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->setMatrixUpdateListener(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;)V

    .line 77
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->performCanvasMatrixChange()V

    return-void
.end method

.method private onBitmapMatrixChanged()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;->onBitmapMatrixChanged()V

    .line 315
    :cond_0
    return-void
.end method

.method private onCanvasMatrixChange()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;->onCanvasMatrixChange()V

    .line 321
    :cond_0
    return-void
.end method

.method private performCanvasMatrixChange()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->refreshBitmapDisplayRect()V

    .line 166
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->onCanvasMatrixChange()V

    .line 167
    return-void
.end method

.method private refreshBitmapDisplayRect()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrixInvert:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 173
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrixInvert:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInsideRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInsideRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInsideRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 176
    return-void
.end method

.method private refreshBitmapInitRect()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapToDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapToDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInitRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapToDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayToBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayToBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 121
    return-void
.end method

.method private resetBitmapMatrix()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->refreshBitmapInitRect()V

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInsideRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInsideRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMaxWidth:F

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMaxWidthScale:F

    .line 109
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->onBitmapMatrixChanged()V

    goto :goto_0
.end method

.method private resolvePadding(Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 124
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v1, v4

    .line 125
    .local v1, "paddingLeft":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    int-to-float v2, v4

    .line 126
    .local v2, "paddingRight":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v3, v4

    .line 127
    .local v3, "paddingTop":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v0, v4

    .line 128
    .local v0, "paddingBottom":F
    iget v4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->left:F

    .line 129
    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v2

    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 130
    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 131
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 132
    return-void
.end method


# virtual methods
.method public convertDistanceX(F)F
    .locals 2
    .param p1, "distanceX"    # F

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public convertDistanceY(F)F
    .locals 2
    .param p1, "distanceY"    # F

    .prologue
    .line 302
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public convertPointToBitmapCoordinate(Landroid/view/MotionEvent;[F)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "points"    # [F

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, p2, v0

    .line 293
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, p2, v0

    .line 294
    invoke-virtual {p0, p2}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->convertPointToBitmapCoordinate([F)V

    .line 295
    return-void
.end method

.method public convertPointToBitmapCoordinate([F)V
    .locals 1
    .param p1, "points"    # [F

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->convertPointToViewPortCoordinate([F)V

    .line 288
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayToBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 289
    return-void
.end method

.method public convertPointToViewPortCoordinate([F)V
    .locals 1
    .param p1, "points"    # [F

    .prologue
    .line 277
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrixInvert:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 278
    return-void
.end method

.method protected countAnimMatrixWhenZoomIn(Landroid/graphics/Matrix;)V
    .locals 25
    .param p1, "animTargetMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mRectFTemp:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mRectFTemp:Landroid/graphics/RectF;

    .line 216
    .local v11, "currentBitmapRect":Landroid/graphics/RectF;
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMaxWidth:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMaxWidth:F

    move/from16 v22, v0

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v23

    div-float v21, v22, v23

    .line 218
    .local v21, "scale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mScaleFocusX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mScaleFocusY:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 222
    .end local v21    # "scale":F
    :cond_0
    const/16 v18, 0x0

    .line 223
    .local v18, "offsetX":F
    const/16 v19, 0x0

    .line 225
    .local v19, "offsetY":F
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v10

    .line 226
    .local v10, "bitmapWidth":F
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v6

    .line 227
    .local v6, "bitmapHeight":F
    iget v7, v11, Landroid/graphics/RectF;->left:F

    .line 228
    .local v7, "bitmapLeft":F
    iget v8, v11, Landroid/graphics/RectF;->right:F

    .line 229
    .local v8, "bitmapRight":F
    iget v9, v11, Landroid/graphics/RectF;->top:F

    .line 230
    .local v9, "bitmapTop":F
    iget v5, v11, Landroid/graphics/RectF;->bottom:F

    .line 232
    .local v5, "bitmapBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v17

    .line 233
    .local v17, "displayWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v13

    .line 234
    .local v13, "displayHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v14, v0, Landroid/graphics/RectF;->left:F

    .line 235
    .local v14, "displayLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Landroid/graphics/RectF;->right:F

    .line 236
    .local v15, "displayRight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    .line 237
    .local v16, "displayTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    .line 239
    .local v12, "displayBottom":F
    cmpl-float v22, v7, v14

    if-lez v22, :cond_4

    .line 240
    cmpl-float v22, v10, v17

    if-lez v22, :cond_3

    .line 241
    sub-float v22, v7, v14

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v18, v0

    .line 256
    :cond_1
    :goto_0
    cmpl-float v22, v9, v16

    if-lez v22, :cond_7

    .line 257
    cmpl-float v22, v6, v13

    if-lez v22, :cond_6

    .line 258
    sub-float v22, v9, v16

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v19, v0

    .line 273
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 274
    return-void

    .line 243
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    sub-float v23, v23, v24

    div-float v20, v22, v23

    .line 244
    .local v20, "ratio":F
    sub-float v22, v7, v14

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v18, v0

    .line 245
    sub-float v22, v17, v10

    mul-float v22, v22, v20

    add-float v18, v18, v22

    .line 246
    goto :goto_0

    .line 247
    .end local v20    # "ratio":F
    :cond_4
    cmpg-float v22, v8, v15

    if-gez v22, :cond_1

    .line 248
    cmpl-float v22, v10, v17

    if-lez v22, :cond_5

    .line 249
    sub-float v18, v15, v8

    goto :goto_0

    .line 251
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    sub-float v23, v23, v24

    div-float v20, v22, v23

    .line 252
    .restart local v20    # "ratio":F
    sub-float v18, v15, v8

    .line 253
    sub-float v22, v17, v10

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v20

    mul-float v22, v22, v23

    sub-float v18, v18, v22

    goto/16 :goto_0

    .line 260
    .end local v20    # "ratio":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    sub-float v23, v23, v24

    div-float v20, v22, v23

    .line 261
    .restart local v20    # "ratio":F
    sub-float v22, v9, v16

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v19, v0

    .line 262
    sub-float v22, v13, v6

    mul-float v22, v22, v20

    add-float v19, v19, v22

    .line 263
    goto/16 :goto_1

    .line 264
    .end local v20    # "ratio":F
    :cond_7
    cmpg-float v22, v5, v12

    if-gez v22, :cond_2

    .line 265
    cmpl-float v22, v6, v13

    if-lez v22, :cond_8

    .line 266
    sub-float v19, v12, v5

    goto/16 :goto_1

    .line 268
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    sub-float v23, v23, v24

    div-float v20, v22, v23

    .line 269
    .restart local v20    # "ratio":F
    sub-float v19, v12, v5

    .line 270
    sub-float v22, v13, v6

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v20

    mul-float v22, v22, v23

    sub-float v19, v19, v22

    goto/16 :goto_1
.end method

.method protected countAnimMatrixWhenZoomOut(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "animTargetMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 208
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInitRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->resolvePadding(Landroid/graphics/RectF;)V

    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->resetBitmapMatrix()V

    .line 92
    return-void
.end method

.method public performScale(FFF)V
    .locals 1
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 136
    iput p2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mScaleFocusX:F

    .line 137
    iput p3, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mScaleFocusY:F

    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->performCanvasMatrixChange()V

    .line 139
    return-void
.end method

.method public performTransition(FF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 142
    const/high16 v3, 0x3f800000    # 1.0f

    .line 143
    .local v3, "ratioX":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 144
    .local v4, "ratioY":F
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v5, v6, v7

    .line 145
    .local v5, "width":F
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v2, v6, v7

    .line 146
    .local v2, "height":F
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 147
    .local v0, "centerX":F
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 148
    .local v1, "centerY":F
    cmpl-float v6, p1, v8

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 149
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v6, v0, v6

    div-float v3, v6, v5

    .line 153
    :cond_0
    :goto_0
    cmpl-float v6, p2, v8

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 154
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v6, v1, v6

    div-float v4, v6, v2

    .line 158
    :cond_1
    :goto_1
    mul-float/2addr p1, v3

    .line 159
    mul-float/2addr p2, v4

    .line 160
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 161
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->performCanvasMatrixChange()V

    .line 162
    return-void

    .line 150
    :cond_2
    cmpg-float v6, p1, v8

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 151
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v0

    div-float v3, v6, v5

    goto :goto_0

    .line 155
    :cond_3
    cmpg-float v6, p2, v8

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 156
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v1

    div-float v4, v6, v2

    goto :goto_1
.end method

.method public resetMatrixWithAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 196
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMatrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 197
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMatrixValues:[F

    aget v0, v1, v4

    .line 198
    .local v0, "scaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->countAnimMatrixWhenZoomOut(Landroid/graphics/Matrix;)V

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->animMatrix([Landroid/graphics/Matrix;)V

    .line 204
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->countAnimMatrixWhenZoomIn(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 82
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 83
    .local v0, "height":I
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->resetBitmapMatrix()V

    .line 85
    return-void
.end method
