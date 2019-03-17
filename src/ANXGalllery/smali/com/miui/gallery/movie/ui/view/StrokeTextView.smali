.class public Lcom/miui/gallery/movie/ui/view/StrokeTextView;
.super Landroid/widget/TextView;
.source "StrokeTextView.java"


# instance fields
.field private mOutlineTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    .line 19
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    .line 20
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    .line 25
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    .line 31
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->init()V

    .line 33
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 36
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 37
    .local v0, "paint":Landroid/text/TextPaint;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 38
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->getGravity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 41
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 61
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 63
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 52
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 53
    .local v0, "outlineText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->measure(II)V

    .line 57
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/StrokeTextView;->mOutlineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method
