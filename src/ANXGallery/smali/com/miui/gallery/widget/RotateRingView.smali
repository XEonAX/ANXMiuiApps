.class public Lcom/miui/gallery/widget/RotateRingView;
.super Landroid/view/View;
.source "RotateRingView.java"


# static fields
.field private static final HEAD_POSITIONS:[F


# instance fields
.field private mChangeColors:[I

.field private mCircleX:I

.field private mCircleY:I

.field private mHeadMaxAlpha:I

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mRadius:I

.field private mRectF:Landroid/graphics/RectF;

.field private mRotateMatrix:Landroid/graphics/Matrix;

.field private mStrokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/widget/RotateRingView;->HEAD_POSITIONS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/RotateRingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/RotateRingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v5, 0x60

    const/4 v4, 0x1

    const/16 v3, 0xff

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mRectF:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mStrokeWidth:I

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/widget/RotateRingView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mRadius:I

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 54
    invoke-static {v5, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 55
    invoke-static {v5, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v4

    iput-object v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mChangeColors:[I

    .line 57
    return-void
.end method


# virtual methods
.method public drawRing(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/miui/gallery/widget/RotateRingView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/miui/gallery/widget/RotateRingView;->mProgress:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gallery/widget/RotateRingView;->mCircleX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/widget/RotateRingView;->mCircleY:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 109
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Lcom/miui/gallery/widget/RotateRingView;->mCircleX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/widget/RotateRingView;->mCircleY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/gallery/widget/RotateRingView;->mChangeColors:[I

    sget-object v4, Lcom/miui/gallery/widget/RotateRingView;->HEAD_POSITIONS:[F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 110
    .local v0, "sweepGradient":Landroid/graphics/SweepGradient;
    iget-object v1, p0, Lcom/miui/gallery/widget/RotateRingView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 111
    iget-object v1, p0, Lcom/miui/gallery/widget/RotateRingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 112
    iget-object v1, p0, Lcom/miui/gallery/widget/RotateRingView;->mRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/widget/RotateRingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 113
    return-void
.end method

.method public getCircleHeight()I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/miui/gallery/widget/RotateRingView;->mStrokeWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getHeadMaxAlpha()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mHeadMaxAlpha:I

    return v0
.end method

.method public getHeadMinAlpha()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x60

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/RotateRingView;->drawRing(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 105
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 94
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mCircleX:I

    .line 95
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mCircleY:I

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/gallery/widget/RotateRingView;->mCircleX:I

    iget v2, p0, Lcom/miui/gallery/widget/RotateRingView;->mRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/widget/RotateRingView;->mCircleY:I

    iget v3, p0, Lcom/miui/gallery/widget/RotateRingView;->mRadius:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gallery/widget/RotateRingView;->mCircleX:I

    iget v4, p0, Lcom/miui/gallery/widget/RotateRingView;->mRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/widget/RotateRingView;->mCircleY:I

    iget v5, p0, Lcom/miui/gallery/widget/RotateRingView;->mRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 97
    return-void
.end method

.method public setHeadMaxAlpha(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0xff

    .line 70
    iput p1, p0, Lcom/miui/gallery/widget/RotateRingView;->mHeadMaxAlpha:I

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mChangeColors:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/gallery/widget/RotateRingView;->mHeadMaxAlpha:I

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 72
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RotateRingView;->invalidate()V

    .line 73
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/miui/gallery/widget/RotateRingView;->mProgress:I

    .line 85
    invoke-virtual {p0}, Lcom/miui/gallery/widget/RotateRingView;->invalidate()V

    .line 86
    return-void
.end method

.method public setStartRotateStable()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/RotateRingView;->setAlpha(F)V

    .line 61
    iput v3, p0, Lcom/miui/gallery/widget/RotateRingView;->mHeadMaxAlpha:I

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/widget/RotateRingView;->mChangeColors:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/gallery/widget/RotateRingView;->mHeadMaxAlpha:I

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 63
    return-void
.end method
