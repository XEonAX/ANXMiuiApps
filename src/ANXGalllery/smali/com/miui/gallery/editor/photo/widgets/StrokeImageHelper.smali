.class public Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;
.super Ljava/lang/Object;
.source "StrokeImageHelper.java"


# instance fields
.field private mContentBounds:Landroid/graphics/RectF;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 26
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0277

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "imageMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->fixContentBounds()V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 51
    return-void
.end method

.method private fixContentBounds()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v5

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v5

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmapBounds"    # Landroid/graphics/Rect;
    .param p3, "imageMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 39
    invoke-direct {p0, p1, p3}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 40
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "content"    # Landroid/graphics/RectF;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->fixContentBounds()V

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 35
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmapBounds"    # Landroid/graphics/RectF;
    .param p3, "imageMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 45
    return-void
.end method
