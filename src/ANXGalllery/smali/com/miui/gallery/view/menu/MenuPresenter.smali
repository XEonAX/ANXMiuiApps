.class public interface abstract Lcom/miui/gallery/view/menu/MenuPresenter;
.super Ljava/lang/Object;
.source "MenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/view/menu/MenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
.end method

.method public abstract expandItemActionView(Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract initForMenu(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;)V
.end method

.method public abstract onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V
.end method

.method public abstract onSubMenuSelected(Lcom/miui/gallery/view/menu/SubMenuBuilder;)Z
.end method

.method public abstract updateMenuView(Z)V
.end method
