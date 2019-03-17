.class public Lcom/miui/gallery/view/menu/BottomMenuBarUtils;
.super Ljava/lang/Object;
.source "BottomMenuBarUtils.java"


# direct methods
.method public static findBottomMenuBar(Landroid/view/View;)Lcom/miui/gallery/widget/BottomMenu;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 10
    .local v0, "bottomMenu":Lcom/miui/gallery/widget/BottomMenu;
    :goto_0
    if-eqz p0, :cond_0

    .line 11
    instance-of v1, p0, Lcom/miui/gallery/widget/BottomMenu;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 12
    check-cast v0, Lcom/miui/gallery/widget/BottomMenu;

    .line 22
    :cond_0
    return-object v0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .restart local p0    # "view":Landroid/view/View;
    goto :goto_0

    .line 19
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method
