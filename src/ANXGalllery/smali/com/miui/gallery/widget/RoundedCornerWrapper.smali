.class public Lcom/miui/gallery/widget/RoundedCornerWrapper;
.super Landroid/widget/LinearLayout;
.source "RoundedCornerWrapper.java"


# instance fields
.field private final mMaskLeftBottom:Landroid/graphics/Bitmap;

.field private final mMaskLeftTop:Landroid/graphics/Bitmap;

.field private final mMaskRightBottom:Landroid/graphics/Bitmap;

.field private final mMaskRightTop:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mPaint:Landroid/graphics/Paint;

    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f02024c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mMaskLeftTop:Landroid/graphics/Bitmap;

    .line 36
    const v1, 0x7f02024e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mMaskRightTop:Landroid/graphics/Bitmap;

    .line 37
    const v1, 0x7f02024b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mMaskLeftBottom:Landroid/graphics/Bitmap;

    .line 38
    const v1, 0x7f02024d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mMaskRightBottom:Landroid/graphics/Bitmap;

    .line 39
    iget-object v1, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 40
    iget-object v1, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 46
    .local v7, "count":I
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;->getPaddingLeft()I

    move-result v9

    .line 48
    .local v9, "paddingLeft":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;->getPaddingRight()I

    move-result v10

    .line 49
    .local v10, "paddingRight":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;->getPaddingTop()I

    move-result v11

    .line 50
    .local v11, "paddingTop":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;->getPaddingBottom()I

    move-result v8

    .line 51
    .local v8, "paddingBottom":I
    iget-object v0, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mMaskLeftTop:Landroid/graphics/Bitmap;

    int-to-float v1, v9

    int-to-float v2, v11

    iget-object v3, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mMaskRightTop:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mMaskRightTop:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v10

    int-to-float v1, v1

    int-to-float v2, v11

    iget-object v3, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mMaskLeftBottom:Landroid/graphics/Bitmap;

    int-to-float v1, v9

    invoke-virtual {p0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mMaskLeftBottom:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mPaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mMaskRightBottom:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mMaskRightBottom:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v10

    int-to-float v1, v1

    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RoundedCornerWrapper;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mMaskRightBottom:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/gallery/widget/RoundedCornerWrapper;->mPaint:Landroid/graphics/Paint;

    .line 55
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 57
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 58
    return-void
.end method
