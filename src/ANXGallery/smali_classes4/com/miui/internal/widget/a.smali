.class abstract Lcom/miui/internal/widget/a;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field protected mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

.field protected mContentHeight:I

.field protected mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

.field protected mSplitActionBar:Z

.field protected mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

.field protected mSplitWhenNarrow:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/miui/internal/widget/a;->clearAnimation()V

    .line 123
    invoke-virtual {p0}, Lcom/miui/internal/widget/a;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/miui/internal/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    if-nez p1, :cond_0

    sget v1, Lcom/miui/internal/R$anim;->action_bar_fade_in:I

    goto :goto_0

    .line 126
    :cond_0
    sget v1, Lcom/miui/internal/R$anim;->action_bar_fade_out:I

    .line 124
    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/a;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/miui/internal/widget/a;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/a;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/miui/internal/widget/a;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    iget-object v0, p0, Lcom/miui/internal/widget/a;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 136
    :cond_1
    return-void
.end method

.method bb()I
    .locals 1

    .line 75
    const v0, 0x10102ce

    return v0
.end method

.method public dismissPopupMenus()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/miui/internal/widget/a;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/internal/widget/a;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 173
    :cond_0
    return-void
.end method

.method public getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/miui/internal/widget/a;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    return-object v0
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/miui/internal/widget/a;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/miui/internal/widget/a;->mContentHeight:I

    return v0
.end method

.method public getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/miui/internal/widget/a;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/miui/internal/widget/a;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/a;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/miui/internal/widget/a;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/a;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/miui/internal/widget/a;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/a;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1

    .line 177
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    .line 181
    sub-int/2addr p2, p4

    .line 183
    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 57
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lmiui/R$styleable;->ActionBar:[I

    invoke-virtual {p0}, Lcom/miui/internal/widget/a;->bb()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    sget v1, Lmiui/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/a;->setContentHeight(I)V

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    iget-boolean v0, p0, Lcom/miui/internal/widget/a;->mSplitWhenNarrow:Z

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/miui/internal/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/a;->setSplitActionBar(Z)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/a;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/miui/internal/widget/a;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    :cond_2
    return-void
.end method

.method protected positionChild(Landroid/view/View;III)I
    .locals 8

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 189
    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int v5, p3, p4

    .line 190
    add-int v6, p2, v0

    add-int v7, v5, v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v2 .. v7}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 191
    return v0
.end method

.method protected positionChildInverse(Landroid/view/View;III)I
    .locals 8

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 197
    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int v5, p3, p4

    .line 198
    sub-int v4, p2, v0

    add-int v7, v5, v1

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 199
    return v0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .line 150
    new-instance v0, Lcom/miui/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/AbsActionBarView$1;-><init>(Lcom/miui/internal/widget/a;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/a;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/miui/internal/widget/a;->mContentHeight:I

    .line 98
    invoke-virtual {p0}, Lcom/miui/internal/widget/a;->requestLayout()V

    .line 99
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/miui/internal/widget/a;->mSplitActionBar:Z

    .line 85
    return-void
.end method

.method public setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/miui/internal/widget/a;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    .line 107
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/miui/internal/widget/a;->mSplitWhenNarrow:Z

    .line 94
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/miui/internal/widget/a;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 141
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/miui/internal/widget/a;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/a;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
