.class Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupOverflowMenu;
.super Lcom/miui/gallery/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupOverflowMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z

    .prologue
    .line 584
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    .line 585
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/miui/gallery/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 586
    iget-object v0, p1, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupOverflowMenu;->setCallback(Lcom/miui/gallery/view/menu/MenuPresenter$Callback;)V

    .line 587
    const v0, 0x7f0400e0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupOverflowMenu;->setMenuItemLayout(I)V

    .line 588
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2
    .param p1, "withAnimation"    # Z

    .prologue
    .line 603
    invoke-super {p0, p1}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 604
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-static {v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->access$700(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-static {v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->access$700(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 607
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 592
    invoke-super {p0}, Lcom/miui/gallery/view/menu/MenuPopupHelper;->onDismiss()V

    .line 593
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->close()V

    .line 594
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->access$602(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;)Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    .line 595
    return-void
.end method

.method public update(Lcom/miui/gallery/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 599
    return-void
.end method
