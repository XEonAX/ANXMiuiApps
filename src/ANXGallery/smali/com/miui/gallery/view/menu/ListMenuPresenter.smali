.class public Lcom/miui/gallery/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/miui/gallery/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

.field mMenuLayout:I

.field mMenuView:Lcom/miui/gallery/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    .prologue
    .line 66
    const v0, 0x7f040071

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/gallery/view/menu/ListMenuPresenter;-><init>(III)V

    .line 67
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "menuLayout"    # I
    .param p2, "itemLayoutRes"    # I
    .param p3, "themeRes"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p2, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 76
    iput p1, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mMenuLayout:I

    .line 77
    iput p3, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mThemeRes:I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayout"    # I
    .param p3, "itemLayoutRes"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/miui/gallery/view/menu/ListMenuPresenter;-><init>(III)V

    .line 56
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/view/menu/ListMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/ListMenuPresenter;

    .prologue
    .line 28
    iget v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/miui/gallery/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/gallery/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/miui/gallery/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mMenuLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/ExpandedMenuView;

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/ExpandedMenuView;

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/ExpandedMenuView;

    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/ExpandedMenuView;

    .line 116
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 82
    iget v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_3

    .line 83
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/gallery/view/menu/MenuPresenter;)V

    .line 94
    :cond_1
    iput-object p2, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 98
    :cond_2
    return-void

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 86
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V

    .line 160
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/miui/gallery/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 176
    return-void
.end method

.method public onSubMenuSelected(Lcom/miui/gallery/view/menu/SubMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/miui/gallery/view/menu/SubMenuBuilder;

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 148
    :cond_0
    new-instance v0, Lcom/miui/gallery/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/miui/gallery/view/menu/MenuDialogHelper;-><init>(Lcom/miui/gallery/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/miui/gallery/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/miui/gallery/view/menu/MenuBuilder;)Z

    .line 152
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCallback(Lcom/miui/gallery/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    .line 141
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuPresenter;->mAdapter:Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 136
    :cond_0
    return-void
.end method
