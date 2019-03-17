.class public Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ThumbDrawable.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBounds:Landroid/graphics/Rect;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawingLeft:I

.field private mDrawingRight:I

.field private mLocation:Landroid/graphics/Point;

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "mDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    .line 17
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mLocation:Landroid/graphics/Point;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mPadding:Landroid/graphics/Rect;

    .line 20
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawingLeft:I

    .line 21
    const v0, 0x7fffffff

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawingRight:I

    .line 22
    const-string v0, "ThumbDrawable"

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    return-void
.end method

.method private getDrawableExcludedPaddingCenterX()I
    .locals 4

    .prologue
    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 83
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 84
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 47
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getLocationX()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getDrawableExcludedPaddingCenterX()I

    move-result v0

    return v0
.end method

.method public getPaddingRight()I
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getDrawableExcludedPaddingCenterX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public moveLeftThumb(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getDrawableExcludedPaddingCenterX()I

    move-result v0

    .line 59
    .local v0, "center":I
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    sub-int v2, p1, v0

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 61
    return-void
.end method

.method public moveProgressThumb(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getDrawableExcludedPaddingCenterX()I

    move-result v0

    .line 65
    .local v0, "center":I
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    sub-int v2, p1, v0

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 66
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 67
    return-void
.end method

.method public moveRightThumb(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 72
    return-void
.end method

.method public moveTo(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getDrawableExcludedPaddingCenterX()I

    move-result v0

    .line 76
    .local v0, "center":I
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    sub-int v2, p1, v0

    iget-object v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 77
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 78
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mLocation:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getDrawableExcludedPaddingCenterX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mLocation:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 105
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 114
    return-void
.end method

.method public setDrawingArea(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawingLeft:I

    .line 41
    iput p2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mDrawingRight:I

    .line 42
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 33
    return-void
.end method

.method public setSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, p1, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 55
    return-void
.end method
