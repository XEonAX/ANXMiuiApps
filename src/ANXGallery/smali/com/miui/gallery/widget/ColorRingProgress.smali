.class public Lcom/miui/gallery/widget/ColorRingProgress;
.super Landroid/view/View;
.source "ColorRingProgress.java"


# instance fields
.field private mBackColor:I

.field private mColorInterval:I

.field private mColorIntervalPercent:F

.field private mForeColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private mRectF:Landroid/graphics/RectF;

.field private mThickness:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/miui/gallery/widget/ColorRingProgress;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/miui/gallery/widget/ColorRingProgress;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/widget/ColorRingProgress;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    sget-object v1, Lcom/miui/gallery/R$styleable;->ColorRingProgress:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mForeColor:I

    .line 52
    const v1, -0x694709

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mBackColor:I

    .line 53
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mThickness:I

    .line 54
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mColorInterval:I

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mRectF:Landroid/graphics/RectF;

    .line 58
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mThickness:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x43b40000    # 360.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ColorRingProgress;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ColorRingProgress;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    if-gtz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/high16 v8, -0x3d4c0000    # -90.0f

    .line 93
    .local v8, "minAngle":F
    add-float v7, v11, v8

    .line 95
    .local v7, "maxAngle":F
    iget v0, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mColorIntervalPercent:F

    mul-float/2addr v0, v11

    div-float v6, v0, v10

    .line 96
    .local v6, "halfIntervalAngle":F
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mProgress:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mColorIntervalPercent:F

    mul-float/2addr v1, v10

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mProgress:F

    invoke-static {v0, v9}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    :cond_2
    const/4 v6, 0x0

    .line 100
    :cond_3
    sub-float v2, v8, v6

    .line 103
    .local v2, "startAngle":F
    iget-object v0, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    mul-float v3, v10, v6

    .line 105
    .local v3, "sweepAngle":F
    cmpl-float v0, v3, v9

    if-lez v0, :cond_4

    .line 106
    iget-object v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mForeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    add-float/2addr v2, v3

    .line 112
    iget v0, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mProgress:F

    mul-float/2addr v0, v11

    sub-float v3, v0, v6

    .line 113
    add-float v0, v2, v3

    cmpl-float v0, v0, v7

    if-lez v0, :cond_5

    .line 114
    sub-float v3, v7, v2

    .line 116
    :cond_5
    cmpl-float v0, v3, v9

    if-lez v0, :cond_6

    .line 117
    iget-object v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    add-float/2addr v2, v3

    .line 123
    mul-float v3, v10, v6

    .line 124
    cmpl-float v0, v3, v9

    if-lez v0, :cond_7

    .line 125
    iget-object v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 129
    :cond_7
    iget-object v0, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mBackColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    add-float/2addr v2, v3

    .line 131
    sub-float v0, v7, v2

    sub-float v3, v0, v6

    .line 132
    cmpl-float v0, v3, v9

    if-lez v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 81
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mThickness:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mThickness:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ColorRingProgress;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mThickness:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ColorRingProgress;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mThickness:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 83
    iget v0, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mColorInterval:I

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ColorRingProgress;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mColorIntervalPercent:F

    .line 84
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mBackColor:I

    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ColorRingProgress;->invalidate()V

    .line 72
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mForeColor:I

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ColorRingProgress;->invalidate()V

    .line 77
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/ColorRingProgress;->mProgress:F

    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ColorRingProgress;->invalidate()V

    .line 67
    return-void
.end method
