.class Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FrameItemPreviewDrawable.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mRatio:F

.field private mRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;

.field private mSelectColor:I

.field private mSolidNormalColor:I

.field private mStrokeDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRatio:F

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRectF:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mPaint:Landroid/graphics/Paint;

    .line 33
    const v0, 0x7f100066

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mSolidNormalColor:I

    .line 34
    const v0, 0x7f100065

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mSelectColor:I

    .line 35
    const v0, 0x7f020150

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, -0x8

    const/high16 v7, 0x40000000    # 2.0f

    .line 40
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 41
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v2, v5

    .line 42
    .local v2, "size":F
    const/high16 v3, 0x41900000    # 18.0f

    .line 43
    .local v3, "sizePadding":F
    sub-float/2addr v2, v3

    .line 46
    iget v5, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRatio:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 47
    move v4, v2

    .line 48
    .local v4, "width":F
    iget v5, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRatio:F

    div-float v1, v4, v5

    .line 53
    .local v1, "height":F
    :goto_0
    div-float/2addr v4, v7

    .line 54
    div-float/2addr v1, v7

    .line 55
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mSolidNormalColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 59
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 61
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v10, v10}, Landroid/graphics/Rect;->inset(II)V

    .line 62
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 63
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 64
    return-void

    .line 50
    .end local v1    # "height":F
    .end local v4    # "width":F
    :cond_0
    move v1, v2

    .line 51
    .restart local v1    # "height":F
    iget v5, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRatio:F

    mul-float v4, v1, v5

    .restart local v4    # "width":F
    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, -0x2

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "states"    # [I

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "select":Z
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p1, v2

    .line 84
    .local v1, "state":I
    const v4, 0x10100a1

    if-ne v1, v4, :cond_1

    .line 85
    const/4 v0, 0x1

    .line 89
    .end local v1    # "state":I
    :cond_0
    if-eqz v0, :cond_2

    .line 90
    iget v2, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mSelectColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 94
    :goto_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v2

    return v2

    .line 83
    .restart local v1    # "state":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "state":I
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mStrokeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->invalidateSelf()V

    .line 78
    :cond_0
    return-void
.end method

.method public setRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 108
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->mRatio:F

    .line 109
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->invalidateSelf()V

    .line 110
    return-void
.end method
