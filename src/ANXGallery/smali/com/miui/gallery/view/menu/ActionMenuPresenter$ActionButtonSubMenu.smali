.class Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;
.super Lcom/miui/gallery/view/menu/MenuDialogHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/SubMenuBuilder;)V
    .locals 1
    .param p2, "subMenu"    # Lcom/miui/gallery/view/menu/SubMenuBuilder;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    .line 613
    invoke-direct {p0, p2}, Lcom/miui/gallery/view/menu/MenuDialogHelper;-><init>(Lcom/miui/gallery/view/menu/MenuBuilder;)V

    .line 614
    iget-object v0, p1, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->setCallback(Lcom/miui/gallery/view/menu/MenuPresenter$Callback;)V

    .line 615
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 619
    invoke-super {p0, p1}, Lcom/miui/gallery/view/menu/MenuDialogHelper;->onDismiss(Landroid/content/DialogInterface;)V

    .line 620
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->access$802(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;)Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    .line 621
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 622
    return-void
.end method
