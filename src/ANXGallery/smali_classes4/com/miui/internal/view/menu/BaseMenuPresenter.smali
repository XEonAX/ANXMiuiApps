.class public abstract Lcom/miui/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuPresenter;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field protected mMenuView:Lcom/miui/internal/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;

.field private mr:I

.field private np:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

.field private nq:I

.field private nr:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 47
    iput p2, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->nq:I

    .line 48
    iput p3, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->nr:I

    .line 49
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 124
    return-void
.end method

.method public abstract bindItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Lcom/miui/internal/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 199
    const/4 p1, 0x0

    return p1
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView$ItemView;
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->nr:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/MenuView$ItemView;

    return-object p1
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 195
    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mr:I

    return v0
.end method

.method public getItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 152
    instance-of v0, p2, Lcom/miui/internal/view/menu/MenuView$ItemView;

    if-eqz v0, :cond_0

    .line 153
    check-cast p2, Lcom/miui/internal/view/menu/MenuView$ItemView;

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0, p3}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView$ItemView;

    move-result-object p2

    .line 157
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->bindItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Lcom/miui/internal/view/menu/MenuView$ItemView;)V

    .line 158
    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->nq:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/MenuView;

    iput-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    .line 61
    iget-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-interface {p1, v0}, Lcom/miui/internal/view/menu/MenuView;->initialize(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 62
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 54
    iget-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    iput-object p2, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 56
    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->np:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->np:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->np:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->np:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->np:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    .line 128
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mr:I

    .line 208
    return-void
.end method

.method public shouldIncludeItem(ILcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 177
    const/4 p1, 0x1

    return p1
.end method

.method public updateMenuView(Z)V
    .locals 7

    .line 72
    iget-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast p1, Landroid/view/ViewGroup;

    .line 73
    if-nez p1, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    nop

    .line 78
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/MenuView;->hasBackgroundView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 79
    nop

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_6

    .line 82
    iget-object v2, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 83
    iget-object v2, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 85
    invoke-virtual {p0, v0, v3}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 87
    instance-of v5, v4, Lcom/miui/internal/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_2

    .line 88
    move-object v5, v4

    check-cast v5, Lcom/miui/internal/view/menu/MenuView$ItemView;

    invoke-interface {v5}, Lcom/miui/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 89
    :goto_2
    invoke-virtual {p0, v3, v4, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 90
    if-eq v3, v5, :cond_3

    .line 92
    invoke-virtual {v6, v1}, Landroid/view/View;->setPressed(Z)V

    .line 96
    :cond_3
    if-eq v6, v4, :cond_4

    .line 97
    invoke-virtual {p0, v6, v0}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 99
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 101
    :cond_5
    goto :goto_1

    .line 105
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 106
    iget-object v1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    invoke-interface {v1, v0}, Lcom/miui/internal/view/menu/MenuView;->filterLeftoverView(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 110
    :cond_7
    return-void
.end method
