.class public Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;
.super Landroid/view/View;
.source "VideoPlayProgress.java"


# instance fields
.field private defaultColor:I

.field private paint:Landroid/graphics/Paint;

.field private startX:I

.field private startY:I

.field private stopX:I

.field private stopY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    iput v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->startX:I

    .line 16
    iput v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->stopX:I

    .line 19
    const-string v0, "#4da0f8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->defaultColor:I

    .line 23
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->startX:I

    .line 16
    iput v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->stopX:I

    .line 19
    const-string v0, "#4da0f8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->defaultColor:I

    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->paint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->defaultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->startX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->startY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->stopX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->stopY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->invalidate()V

    .line 42
    return-void
.end method

.method public updateWidth(IIII)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "stopX"    # I
    .param p4, "stopY"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->startX:I

    .line 46
    iput p2, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->startY:I

    .line 47
    iput p3, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->stopX:I

    .line 48
    iput p4, p0, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->stopY:I

    .line 49
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/VideoPlayProgress;->invalidate()V

    .line 50
    return-void
.end method
