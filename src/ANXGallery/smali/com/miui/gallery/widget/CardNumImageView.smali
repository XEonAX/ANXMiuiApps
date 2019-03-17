.class public Lcom/miui/gallery/widget/CardNumImageView;
.super Lcom/miui/gallery/widget/ForegroundImageView;
.source "CardNumImageView.java"


# instance fields
.field private mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mNum:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/CardNumImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/CardNumImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/widget/ForegroundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget-object v2, Lcom/miui/gallery/R$styleable;->CardNumImageView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 32
    .local v1, "defaultTextSize":I
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/widget/CardNumImageView;->mNum:I

    .line 34
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/widget/CardNumImageView;->mTextSize:I

    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/widget/CardNumImageView;->initPaint()V

    .line 40
    return-void

    .line 37
    :cond_0
    iput v1, p0, Lcom/miui/gallery/widget/CardNumImageView;->mTextSize:I

    goto :goto_0
.end method

.method private drawNumText(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 64
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CardNumImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CardNumImageView;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 65
    .local v1, "rect":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/widget/CardNumImageView;->mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/widget/CardNumImageView;->mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 66
    .local v0, "baseline":I
    iget v2, p0, Lcom/miui/gallery/widget/CardNumImageView;->mNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/gallery/widget/CardNumImageView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 67
    return-void
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x101

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/CardNumImageView;->mTextPaint:Landroid/text/TextPaint;

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/widget/CardNumImageView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/miui/gallery/widget/CardNumImageView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/widget/CardNumImageView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/widget/CardNumImageView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/CardNumImageView;->mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/widget/CardNumImageView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 48
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/ForegroundImageView;->draw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/CardNumImageView;->drawNumText(Landroid/graphics/Canvas;)V

    .line 61
    return-void
.end method

.method public setNum(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/gallery/widget/CardNumImageView;->mNum:I

    if-eq v0, p1, :cond_0

    .line 52
    iput p1, p0, Lcom/miui/gallery/widget/CardNumImageView;->mNum:I

    .line 53
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CardNumImageView;->invalidate()V

    .line 55
    :cond_0
    return-void
.end method
