.class Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field final synthetic sE:Lcom/miui/internal/widget/ActionBarView;

.field sH:Lcom/miui/internal/view/menu/MenuItemImpl;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    .line 1578
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/widget/ActionBarView$1;)V
    .locals 0

    .line 1578
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 4

    .line 1682
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    iget-object p1, p1, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    instance-of p1, p1, Landroid/view/CollapsibleActionView;

    if-eqz p1, :cond_0

    .line 1683
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    iget-object p1, p1, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    check-cast p1, Landroid/view/CollapsibleActionView;

    invoke-interface {p1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1686
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1687
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->h(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1688
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    .line 1689
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->m(Lcom/miui/internal/widget/ActionBarView;)I

    move-result p1

    const/4 v1, 0x2

    and-int/2addr p1, v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1690
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->i(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1692
    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->m(Lcom/miui/internal/widget/ActionBarView;)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 1693
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->e(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1694
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->n(Lcom/miui/internal/widget/ActionBarView;)V

    goto :goto_0

    .line 1696
    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1, v3}, Lcom/miui/internal/widget/ActionBarView;->a(Lcom/miui/internal/widget/ActionBarView;Z)V

    .line 1699
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->j(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->o(Lcom/miui/internal/widget/ActionBarView;)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 1700
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->j(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1702
    :cond_4
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->k(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->o(Lcom/miui/internal/widget/ActionBarView;)I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 1703
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->k(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1705
    :cond_5
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->l(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->m(Lcom/miui/internal/widget/ActionBarView;)I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_6

    .line 1706
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->l(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1708
    :cond_6
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->h(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1709
    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sH:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 1710
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    .line 1711
    invoke-virtual {p2, v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1713
    return v3
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 1641
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    .line 1642
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->f(Lcom/miui/internal/widget/ActionBarView;)V

    .line 1643
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->h(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->g(Lcom/miui/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1644
    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sH:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 1645
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    iget-object p1, p1, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    if-eq p1, v0, :cond_0

    .line 1646
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1648
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->h(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    if-eq p1, v0, :cond_1

    .line 1649
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->h(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1652
    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->i(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 1653
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->i(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1656
    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->e(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1657
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/miui/internal/widget/ActionBarView;->a(Lcom/miui/internal/widget/ActionBarView;Z)V

    .line 1659
    :cond_3
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->j(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1660
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->j(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1662
    :cond_4
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->k(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1663
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->k(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1665
    :cond_5
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->l(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1666
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->l(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1668
    :cond_6
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    .line 1669
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1671
    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    iget-object p2, p2, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    instance-of p2, p2, Landroid/view/CollapsibleActionView;

    if-eqz p2, :cond_7

    .line 1672
    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sE:Lcom/miui/internal/widget/ActionBarView;

    iget-object p2, p2, Lcom/miui/internal/widget/ActionBarView;->sz:Landroid/view/View;

    check-cast p2, Landroid/view/CollapsibleActionView;

    invoke-interface {p2}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1675
    :cond_7
    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    .line 1636
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1718
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;
    .locals 0

    .line 1594
    const/4 p1, 0x0

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 1586
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sH:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    .line 1587
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sH:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    .line 1589
    :cond_0
    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 1590
    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 1632
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 1728
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1723
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .locals 0

    .line 1627
    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 1623
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 4

    .line 1600
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sH:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz p1, :cond_2

    .line 1601
    nop

    .line 1603
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1604
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result p1

    .line 1605
    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1606
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1607
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sH:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-ne v2, v3, :cond_0

    .line 1608
    nop

    .line 1609
    nop

    .line 1614
    const/4 v0, 0x1

    goto :goto_1

    .line 1605
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1614
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1616
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->sH:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    .line 1619
    :cond_2
    return-void
.end method
