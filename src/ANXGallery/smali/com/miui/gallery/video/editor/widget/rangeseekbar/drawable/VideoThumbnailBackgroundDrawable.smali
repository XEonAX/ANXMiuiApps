.class public Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VideoThumbnailBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;
    }
.end annotation


# instance fields
.field private mAspectRatio:F

.field private mBitmapProvider:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;

.field private mBounds:Landroid/graphics/Rect;

.field private mDrawingLeft:I

.field private mDrawingRect:Landroid/graphics/Rect;

.field private mDrawingRight:I

.field private mLayoutDirection:I

.field private mPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBounds:Landroid/graphics/Rect;

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    .line 23
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingLeft:I

    .line 24
    const v0, 0x7fffffff

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRight:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBitmapProvider:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mLayoutDirection:I

    .line 140
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    .line 48
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBitmapProvider:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;

    if-eqz v8, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingLeft:I

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRight:I

    iget-object v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 53
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .line 54
    .local v0, "available":I
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v8, v9

    .line 55
    .local v5, "mHeight":I
    int-to-float v8, v5

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mAspectRatio:F

    mul-float/2addr v8, v9

    float-to-int v3, v8

    .line 56
    .local v3, "itemWidth":I
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mLayoutDirection:I

    if-nez v8, :cond_5

    .line 58
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int v6, v8, v9

    .line 59
    .local v6, "mLeftStart":I
    const/4 v2, 0x0

    .line 61
    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    mul-int v9, v3, v2

    add-int/2addr v9, v6

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 62
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRight:I

    if-le v8, v9, :cond_2

    .line 102
    .end local v6    # "mLeftStart":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 105
    .end local v0    # "available":I
    .end local v2    # "i":I
    .end local v3    # "itemWidth":I
    .end local v5    # "mHeight":I
    :cond_1
    return-void

    .line 65
    .restart local v0    # "available":I
    .restart local v2    # "i":I
    .restart local v3    # "itemWidth":I
    .restart local v5    # "mHeight":I
    .restart local v6    # "mLeftStart":I
    :cond_2
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    add-int/lit8 v9, v2, 0x1

    mul-int/2addr v9, v3

    add-int/2addr v9, v6

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 66
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingLeft:I

    if-ge v8, v9, :cond_4

    .line 59
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_4
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 71
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 72
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v4, v8, v6

    .line 73
    .local v4, "location":I
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBitmapProvider:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;

    invoke-interface {v8, v4, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 74
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 75
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v12, v8, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 80
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "i":I
    .end local v4    # "location":I
    .end local v6    # "mLeftStart":I
    :cond_5
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v7, v8, v9

    .line 81
    .local v7, "mRightStart":I
    const/4 v2, 0x0

    .line 83
    .restart local v2    # "i":I
    :goto_2
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    mul-int v9, v3, v2

    sub-int v9, v7, v9

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 84
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingLeft:I

    if-lt v8, v9, :cond_0

    .line 87
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    add-int/lit8 v9, v2, 0x1

    mul-int/2addr v9, v3

    sub-int v9, v7, v9

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 88
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRight:I

    if-le v8, v9, :cond_7

    .line 81
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 92
    :cond_7
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 93
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 94
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v4, v7, v8

    .line 95
    .restart local v4    # "location":I
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBitmapProvider:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;

    invoke-interface {v8, v4, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_6

    .line 97
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v12, v8, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 133
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 122
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mAspectRatio:F

    .line 44
    return-void
.end method

.method public setCLayoutDirection(I)V
    .locals 0
    .param p1, "mLayoutDirection"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mLayoutDirection:I

    .line 36
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 127
    return-void
.end method

.method public setDrawingArea(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingLeft:I

    .line 30
    iput p2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mDrawingRight:I

    .line 31
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    return-void
.end method

.method public setmBitmapProvider(Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;)V
    .locals 0
    .param p1, "mBitmapProvider"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->mBitmapProvider:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;

    .line 40
    return-void
.end method
