.class public Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedBitmapDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedDrawable"
.end annotation


# instance fields
.field protected final bitmapShader:Landroid/graphics/BitmapShader;

.field protected final cornerRadius:F

.field protected final mBitmapRect:Landroid/graphics/RectF;

.field protected final mRect:Landroid/graphics/RectF;

.field protected final margin:I

.field protected final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cornerRadius"    # I
    .param p3, "margin"    # I

    .prologue
    const/4 v5, 0x1

    .line 74
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    .line 75
    int-to-float v0, p2

    iput v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->cornerRadius:F

    .line 76
    iput p3, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->margin:I

    .line 78
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, p3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, p3

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 84
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 85
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 86
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->cornerRadius:F

    iget v2, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->cornerRadius:F

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 103
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 91
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->margin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->margin:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->margin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->margin:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 95
    .local v0, "shaderMatrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 96
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 98
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 118
    return-void
.end method
