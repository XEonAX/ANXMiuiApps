.class Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/miui/gallery/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/ActionMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter;
    .param p2, "x1"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter$1;

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 639
    instance-of v0, p1, Lcom/miui/gallery/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/gallery/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->close(Z)V

    .line 642
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/gallery/view/menu/MenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 629
    if-nez p1, :cond_0

    .line 634
    .end local p1    # "subMenu":Lcom/miui/gallery/view/menu/MenuBuilder;
    :goto_0
    return v2

    .line 633
    .restart local p1    # "subMenu":Lcom/miui/gallery/view/menu/MenuBuilder;
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    check-cast p1, Lcom/miui/gallery/view/menu/SubMenuBuilder;

    .end local p1    # "subMenu":Lcom/miui/gallery/view/menu/MenuBuilder;
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    goto :goto_0
.end method
