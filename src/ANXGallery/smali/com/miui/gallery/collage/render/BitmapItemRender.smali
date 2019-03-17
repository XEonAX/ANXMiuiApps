.class public Lcom/miui/gallery/collage/render/BitmapItemRender;
.super Ljava/lang/Object;
.source "BitmapItemRender.java"


# instance fields
.field private mBitmapBound:Landroid/graphics/RectF;

.field private mBitmapInitBound:Landroid/graphics/RectF;

.field private mBitmapInsideBound:Landroid/graphics/RectF;

.field private mBitmapMatrix:Landroid/graphics/Matrix;

.field private mDrawingMatrix:Landroid/graphics/Matrix;

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPorterDuffModeIn:Landroid/graphics/PorterDuffXfermode;

.field private mPorterDuffModeOut:Landroid/graphics/PorterDuffXfermode;

.field private mUserMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapBound:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mUserMatrix:Landroid/graphics/Matrix;

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapMatrix:Landroid/graphics/Matrix;

    .line 24
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPorterDuffModeOut:Landroid/graphics/PorterDuffXfermode;

    .line 25
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPorterDuffModeIn:Landroid/graphics/PorterDuffXfermode;

    .line 26
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public drawBitmapItem(Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;Landroid/graphics/RectF;Landroid/graphics/Canvas;F)V
    .locals 9
    .param p1, "bitmapRenderData"    # Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    .param p2, "canvasBound"    # Landroid/graphics/RectF;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "scaleOffset"    # F

    .prologue
    .line 35
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 36
    iget-object v6, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    .line 37
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapBound:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 38
    iget-boolean v0, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->transition:Z

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-boolean v3, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->mirror:Z

    iget v4, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->rotate:I

    iget-object v5, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmapInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mUserMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mUserMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInsideBound:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mUserMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 54
    iget-object v7, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->maskDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    .local v7, "mask":Landroid/graphics/drawable/Drawable;
    iget v8, p1, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->radius:F

    .line 56
    .local v8, "radius":F
    if-eqz v7, :cond_1

    .line 57
    iget v0, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-virtual {p3, p2, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 59
    invoke-virtual {v7, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPorterDuffModeOut:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v6, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 63
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 81
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "mask":Landroid/graphics/drawable/Drawable;
    .end local v8    # "radius":F
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "mask":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "radius":F
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    mul-float v1, v8, p4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 67
    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-virtual {p3, p2, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPorterDuffModeIn:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v6, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v6, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 77
    .end local v7    # "mask":Landroid/graphics/drawable/Drawable;
    .end local v8    # "radius":F
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapInitBound:Landroid/graphics/RectF;

    invoke-static {v0, v1, p2, v2}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/BitmapItemRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v6, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
