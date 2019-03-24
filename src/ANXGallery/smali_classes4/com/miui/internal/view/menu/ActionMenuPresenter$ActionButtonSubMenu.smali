.class Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;
.super Lcom/miui/internal/view/menu/MenuDialogHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubMenu"
.end annotation


# instance fields
.field final synthetic nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/SubMenuBuilder;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 608
    invoke-direct {p0, p2}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 609
    iget-object p2, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nd:Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 610
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 614
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->onDismiss(Landroid/content/DialogInterface;)V

    .line 615
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    .line 616
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x0

    iput v0, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ne:I

    .line 617
    return-void
.end method
