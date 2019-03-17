.class public Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;
.super Landroid/view/View;
.source "PaintSizeView.java"


# instance fields
.field private mDiameter:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->mPaint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b024b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 41
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 43
    .local v1, "width":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 44
    .local v0, "height":F
    div-float v2, v1, v5

    div-float v3, v0, v5

    iget v4, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->mDiameter:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    return-void
.end method

.method public setDiameter(I)V
    .locals 0
    .param p1, "diameter"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->mDiameter:I

    .line 49
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->invalidate()V

    .line 50
    return-void
.end method
