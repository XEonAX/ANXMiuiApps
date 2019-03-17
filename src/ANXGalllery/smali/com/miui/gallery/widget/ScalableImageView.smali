.class public Lcom/miui/gallery/widget/ScalableImageView;
.super Lcom/miui/gallery/widget/ForegroundImageView;
.source "ScalableImageView.java"


# instance fields
.field private mMatrixScale:F

.field private mTempMatrix:Landroid/graphics/Matrix;

.field private final sMatrixValues:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/ForegroundImageView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/ScalableImageView;->mMatrixScale:F

    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/ScalableImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/widget/ScalableImageView;->sMatrixValues:[F

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/ScalableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/widget/ForegroundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/ScalableImageView;->mMatrixScale:F

    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/ScalableImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/widget/ScalableImageView;->sMatrixValues:[F

    .line 23
    return-void
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/widget/ScalableImageView;->sMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/widget/ScalableImageView;->sMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private postImageMatrixScale(F)V
    .locals 14
    .param p1, "targetScale"    # F

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScalableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 63
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    const/4 v11, 0x0

    cmpg-float v11, p1, v11

    if-gtz v11, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 68
    .local v2, "dWidth":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 70
    .local v0, "dHeight":I
    if-lez v2, :cond_0

    if-lez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScalableImageView;->getWidth()I

    move-result v9

    .line 73
    .local v9, "vWidth":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScalableImageView;->getHeight()I

    move-result v8

    .line 75
    .local v8, "vHeight":I
    const/high16 v11, 0x3f800000    # 1.0f

    int-to-float v12, v9

    mul-float/2addr v11, v12

    int-to-float v12, v2

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v8

    mul-float/2addr v12, v13

    int-to-float v13, v0

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 76
    .local v10, "viewDrawableScale":F
    int-to-float v11, v2

    mul-float v3, v10, v11

    .line 77
    .local v3, "dWidthScaled":F
    int-to-float v11, v0

    mul-float v1, v10, v11

    .line 79
    .local v1, "dHeightScaled":F
    mul-float v11, p1, v10

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScalableImageView;->getMatrixScale()F

    move-result v12

    div-float v7, v11, v12

    .line 80
    .local v7, "scale":F
    const/4 v11, 0x0

    cmpl-float v11, v7, v11

    if-lez v11, :cond_0

    .line 81
    iget-object v11, p0, Lcom/miui/gallery/widget/ScalableImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScalableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 82
    iget-object v11, p0, Lcom/miui/gallery/widget/ScalableImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 83
    mul-float v11, p1, v3

    int-to-float v12, v9

    sub-float/2addr v11, v12

    neg-float v11, v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    iget-object v12, p0, Lcom/miui/gallery/widget/ScalableImageView;->mTempMatrix:Landroid/graphics/Matrix;

    const/4 v13, 0x2

    invoke-direct {p0, v12, v13}, Lcom/miui/gallery/widget/ScalableImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v12

    sub-float v5, v11, v12

    .line 84
    .local v5, "dx":F
    mul-float v11, p1, v1

    int-to-float v12, v8

    sub-float/2addr v11, v12

    neg-float v11, v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    iget-object v12, p0, Lcom/miui/gallery/widget/ScalableImageView;->mTempMatrix:Landroid/graphics/Matrix;

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lcom/miui/gallery/widget/ScalableImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v12

    sub-float v6, v11, v12

    .line 85
    .local v6, "dy":F
    iget-object v11, p0, Lcom/miui/gallery/widget/ScalableImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 86
    iget-object v11, p0, Lcom/miui/gallery/widget/ScalableImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v11}, Lcom/miui/gallery/widget/ScalableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method


# virtual methods
.method public getMatrixScale()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 97
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScalableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 98
    .local v0, "matrix":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/widget/ScalableImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    .line 98
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    const/4 v2, 0x3

    .line 100
    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/widget/ScalableImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    .line 98
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    return v1
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gallery/widget/ForegroundImageView;->setFrame(IIII)Z

    move-result v0

    .line 28
    .local v0, "change":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScalableImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    .line 29
    iget v1, p0, Lcom/miui/gallery/widget/ScalableImageView;->mMatrixScale:F

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/ScalableImageView;->postImageMatrixScale(F)V

    .line 31
    :cond_0
    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScalableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 37
    .local v0, "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/ForegroundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScalableImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    .line 39
    iget v1, p0, Lcom/miui/gallery/widget/ScalableImageView;->mMatrixScale:F

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/ScalableImageView;->postImageMatrixScale(F)V

    .line 41
    :cond_0
    return-void
.end method

.method public setMatrixScale(F)V
    .locals 1
    .param p1, "targetScale"    # F

    .prologue
    .line 53
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ScalableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    iput p1, p0, Lcom/miui/gallery/widget/ScalableImageView;->mMatrixScale:F

    .line 55
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/ScalableImageView;->postImageMatrixScale(F)V

    .line 56
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/ForegroundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/ScalableImageView;->mMatrixScale:F

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ScalableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 50
    :cond_0
    return-void
.end method
