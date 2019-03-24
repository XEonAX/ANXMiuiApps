.class public Lcom/miui/internal/view/menu/TabletActionMenuView;
.super Lcom/miui/internal/view/menu/ActionMenuView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .locals 1

    .line 31
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/TabletActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    .line 33
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v0, :cond_0

    .line 34
    const/4 p1, 0x0

    return p1

    .line 36
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->filterLeftoverView(I)Z

    move-result p1

    return p1
.end method

.method public getCollapsedHeight()I
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/TabletActionMenuView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 21
    const/4 p1, 0x1

    return p1
.end method
