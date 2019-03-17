.class public Lcom/miui/gallery/movie/ui/view/PlayProgressView;
.super Landroid/view/View;
.source "PlayProgressView.java"


# instance fields
.field private defaultColor:I

.field private mProgress:F

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    const-string v0, "#4da0f8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->defaultColor:I

    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const-string v0, "#4da0f8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->defaultColor:I

    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->paint:Landroid/graphics/Paint;

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->defaultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    iget v0, p0, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->mProgress:F

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v0, v2

    iget-object v5, p0, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 39
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->mProgress:F

    .line 43
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/PlayProgressView;->invalidate()V

    .line 44
    return-void
.end method
