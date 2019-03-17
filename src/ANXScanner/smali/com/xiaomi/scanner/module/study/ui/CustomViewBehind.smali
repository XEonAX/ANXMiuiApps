.class public Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"


# instance fields
.field private mChildrenEnabled:Z

.field private mContent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 54
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->mChildrenEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    .line 58
    sub-int v1, p4, p2

    .line 59
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 60
    .local v0, "height":I
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 63
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-static {v4, p1}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->getDefaultSize(II)I

    move-result v3

    .line 68
    .local v3, "width":I
    invoke-static {v4, p2}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->getDefaultSize(II)I

    move-result v2

    .line 69
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->setMeasuredDimension(II)V

    .line 70
    invoke-static {p1, v4, v3}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .line 71
    .local v1, "contentWidth":I
    invoke-static {p2, v4, v2}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .line 72
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 73
    iget-object v4, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 75
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->mChildrenEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 39
    return-void
.end method

.method public setChildrenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->mChildrenEnabled:Z

    .line 34
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->mContent:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/study/ui/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 30
    return-void
.end method
