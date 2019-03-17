.class public Lcom/miui/gallery/view/menu/SubMenuBuilder;
.super Lcom/miui/gallery/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

.field private mParentMenu:Lcom/miui/gallery/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentMenu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p3, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 29
    iput-object p3, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 30
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public collapseItemActionView(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->collapseItemActionView(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public dispatchMenuItemSelected(Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 72
    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->expandItemActionView(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lcom/miui/gallery/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/miui/gallery/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/miui/gallery/view/menu/MenuBuilder$Callback;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->setCallback(Lcom/miui/gallery/view/menu/MenuBuilder$Callback;)V

    .line 63
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 92
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 87
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 102
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 97
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 107
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 82
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 77
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 35
    return-void
.end method
