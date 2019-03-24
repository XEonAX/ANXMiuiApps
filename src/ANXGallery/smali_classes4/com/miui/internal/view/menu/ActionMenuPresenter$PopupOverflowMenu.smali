.class Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;
.super Lcom/miui/internal/view/menu/MenuPopupHelper;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupOverflowMenu"
.end annotation


# instance fields
.field final synthetic nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 580
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 581
    iget-object p1, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nd:Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 582
    sget p1, Lcom/miui/internal/R$layout;->overflow_popup_menu_item_layout:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->setMenuItemLayout(I)V

    .line 583
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1

    .line 598
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 599
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-static {p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->e(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 600
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-static {p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->e(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 602
    :cond_0
    return-void
.end method

.method public e(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 594
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 587
    invoke-super {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 588
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->close()V

    .line 589
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    .line 590
    return-void
.end method
