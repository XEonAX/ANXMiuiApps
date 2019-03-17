.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;
.super Ljava/lang/Object;
.source "GLRectF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Iterator"
.end annotation


# instance fields
.field private final mBitmapHeight:F

.field private final mBitmapWidth:F

.field private mGLRectF:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

.field private mSize:I

.field private final mXPixel:F

.field private mXStep:F

.field private final mYPixel:F

.field private mYStep:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .param p1, "bitmapWidth"    # F
    .param p2, "bitmapHeight"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mGLRectF:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    .line 88
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mBitmapWidth:F

    .line 89
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mBitmapHeight:F

    .line 90
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mBitmapWidth:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mXPixel:F

    .line 91
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mBitmapHeight:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mYPixel:F

    .line 92
    return-void
.end method


# virtual methods
.method public countMiddleRect(Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;)V
    .locals 5
    .param p1, "preRect"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
    .param p2, "currentRect"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->width()F

    move-result v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mBitmapWidth:F

    mul-float v1, v3, v4

    .line 96
    .local v1, "maskWidthX":F
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->height()F

    move-result v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mBitmapHeight:F

    mul-float v2, v3, v4

    .line 97
    .local v2, "maskWidthY":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 99
    .local v0, "maskWidth":F
    const/high16 v3, 0x40a00000    # 5.0f

    div-float v3, v0, v3

    invoke-virtual {p0, p1, p2, v3}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->countMiddleRect(Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;F)V

    .line 100
    return-void
.end method

.method public countMiddleRect(Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;F)V
    .locals 8
    .param p1, "preRect"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
    .param p2, "currentRect"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
    .param p3, "pixelSpacing"    # F

    .prologue
    .line 103
    invoke-virtual {p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->centerX()F

    move-result v6

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->centerX()F

    move-result v7

    sub-float v0, v6, v7

    .line 104
    .local v0, "distanceX":F
    invoke-virtual {p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->centerY()F

    move-result v6

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->centerY()F

    move-result v7

    sub-float v1, v6, v7

    .line 105
    .local v1, "distanceY":F
    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mXPixel:F

    div-float v2, v0, v6

    .line 106
    .local v2, "xPixelSize":F
    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mYPixel:F

    div-float v4, v1, v6

    .line 107
    .local v4, "yPixelSize":F
    div-float v6, v2, p3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 108
    .local v3, "xSize":I
    div-float v6, v4, p3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 109
    .local v5, "ySize":I
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mSize:I

    .line 110
    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mSize:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float v6, v0, v6

    iput v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mXStep:F

    .line 111
    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mSize:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float v6, v1, v6

    iput v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mYStep:F

    .line 112
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mGLRectF:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    invoke-virtual {v6, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->set(Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;)V

    .line 113
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mSize:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next([F)V
    .locals 3
    .param p1, "vertex"    # [F

    .prologue
    .line 120
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mSize:I

    if-gez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "iterator size error!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mGLRectF:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mXStep:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mYStep:F

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->offset(FF)V

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mGLRectF:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->getVertex([F)V

    .line 125
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->mSize:I

    .line 126
    return-void
.end method
