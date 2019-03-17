.class public Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;
.super Landroid/opengl/GLSurfaceView;
.source "BitmapGestureGLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;,
        Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomScaleListener;,
        Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;,
        Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;
    }
.end annotation


# instance fields
.field protected mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

.field private mCustomGesListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;

.field private mCustomScaleListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomScaleListener;

.field private mFeatureGestureListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mOriginBitmap:Landroid/graphics/Bitmap;

.field private mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field protected mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

.field private mTouchMinSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 22
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->NOT_DEFINE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    .line 26
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;-><init>(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mCustomGesListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;

    .line 27
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomScaleListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomScaleListener;-><init>(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mCustomScaleListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomScaleListener;

    .line 217
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$1;-><init>(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->init()V

    .line 35
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mFeatureGestureListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;

    .prologue
    .line 16
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mTouchMinSize:F

    return v0
.end method

.method protected static final convertBitmapX(FF)F
    .locals 3
    .param p0, "x"    # F
    .param p1, "width"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 244
    div-float v1, p1, v2

    sub-float v0, p0, v1

    .line 245
    .local v0, "progress":F
    mul-float v1, v0, v2

    div-float/2addr v1, p1

    return v1
.end method

.method protected static final convertBitmapY(FF)F
    .locals 3
    .param p0, "y"    # F
    .param p1, "height"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 249
    div-float v1, p1, v2

    sub-float v0, p0, v1

    .line 250
    .local v0, "progress":F
    neg-float v1, v0

    mul-float/2addr v1, v2

    div-float/2addr v1, p1

    return v1
.end method

.method public static convertPointToBitmap([FFF)V
    .locals 3
    .param p0, "points"    # [F
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 238
    aget v1, p0, v0

    invoke-static {v1, p1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->convertBitmapX(FF)F

    move-result v1

    aput v1, p0, v0

    .line 239
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    invoke-static {v2, p2}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->convertBitmapY(FF)F

    move-result v2

    aput v2, p0, v1

    .line 237
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public static generateVertexPositionToBitmap(Landroid/graphics/RectF;[FFF)V
    .locals 2
    .param p0, "target"    # Landroid/graphics/RectF;
    .param p1, "dst"    # [F
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 264
    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/RectF;->left:F

    aput v1, p1, v0

    .line 265
    const/4 v0, 0x1

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    aput v1, p1, v0

    .line 267
    const/4 v0, 0x2

    iget v1, p0, Landroid/graphics/RectF;->right:F

    aput v1, p1, v0

    .line 268
    const/4 v0, 0x3

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    aput v1, p1, v0

    .line 270
    const/4 v0, 0x4

    iget v1, p0, Landroid/graphics/RectF;->left:F

    aput v1, p1, v0

    .line 271
    const/4 v0, 0x5

    iget v1, p0, Landroid/graphics/RectF;->top:F

    aput v1, p1, v0

    .line 273
    const/4 v0, 0x6

    iget v1, p0, Landroid/graphics/RectF;->right:F

    aput v1, p1, v0

    .line 274
    const/4 v0, 0x7

    iget v1, p0, Landroid/graphics/RectF;->top:F

    aput v1, p1, v0

    .line 276
    invoke-static {p1, p2, p3}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->convertPointToBitmap([FFF)V

    .line 277
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 43
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mTouchMinSize:F

    .line 44
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mCustomGesListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomGesListener;

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 45
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mCustomScaleListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$CustomScaleListener;

    invoke-direct {v0, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 47
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;-><init>(Landroid/view/View;Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    .line 48
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->setEGLContextClientVersion(I)V

    .line 49
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->setEGLConfigChooser(IIIIII)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->setZOrderOnTop(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 52
    return-void
.end method

.method private onActionUp(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->resetMatrixWithAnim()V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mFeatureGestureListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mFeatureGestureListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;->onActionUp(FF)V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method protected convertPoint([F)V
    .locals 3
    .param p1, "points"    # [F

    .prologue
    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 231
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->convertX(F)F

    move-result v1

    aput v1, p1, v0

    .line 232
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->convertY(F)F

    move-result v2

    aput v2, p1, v1

    .line 230
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method protected final convertX(F)F
    .locals 3
    .param p1, "x"    # F

    .prologue
    .line 254
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float v0, p1, v1

    .line 255
    .local v0, "progress":F
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    return v1
.end method

.method protected final convertY(F)F
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 259
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v0, p1, v1

    .line 260
    .local v0, "progress":F
    neg-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    return v1
.end method

.method protected generateVertexPosition(Landroid/graphics/RectF;[F)V
    .locals 2
    .param p1, "target"    # Landroid/graphics/RectF;
    .param p2, "dst"    # [F

    .prologue
    .line 280
    const/4 v0, 0x0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, p2, v0

    .line 281
    const/4 v0, 0x1

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aput v1, p2, v0

    .line 283
    const/4 v0, 0x2

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, p2, v0

    .line 284
    const/4 v0, 0x3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aput v1, p2, v0

    .line 286
    const/4 v0, 0x4

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, p2, v0

    .line 287
    const/4 v0, 0x5

    iget v1, p1, Landroid/graphics/RectF;->top:F

    aput v1, p2, v0

    .line 289
    const/4 v0, 0x6

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, p2, v0

    .line 290
    const/4 v0, 0x7

    iget v1, p1, Landroid/graphics/RectF;->top:F

    aput v1, p2, v0

    .line 292
    invoke-virtual {p0, p2}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->convertPoint([F)V

    .line 293
    return-void
.end method

.method protected generateVertexPositionReverse(Landroid/graphics/RectF;[F)V
    .locals 2
    .param p1, "target"    # Landroid/graphics/RectF;
    .param p2, "dst"    # [F

    .prologue
    .line 296
    const/4 v0, 0x0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, p2, v0

    .line 297
    const/4 v0, 0x1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    aput v1, p2, v0

    .line 299
    const/4 v0, 0x2

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, p2, v0

    .line 300
    const/4 v0, 0x3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    aput v1, p2, v0

    .line 302
    const/4 v0, 0x4

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, p2, v0

    .line 303
    const/4 v0, 0x5

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aput v1, p2, v0

    .line 305
    const/4 v0, 0x6

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, p2, v0

    .line 306
    const/4 v0, 0x7

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aput v1, p2, v0

    .line 308
    invoke-virtual {p0, p2}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->convertPoint([F)V

    .line 309
    return-void
.end method

.method protected onBitmapMatrixChange()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method protected onCanvasMatrixChange()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->onSizeChanged(IIII)V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->onSizeChanged(IIII)V

    .line 63
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->NOT_DEFINE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 77
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mState:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    :pswitch_0
    return v2

    .line 84
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->onActionUp(FF)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    return-void
.end method

.method public setFeatureGestureListener(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;)V
    .locals 0
    .param p1, "featureGestureListener"    # Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->mFeatureGestureListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    .line 313
    return-void
.end method
