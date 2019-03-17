.class public Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;
.super Landroid/view/View;
.source "DocumentPreviewCropView.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mCorners:[F

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mScaleX:F

.field private mScaleY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "PreviewCropView"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->initPaint()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->initPaint()V

    .line 31
    return-void
.end method

.method private convertX(F)F
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 104
    iget v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 107
    .end local p1    # "x":F
    :goto_0
    return p1

    .restart local p1    # "x":F
    :cond_0
    iget v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mScaleX:F

    mul-float/2addr p1, v0

    goto :goto_0
.end method

.method private convertY(F)F
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 112
    iget v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 115
    .end local p1    # "y":F
    :goto_0
    return p1

    .restart local p1    # "y":F
    :cond_0
    iget v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mScaleY:F

    mul-float/2addr p1, v0

    goto :goto_0
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPaint:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public hasSetPreviewSize()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewWidth:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mCorners:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mCorners:[F

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 80
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw: cornerLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mCorners:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mCorners:[F

    array-length v0, v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    :goto_1
    return-void

    .line 80
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 84
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mCorners:[F

    .line 85
    .local v6, "borderLines":[F
    array-length v0, v6

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 87
    aget v0, v6, v11

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertX(F)F

    move-result v1

    const/4 v0, 0x5

    aget v0, v6, v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertY(F)F

    move-result v2

    const/4 v0, 0x6

    aget v0, v6, v0

    .line 88
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertX(F)F

    move-result v3

    const/4 v0, 0x7

    aget v0, v6, v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertY(F)F

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 87
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    aget v0, v6, v7

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertX(F)F

    move-result v1

    aget v0, v6, v8

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertY(F)F

    move-result v2

    aget v0, v6, v9

    .line 91
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertX(F)F

    move-result v3

    aget v0, v6, v10

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertY(F)F

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 90
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 93
    aget v0, v6, v7

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertX(F)F

    move-result v1

    aget v0, v6, v8

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertY(F)F

    move-result v2

    aget v0, v6, v11

    .line 94
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertX(F)F

    move-result v3

    const/4 v0, 0x5

    aget v0, v6, v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertY(F)F

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    const/4 v0, 0x6

    aget v0, v6, v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertX(F)F

    move-result v1

    const/4 v0, 0x7

    aget v0, v6, v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertY(F)F

    move-result v2

    aget v0, v6, v9

    .line 97
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertX(F)F

    move-result v3

    aget v0, v6, v10

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->convertY(F)F

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 96
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 69
    iget v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewWidth:I

    if-eqz v0, :cond_0

    .line 70
    int-to-float v0, p1

    iget v1, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mScaleX:F

    .line 71
    int-to-float v0, p2

    iget v1, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mScaleY:F

    .line 73
    :cond_0
    return-void
.end method

.method public setCorners([F)V
    .locals 1
    .param p1, "corners"    # [F

    .prologue
    .line 41
    if-nez p1, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mCorners:[F

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mCorners:[F

    .line 43
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->invalidate()V

    .line 45
    :cond_1
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 48
    if-ge p1, p2, :cond_1

    .line 49
    iput p1, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewWidth:I

    .line 50
    iput p2, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewHeight:I

    .line 55
    :goto_0
    sget-object v0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "setPreviewSize: %d x %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewWidth:I

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mScaleX:F

    .line 58
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mScaleY:F

    .line 60
    :cond_0
    return-void

    .line 52
    :cond_1
    iput p2, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewWidth:I

    .line 53
    iput p1, p0, Lcom/xiaomi/scanner/ui/DocumentPreviewCropView;->mPreviewHeight:I

    goto :goto_0
.end method
