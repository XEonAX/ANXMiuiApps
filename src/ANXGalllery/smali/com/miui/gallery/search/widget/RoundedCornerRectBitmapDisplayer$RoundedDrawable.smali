.class public Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedCornerRectBitmapDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedDrawable"
.end annotation


# instance fields
.field protected final bitmapShader:Landroid/graphics/BitmapShader;

.field protected final cornerRadius:[I

.field protected final mBitmapRect:Landroid/graphics/RectF;

.field protected final mRect:Landroid/graphics/RectF;

.field protected final paint:Landroid/graphics/Paint;

.field protected path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[I)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cornerRadius"    # [I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    .line 75
    iput-object p2, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->cornerRadius:[I

    .line 77
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 86
    invoke-direct {p0}, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->createPath()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->path:Landroid/graphics/Path;

    .line 87
    return-void
.end method

.method private createPath()Landroid/graphics/Path;
    .locals 10

    .prologue
    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    .line 90
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 92
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->cornerRadius:[I

    aget v0, v2, v8

    .line 93
    .local v0, "currentRadius":I
    iget-object v2, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 94
    if-eqz v0, :cond_0

    .line 95
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    mul-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    mul-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v1, v2, v3, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->cornerRadius:[I

    const/4 v3, 0x1

    aget v0, v2, v3

    .line 100
    iget-object v2, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    if-eqz v0, :cond_1

    .line 102
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    mul-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v1, v2, v3, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->cornerRadius:[I

    const/4 v3, 0x2

    aget v0, v2, v3

    .line 107
    iget-object v2, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    if-eqz v0, :cond_2

    .line 109
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->cornerRadius:[I

    const/4 v3, 0x3

    aget v0, v2, v3

    .line 114
    iget-object v2, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    if-eqz v0, :cond_3

    .line 116
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    mul-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2, v9, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->cornerRadius:[I

    aget v4, v4, v8

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 121
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 147
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 126
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 127
    iget-object v4, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 128
    invoke-direct {p0}, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->createPath()Landroid/graphics/Path;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->path:Landroid/graphics/Path;

    .line 131
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 132
    .local v2, "shaderMatrix":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v3, v4, v5

    .line 133
    .local v3, "widthScale":F
    iget-object v4, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v0, v4, v5

    .line 134
    .local v0, "heightScale":F
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 135
    .local v1, "scale":F
    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 136
    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    .line 137
    iget-object v4, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v7, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 141
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v4, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 142
    return-void

    .line 138
    :cond_1
    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 162
    return-void
.end method
