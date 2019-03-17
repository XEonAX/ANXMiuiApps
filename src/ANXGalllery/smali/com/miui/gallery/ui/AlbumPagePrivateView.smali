.class public Lcom/miui/gallery/ui/AlbumPagePrivateView;
.super Landroid/view/View;
.source "AlbumPagePrivateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumPagePrivateView$OnPrivateColorChangeListener;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBlueColor:I

.field private mColorChangeListener:Lcom/miui/gallery/ui/AlbumPagePrivateView$OnPrivateColorChangeListener;

.field private mCurrPosition:I

.field private mGreenColor:I

.field private mIsBackgroundGradient:Z

.field private mRedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 72
    const/16 v0, 0xff

    .line 73
    .local v0, "alpha":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPagePrivateView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3da3d70a    # 0.08f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 74
    .local v1, "getDarkStartPosition":I
    iget-boolean v4, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mIsBackgroundGradient:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mCurrPosition:I

    if-le v4, v1, :cond_0

    .line 75
    iget v4, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mCurrPosition:I

    sub-int v3, v4, v1

    .line 76
    .local v3, "offset":I
    int-to-float v4, v3

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPagePrivateView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x42b40000    # 90.0f

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 78
    .end local v3    # "offset":I
    :cond_0
    iget v4, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mRedColor:I

    iget v5, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mGreenColor:I

    iget v6, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mBlueColor:I

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 79
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mColorChangeListener:Lcom/miui/gallery/ui/AlbumPagePrivateView$OnPrivateColorChangeListener;

    if-eqz v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mColorChangeListener:Lcom/miui/gallery/ui/AlbumPagePrivateView$OnPrivateColorChangeListener;

    iget v5, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mRedColor:I

    iget v6, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mGreenColor:I

    iget v7, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mBlueColor:I

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/miui/gallery/ui/AlbumPagePrivateView$OnPrivateColorChangeListener;->onColorChange(I)V

    .line 82
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPagePrivateView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x3ea3d70a    # 0.32f

    mul-float v2, v4, v5

    .line 84
    .local v2, "newY":F
    iget v4, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mCurrPosition:I

    int-to-float v4, v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPagePrivateView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mCurrPosition:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    sub-float v2, v4, v5

    .line 86
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mBitmap:Landroid/graphics/Bitmap;

    .line 88
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPagePrivateView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    .line 86
    invoke-virtual {p1, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    .end local v2    # "newY":F
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 55
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mRedColor:I

    .line 56
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mGreenColor:I

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mBlueColor:I

    .line 58
    return-void
.end method

.method public setBackgroundGradient(Z)V
    .locals 0
    .param p1, "backgroundGradient"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mIsBackgroundGradient:Z

    .line 66
    return-void
.end method

.method public setBackgroundResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPagePrivateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mBitmap:Landroid/graphics/Bitmap;

    .line 62
    return-void
.end method

.method public setOnColorChangeListener(Lcom/miui/gallery/ui/AlbumPagePrivateView$OnPrivateColorChangeListener;)V
    .locals 0
    .param p1, "onColorChangeListener"    # Lcom/miui/gallery/ui/AlbumPagePrivateView$OnPrivateColorChangeListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPagePrivateView;->mColorChangeListener:Lcom/miui/gallery/ui/AlbumPagePrivateView$OnPrivateColorChangeListener;

    .line 52
    return-void
.end method
