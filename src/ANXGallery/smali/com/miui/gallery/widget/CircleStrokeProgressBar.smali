.class public Lcom/miui/gallery/widget/CircleStrokeProgressBar;
.super Lcom/miui/gallery/widget/CircleProgressBar;
.source "CircleStrokeProgressBar.java"


# instance fields
.field private mMiddleStrokeColors:[I

.field private mMiddleStrokePaint:Landroid/graphics/Paint;

.field private mMiddleStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setIndeterminate(Z)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->mMiddleStrokePaint:Landroid/graphics/Paint;

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->mMiddleStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->mMiddleStrokeColors:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->mMiddleStrokeWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->getCurrentLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 43
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->mMiddleStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->mMiddleStrokeColors:[I

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->getCurrentLevel()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->mMiddleStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->mMiddleStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->getRate()F

    move-result v3

    mul-float/2addr v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->mMiddleStrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 49
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/CircleProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMiddleStrokeColors([IF)V
    .locals 0
    .param p1, "middleColors"    # [I
    .param p2, "strokeWidth"    # F

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->mMiddleStrokeColors:[I

    .line 35
    iput p2, p0, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->mMiddleStrokeWidth:F

    .line 36
    return-void
.end method
