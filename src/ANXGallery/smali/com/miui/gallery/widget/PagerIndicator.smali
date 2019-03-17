.class public Lcom/miui/gallery/widget/PagerIndicator;
.super Landroid/view/View;
.source "PagerIndicator.java"


# static fields
.field private static DEFAULT_CIRCLE_RADIUS_VALUE:I

.field private static DEFAULT_CIRCLE_SPACING_VALUE:I

.field private static DEFAULT_SELECTED_COLOR_VALUE:I

.field private static DEFAULT_UNSELECTED_COLOR_VALUE:I


# instance fields
.field private mCount:I

.field private mIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mSelectedColor:I

.field private mSpacing:I

.field private mUnselectedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    const/16 v0, 0xf

    sput v0, Lcom/miui/gallery/widget/PagerIndicator;->DEFAULT_CIRCLE_SPACING_VALUE:I

    .line 15
    const/16 v0, 0xa

    sput v0, Lcom/miui/gallery/widget/PagerIndicator;->DEFAULT_CIRCLE_RADIUS_VALUE:I

    .line 16
    sput v1, Lcom/miui/gallery/widget/PagerIndicator;->DEFAULT_SELECTED_COLOR_VALUE:I

    .line 17
    sput v1, Lcom/miui/gallery/widget/PagerIndicator;->DEFAULT_UNSELECTED_COLOR_VALUE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/PagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/PagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget-object v1, Lcom/miui/gallery/R$styleable;->PagerIndicator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    sget v2, Lcom/miui/gallery/widget/PagerIndicator;->DEFAULT_CIRCLE_SPACING_VALUE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/PagerIndicator;->mSpacing:I

    .line 39
    const/4 v1, 0x3

    sget v2, Lcom/miui/gallery/widget/PagerIndicator;->DEFAULT_CIRCLE_RADIUS_VALUE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/PagerIndicator;->mRadius:I

    .line 40
    const/4 v1, 0x0

    sget v2, Lcom/miui/gallery/widget/PagerIndicator;->DEFAULT_SELECTED_COLOR_VALUE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/PagerIndicator;->mSelectedColor:I

    .line 41
    sget v1, Lcom/miui/gallery/widget/PagerIndicator;->DEFAULT_UNSELECTED_COLOR_VALUE:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/PagerIndicator;->mUnselectedColor:I

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/PagerIndicator;->mPaint:Landroid/graphics/Paint;

    .line 44
    iget-object v1, p0, Lcom/miui/gallery/widget/PagerIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    return-void
.end method

.method private measureHeight(I)I
    .locals 5
    .param p1, "heightSpec"    # I

    .prologue
    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 91
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 93
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 94
    move v0, v2

    .line 101
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 96
    .end local v0    # "result":I
    :cond_1
    iget v3, p0, Lcom/miui/gallery/widget/PagerIndicator;->mRadius:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/miui/gallery/widget/PagerIndicator;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/gallery/widget/PagerIndicator;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 97
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 98
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 6
    .param p1, "widthSpec"    # I

    .prologue
    .line 73
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 74
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 76
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 77
    move v0, v2

    .line 85
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 79
    .end local v0    # "result":I
    :cond_1
    iget v3, p0, Lcom/miui/gallery/widget/PagerIndicator;->mRadius:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/miui/gallery/widget/PagerIndicator;->mCount:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/miui/gallery/widget/PagerIndicator;->mSpacing:I

    iget v5, p0, Lcom/miui/gallery/widget/PagerIndicator;->mCount:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/gallery/widget/PagerIndicator;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 80
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PagerIndicator;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 81
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 82
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PagerIndicator;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/gallery/widget/PagerIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 52
    iget v0, p0, Lcom/miui/gallery/widget/PagerIndicator;->mRadius:I

    .line 53
    .local v0, "cx":I
    iget v1, p0, Lcom/miui/gallery/widget/PagerIndicator;->mRadius:I

    .line 54
    .local v1, "cy":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/miui/gallery/widget/PagerIndicator;->mCount:I

    if-ge v2, v3, :cond_1

    .line 55
    iget v3, p0, Lcom/miui/gallery/widget/PagerIndicator;->mIndex:I

    if-ne v2, v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/miui/gallery/widget/PagerIndicator;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/gallery/widget/PagerIndicator;->mSelectedColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    :goto_1
    int-to-float v3, v0

    int-to-float v4, v1

    iget v5, p0, Lcom/miui/gallery/widget/PagerIndicator;->mRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/miui/gallery/widget/PagerIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 61
    iget v3, p0, Lcom/miui/gallery/widget/PagerIndicator;->mRadius:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    iget v4, p0, Lcom/miui/gallery/widget/PagerIndicator;->mSpacing:I

    add-int v0, v3, v4

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/widget/PagerIndicator;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/gallery/widget/PagerIndicator;->mUnselectedColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 64
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/PagerIndicator;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/miui/gallery/widget/PagerIndicator;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/widget/PagerIndicator;->setMeasuredDimension(II)V

    .line 69
    return-void
.end method

.method public showIndex(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 105
    add-int/lit8 v0, p1, 0x1

    if-le v0, p2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 106
    :cond_0
    iput p1, p0, Lcom/miui/gallery/widget/PagerIndicator;->mIndex:I

    .line 107
    iget v0, p0, Lcom/miui/gallery/widget/PagerIndicator;->mCount:I

    if-eq v0, p2, :cond_1

    .line 108
    iput p2, p0, Lcom/miui/gallery/widget/PagerIndicator;->mCount:I

    .line 109
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PagerIndicator;->requestLayout()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PagerIndicator;->invalidate()V

    goto :goto_0
.end method
