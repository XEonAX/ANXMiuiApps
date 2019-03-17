.class Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;
.super Landroid/view/View;
.source "TranslateLineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/TranslateLineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineView"
.end annotation


# instance fields
.field private height:F

.field private lineColor:I

.field private paint:Landroid/graphics/Paint;

.field private width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 184
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->paint:Landroid/graphics/Paint;

    .line 191
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->lineColor:I

    .line 194
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/high16 v8, 0x40400000    # 3.0f

    .line 205
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 206
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->lineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 208
    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->height:F

    div-float v2, v0, v8

    iget v3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->width:F

    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->height:F

    div-float v4, v0, v8

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 209
    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->height:F

    div-float/2addr v0, v8

    mul-float v2, v0, v9

    iget v3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->width:F

    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->height:F

    div-float/2addr v0, v8

    mul-float v4, v0, v9

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 211
    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->width:F

    div-float v3, v0, v8

    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->width:F

    div-float v5, v0, v8

    iget v6, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->height:F

    iget-object v7, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 212
    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->width:F

    div-float/2addr v0, v8

    mul-float v3, v0, v9

    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->width:F

    div-float/2addr v0, v8

    mul-float v5, v0, v9

    iget v6, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->height:F

    iget-object v7, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 213
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 199
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->width:F

    .line 200
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;->height:F

    .line 201
    return-void
.end method
