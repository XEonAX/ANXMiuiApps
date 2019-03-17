.class public Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;
.super Landroid/view/View;
.source "StrokeBoardView.java"


# instance fields
.field private mBitmapBounds:Landroid/graphics/RectF;

.field private mBitmapToCanvas:Landroid/graphics/Matrix;

.field private mCanvasBounds:Landroid/graphics/RectF;

.field mIsSetBitmap:Z

.field private mStrokeImageHelper:Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mCanvasBounds:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapBounds:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mCanvasBounds:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapBounds:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mCanvasBounds:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapBounds:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mStrokeImageHelper:Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

    .line 39
    return-void
.end method

.method private resetMatrix()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mCanvasBounds:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 68
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mIsSetBitmap:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mStrokeImageHelper:Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mCanvasBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mCanvasBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mCanvasBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mCanvasBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mCanvasBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->resetMatrix()V

    .line 64
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mIsSetBitmap:Z

    .line 43
    if-nez p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapBounds:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapBounds:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 50
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->resetMatrix()V

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->invalidate()V

    .line 52
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeBoardView;->mBitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method
