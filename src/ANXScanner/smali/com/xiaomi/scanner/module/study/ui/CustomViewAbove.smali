.class public Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# instance fields
.field private mContent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 33
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 37
    sub-int v1, p4, p2

    .line 38
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 39
    .local v0, "height":I
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->mContent:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 41
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-static {v4, p1}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->getDefaultSize(II)I

    move-result v3

    .line 46
    .local v3, "width":I
    invoke-static {v4, p2}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->getDefaultSize(II)I

    move-result v2

    .line 47
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->setMeasuredDimension(II)V

    .line 48
    invoke-static {p1, v4, v3}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .line 49
    .local v1, "contentWidth":I
    invoke-static {p2, v4, v2}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .line 50
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->mContent:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 52
    :cond_0
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->removeView(Landroid/view/View;)V

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->mContent:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/study/ui/CustomViewAbove;->addView(Landroid/view/View;)V

    .line 28
    return-void
.end method
