.class public interface abstract Lcom/miui/gallery/view/menu/MenuView$ItemView;
.super Ljava/lang/Object;
.source "MenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/view/menu/MenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemView"
.end annotation


# virtual methods
.method public abstract getItemData()Lcom/miui/gallery/view/menu/MenuItemImpl;
.end method

.method public abstract initialize(Lcom/miui/gallery/view/menu/MenuItemImpl;I)V
.end method

.method public abstract prefersCondensedTitle()Z
.end method

.method public abstract setItemInvoker(Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;)V
.end method
