.class public abstract Lcom/miui/gallery/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/miui/gallery/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/view/menu/ActionMenuView$OpenCloseAnimator;,
        Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;
    }
.end annotation


# instance fields
.field private mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

.field private mOpenCloseAnimator:Lcom/miui/gallery/view/menu/ActionMenuView$OpenCloseAnimator;

.field private mPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 41
    new-instance v0, Lcom/miui/gallery/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-direct {v0, p0}, Lcom/miui/gallery/view/menu/ActionMenuView$OpenCloseAnimator;-><init>(Lcom/miui/gallery/view/menu/ActionMenuView;)V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/gallery/view/menu/ActionMenuView$OpenCloseAnimator;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public filterLeftoverView(I)Z
    .locals 2
    .param p1, "childIndex"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 111
    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuView;->removeView(Landroid/view/View;)V

    .line 112
    const/4 v1, 0x1

    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 117
    new-instance v0, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 119
    .local v0, "params":Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 124
    new-instance v0, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 129
    instance-of v1, p1, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;)V

    .line 133
    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 143
    .local v0, "result":Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 144
    return-object v0
.end method

.method public abstract getCollapsedHeight()I
.end method

.method public getPresenter()Lcom/miui/gallery/view/menu/ActionMenuPresenter;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuView;->mPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public hasBackgroundView()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lcom/miui/gallery/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuView;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 159
    return-void
.end method

.method public invokeItem(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuView;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 70
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuView;->mPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuView;->mPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuView;->mPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuView;->mPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuView;->mPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 81
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuView;->mPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 97
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0, v1, v1}, Lcom/miui/gallery/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/miui/gallery/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 105
    return-void
.end method

.method public setPresenter(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuView;->mPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    .line 61
    return-void
.end method
