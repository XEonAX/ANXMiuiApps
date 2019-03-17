.class public Lcom/miui/gallery/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mDrawableRectInset:I

.field private mFillColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/miui/gallery/widget/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 29
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/miui/gallery/widget/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 40
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 42
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    .line 47
    iput v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderColor:I

    .line 48
    iput v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderWidth:I

    .line 49
    iput v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillColor:I

    .line 50
    iput v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRectInset:I

    .line 77
    sget-object v1, Lcom/miui/gallery/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderColor:I

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderWidth:I

    .line 81
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderOverlay:Z

    .line 82
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillColor:I

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->init()V

    .line 87
    return-void
.end method

.method private applyColorFilter()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 255
    :cond_0
    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 258
    if-nez p1, :cond_0

    move-object v0, v3

    .line 281
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 262
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 263
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 269
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    instance-of v4, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    .line 270
    const/4 v4, 0x2

    const/4 v5, 0x2

    sget-object v6, Lcom/miui/gallery/widget/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 276
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 277
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    .line 281
    goto :goto_0

    .line 272
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Lcom/miui/gallery/widget/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/miui/gallery/widget/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mReady:Z

    .line 93
    iget-boolean v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->setup()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mSetupPending:Z

    .line 97
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 286
    iget-boolean v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mReady:Z

    if-nez v0, :cond_1

    .line 287
    iput-boolean v6, p0, Lcom/miui/gallery/widget/CircleImageView;->mSetupPending:Z

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 296
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->invalidate()V

    goto :goto_0

    .line 300
    :cond_3
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 302
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 303
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 305
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 307
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 310
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 311
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 312
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapHeight:I

    .line 315
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapWidth:I

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 318
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iget-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderRadius:F

    .line 320
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 321
    iget-boolean v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderOverlay:Z

    if-nez v0, :cond_4

    .line 322
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v5

    iget-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRadius:F

    .line 325
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRectInset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRectInset:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 327
    :cond_5
    const-string v0, "CircleImageView"

    const-string v1, "invalidate drawable inset %d"

    iget v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRectInset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRectInset:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRectInset:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 331
    :cond_6
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->applyColorFilter()V

    .line 332
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->updateShaderMatrix()V

    .line 333
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->invalidate()V

    goto/16 :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 337
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 338
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapHeight:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 339
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 340
    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderWidth:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillColor:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/miui/gallery/widget/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillColor:I

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    iget v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderWidth:I

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderRadius:F

    iget-object v3, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 136
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->setup()V

    .line 137
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 2
    .param p1, "adjustViewBounds"    # Z

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adjustViewBounds not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1, "borderColor"    # I

    .prologue
    .line 144
    iget v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    iput p1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderColor:I

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .param p1, "borderColorRes"    # I

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CircleImageView;->setBorderColor(I)V

    .line 155
    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1
    .param p1, "borderOverlay"    # Z

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderOverlay:Z

    .line 198
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->setup()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "borderWidth"    # I

    .prologue
    .line 180
    iget v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iput p1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBorderWidth:I

    .line 185
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->setup()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/widget/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 247
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->applyColorFilter()V

    .line 248
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setDrawableInset(IZ)V
    .locals 1
    .param p1, "drawableInset"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 202
    iget v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRectInset:I

    if-ne v0, p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iput p1, p0, Lcom/miui/gallery/widget/CircleImageView;->mDrawableRectInset:I

    .line 206
    if-eqz p2, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->updateShaderMatrix()V

    .line 208
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 162
    iget v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillColor:I

    if-ne p1, v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    iput p1, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillColor:I

    .line 167
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setFillColorResource(I)V
    .locals 1
    .param p1, "fillColorRes"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CircleImageView;->setFillColor(I)V

    .line 173
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    iput-object p1, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 216
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->setup()V

    .line 217
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 223
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->setup()V

    .line 224
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 230
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->setup()V

    .line 231
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 236
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/gallery/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 237
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleImageView;->setup()V

    .line 238
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 106
    sget-object v0, Lcom/miui/gallery/widget/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScaleType %s not supported."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    return-void
.end method
