.class public Lcom/miui/internal/view/menu/ContextMenuBuilder;
.super Lcom/miui/internal/view/menu/MenuBuilder;
.source "SourceFile"

# interfaces
.implements Landroid/view/ContextMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public setHeaderIcon(I)Landroid/view/ContextMenu;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/ContextMenu;
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public show(Landroid/view/View;Landroid/os/IBinder;)Lcom/miui/internal/view/menu/MenuDialogHelper;
    .locals 1

    .line 66
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 73
    const p1, 0xc351

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 75
    new-instance p1, Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-direct {p1, p0}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 76
    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 78
    return-object p1

    .line 81
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
