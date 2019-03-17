.class public Lcom/xiaomi/scanner/ui/HollowRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HollowRectDrawable.java"


# instance fields
.field private mHeight:I

.field private mLeftPadding:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRightPadding:I

.field private mTopPadding:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "leftPadding"    # I
    .param p2, "topPadding"    # I
    .param p3, "rightPadding"    # I
    .param p4, "height"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    iput p1, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mLeftPadding:I

    .line 22
    iput p2, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mTopPadding:I

    .line 23
    iput p3, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mRightPadding:I

    .line 24
    iput p4, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mHeight:I

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 35
    .local v8, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mTopPadding:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 36
    iget v0, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mTopPadding:I

    int-to-float v2, v0

    iget v0, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mLeftPadding:I

    int-to-float v3, v0

    iget v0, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mTopPadding:I

    iget v4, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 37
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mRightPadding:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mTopPadding:I

    int-to-float v4, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    iget v0, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mTopPadding:I

    iget v2, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mHeight:I

    add-int/2addr v0, v2

    int-to-float v6, v0

    iget-object v7, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 38
    iget v0, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mTopPadding:I

    iget v2, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mHeight:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 39
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 44
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/HollowRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 49
    return-void
.end method
