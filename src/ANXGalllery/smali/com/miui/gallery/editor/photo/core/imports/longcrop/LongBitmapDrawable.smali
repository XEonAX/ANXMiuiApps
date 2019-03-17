.class public Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LongBitmapDrawable.java"


# instance fields
.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "longBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    const/4 v8, 0x0

    new-array v8, v8, [Landroid/graphics/Bitmap;

    iput-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 21
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 24
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 26
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 28
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 29
    .local v6, "restHeight":I
    new-instance v5, Landroid/graphics/Paint;

    const/4 v8, 0x4

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 31
    .local v5, "paint":Landroid/graphics/Paint;
    :goto_1
    if-lez v6, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v3, v8, v6

    .line 33
    .local v3, "currY":I
    const/16 v8, 0x400

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 34
    .local v2, "currBmpHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v7, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 35
    .local v1, "currBmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 36
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    neg-int v9, v3

    int-to-float v9, v9

    invoke-virtual {v0, p1, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 38
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sub-int/2addr v6, v2

    .line 40
    goto :goto_1

    .line 41
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "currBmp":Landroid/graphics/Bitmap;
    .end local v2    # "currBmpHeight":I
    .end local v3    # "currY":I
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/graphics/Bitmap;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/graphics/Bitmap;

    iput-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 48
    .local v7, "bounds":Landroid/graphics/Rect;
    if-eqz v7, :cond_0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v6, v0, v8

    .line 52
    .local v6, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 55
    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 57
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 58
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 3

    .prologue
    .line 68
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 73
    :cond_1
    return v1

    .line 69
    :cond_2
    const/4 v1, 0x0

    .line 70
    .local v1, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 83
    return-void
.end method
