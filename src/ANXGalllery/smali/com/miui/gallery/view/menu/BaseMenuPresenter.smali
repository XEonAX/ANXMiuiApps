.class public abstract Lcom/miui/gallery/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lcom/miui/gallery/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lcom/miui/gallery/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 47
    iput p2, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 48
    iput p3, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 49
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 120
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 124
    return-void
.end method

.method public abstract bindItemView(Lcom/miui/gallery/view/menu/MenuItemImpl;Lcom/miui/gallery/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcom/miui/gallery/view/menu/MenuView$ItemView;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public getItemView(Lcom/miui/gallery/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 152
    instance-of v1, p2, Lcom/miui/gallery/view/menu/MenuView$ItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 153
    check-cast v0, Lcom/miui/gallery/view/menu/MenuView$ItemView;

    .line 157
    .local v0, "itemView":Lcom/miui/gallery/view/menu/MenuView$ItemView;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->bindItemView(Lcom/miui/gallery/view/menu/MenuItemImpl;Lcom/miui/gallery/view/menu/MenuView$ItemView;)V

    .line 158
    check-cast v0, Landroid/view/View;

    .end local v0    # "itemView":Lcom/miui/gallery/view/menu/MenuView$ItemView;
    return-object v0

    .line 155
    :cond_0
    invoke-virtual {p0, p3}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/miui/gallery/view/menu/MenuView$ItemView;

    move-result-object v0

    .restart local v0    # "itemView":Lcom/miui/gallery/view/menu/MenuView$ItemView;
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/gallery/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuView;

    iput-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    iget-object v1, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/miui/gallery/view/menu/MenuView;->initialize(Lcom/miui/gallery/view/menu/MenuBuilder;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    iput-object p2, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 56
    return-void
.end method

.method public onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcom/miui/gallery/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/SubMenuBuilder;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/miui/gallery/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/miui/gallery/view/menu/MenuBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/miui/gallery/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    .line 128
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mId:I

    .line 208
    return-void
.end method

.method public shouldIncludeItem(ILcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 9
    .param p1, "cleared"    # Z

    .prologue
    .line 72
    iget-object v5, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    check-cast v5, Landroid/view/ViewGroup;

    .line 73
    .local v5, "parent":Landroid/view/ViewGroup;
    if-nez v5, :cond_1

    .line 110
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 78
    .local v0, "childIndex":I
    iget-object v7, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    invoke-interface {v7}, Lcom/miui/gallery/view/menu/MenuView;->hasBackgroundView()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 79
    const/4 v0, 0x1

    .line 81
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    if-eqz v7, :cond_7

    .line 82
    iget-object v7, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v7}, Lcom/miui/gallery/view/menu/MenuBuilder;->flagActionItems()V

    .line 83
    iget-object v7, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v7}, Lcom/miui/gallery/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 84
    .local v6, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 85
    .local v2, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {p0, v0, v2}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILcom/miui/gallery/view/menu/MenuItemImpl;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 86
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, "convertView":Landroid/view/View;
    instance-of v7, v1, Lcom/miui/gallery/view/menu/MenuView$ItemView;

    if-eqz v7, :cond_6

    move-object v7, v1

    check-cast v7, Lcom/miui/gallery/view/menu/MenuView$ItemView;

    .line 88
    invoke-interface {v7}, Lcom/miui/gallery/view/menu/MenuView$ItemView;->getItemData()Lcom/miui/gallery/view/menu/MenuItemImpl;

    move-result-object v4

    .line 89
    .local v4, "oldItem":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :goto_1
    invoke-virtual {p0, v2, v1, v5}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->getItemView(Lcom/miui/gallery/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "itemView":Landroid/view/View;
    if-eq v2, v4, :cond_4

    .line 92
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 96
    :cond_4
    if-eq v3, v1, :cond_5

    .line 97
    invoke-virtual {p0, v3, v0}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 99
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v3    # "itemView":Landroid/view/View;
    .end local v4    # "oldItem":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 105
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    .end local v6    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :cond_7
    :goto_2
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 106
    iget-object v7, p0, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    invoke-interface {v7, v0}, Lcom/miui/gallery/view/menu/MenuView;->filterLeftoverView(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
