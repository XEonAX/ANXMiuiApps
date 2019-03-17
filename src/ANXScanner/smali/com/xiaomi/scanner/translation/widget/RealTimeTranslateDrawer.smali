.class public Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;
.super Ljava/lang/Object;
.source "RealTimeTranslateDrawer.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mTextPath:Landroid/graphics/Path;

.field private orientation:I

.field private polyPaint:Landroid/graphics/Paint;

.field private polyPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "RealTimeTranslateDrawer"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawPoly(Landroid/graphics/Canvas;ILjava/util/List;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v5, 0x0

    .line 90
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 113
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->initPloyPaint()V

    .line 96
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->polyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->polyPath:Landroid/graphics/Path;

    if-nez v2, :cond_1

    .line 100
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->polyPath:Landroid/graphics/Path;

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->polyPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 103
    iget-object v3, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->polyPath:Landroid/graphics/Path;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 105
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 106
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 107
    iget-object v3, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->polyPath:Landroid/graphics/Path;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->polyPath:Landroid/graphics/Path;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->polyPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->polyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawText(Landroid/graphics/Canvas;Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "line"    # Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;

    .prologue
    const/16 v12, 0x10e

    const/16 v11, 0x5a

    const/high16 v5, 0x3f800000    # 1.0f

    const v3, 0x3f59999a    # 0.85f

    .line 44
    iget-object v1, p2, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->toText:Ljava/lang/String;

    .line 45
    .local v1, "text":Ljava/lang/String;
    iget v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->orientation:I

    invoke-virtual {p2, v0}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->rect(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 46
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getBgColor()I

    move-result v6

    .line 47
    .local v6, "bgColor":I
    invoke-virtual {p2}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getTextColor()I

    move-result v9

    .line 48
    .local v9, "textColor":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v4, v0, v3

    .line 49
    .local v4, "height":F
    iget v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->orientation:I

    if-eq v0, v11, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->orientation:I

    if-ne v0, v12, :cond_1

    .line 50
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v4, v0, v3

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 58
    .local v7, "originWidth":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float v10, v0, v7

    .line 59
    .local v10, "xScale":F
    iget v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->orientation:I

    if-eq v0, v11, :cond_2

    iget v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->orientation:I

    if-ne v0, v12, :cond_3

    .line 60
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    div-float v10, v0, v7

    .line 62
    :cond_3
    iget v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->orientation:I

    invoke-virtual {p2, v0}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getPosition(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v6, v0}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->drawPoly(Landroid/graphics/Canvas;ILjava/util/List;)V

    .line 63
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 64
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->orientation:I

    invoke-virtual {p2, v0}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getPosition(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->getTextPath(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v2

    .line 66
    .local v2, "path":Landroid/graphics/Path;
    if-eqz v2, :cond_4

    .line 67
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 69
    :cond_4
    return-void
.end method

.method private getTextPath(Ljava/util/List;)Landroid/graphics/Path;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .prologue
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mTextPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mTextPath:Landroid/graphics/Path;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 76
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mTextPath:Landroid/graphics/Path;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 77
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mTextPath:Landroid/graphics/Path;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 78
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mTextPath:Landroid/graphics/Path;

    return-object v0
.end method

.method private initPloyPaint()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->polyPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->polyPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->polyPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public drawTranslateText(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mLines:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;

    .line 35
    .local v1, "line":Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    invoke-direct {p0, p1, v1}, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->drawText(Landroid/graphics/Canvas;Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    .end local v1    # "line":Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public setLines(Ljava/util/List;I)V
    .locals 0
    .param p2, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;>;"
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->mLines:Ljava/util/List;

    .line 27
    iput p2, p0, Lcom/xiaomi/scanner/translation/widget/RealTimeTranslateDrawer;->orientation:I

    .line 28
    return-void
.end method
