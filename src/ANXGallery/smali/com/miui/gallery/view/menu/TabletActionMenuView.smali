.class public Lcom/miui/gallery/view/menu/TabletActionMenuView;
.super Lcom/miui/gallery/view/menu/ActionMenuView;
.source "TabletActionMenuView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .locals 3
    .param p1, "childIndex"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/TabletActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    .line 33
    .local v1, "lp":Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_0

    .line 34
    const/4 v2, 0x0

    .line 36
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuView;->filterLeftoverView(I)Z

    move-result v2

    goto :goto_0
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/TabletActionMenuView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
