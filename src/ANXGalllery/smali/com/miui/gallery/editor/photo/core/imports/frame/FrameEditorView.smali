.class public Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;
.super Landroid/view/View;
.source "FrameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapDisplayRect:Landroid/graphics/RectF;

.field private mBitmapMatrix:Landroid/graphics/Matrix;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapRatio:F

.field private mBitmapRect:Landroid/graphics/RectF;

.field private mRatio:F

.field private mScaleProgress:F

.field private mViewRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapRect:Landroid/graphics/RectF;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 30
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mRatio:F

    .line 31
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mScaleProgress:F

    .line 32
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapRatio:F

    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapRect:Landroid/graphics/RectF;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 30
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mRatio:F

    .line 31
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mScaleProgress:F

    .line 32
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapRatio:F

    .line 42
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapRect:Landroid/graphics/RectF;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 30
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mRatio:F

    .line 31
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mScaleProgress:F

    .line 32
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapRatio:F

    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundColor:I

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    return-void
.end method

.method private refreshBackgroundRect()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 104
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v1, v3, v4

    .line 107
    .local v1, "viewRatio":F
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mRatio:F

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 109
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 110
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 111
    .local v2, "width":F
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mRatio:F

    div-float v0, v2, v3

    .line 112
    .local v0, "height":F
    div-float/2addr v0, v5

    .line 113
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 114
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 124
    :goto_0
    return-void

    .line 116
    .end local v0    # "height":F
    .end local v2    # "width":F
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 117
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 118
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 119
    .restart local v0    # "height":F
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mRatio:F

    mul-float v2, v0, v3

    .line 120
    .restart local v2    # "width":F
    div-float/2addr v2, v5

    .line 121
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v4, v2

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 122
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    add-float/2addr v4, v2

    iput v4, v3, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method private refreshBitmapRect()V
    .locals 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mScaleProgress:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mScaleProgress:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 101
    return-void
.end method

.method private refreshSize()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->refreshBackgroundRect()V

    .line 92
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->refreshBitmapRect()V

    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public export()Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mRatio:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mScaleProgress:F

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView$FrameEntry;-><init>(FF)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mRatio:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapRatio:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mScaleProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 79
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mViewRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->refreshSize()V

    .line 85
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 57
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmap:Landroid/graphics/Bitmap;

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mBitmapRatio:F

    .line 60
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->refreshSize()V

    .line 61
    return-void
.end method

.method public setRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mRatio:F

    .line 65
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->refreshSize()V

    .line 66
    return-void
.end method

.method public setScaleProgress(F)V
    .locals 3
    .param p1, "scaleProgress"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    const v0, 0x3ecccccd    # 0.4f

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->mScaleProgress:F

    .line 70
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->refreshBitmapRect()V

    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEditorView;->invalidate()V

    .line 72
    return-void
.end method
