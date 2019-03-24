.class Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$1;)V
    .locals 0

    .line 620
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 634
    instance-of p2, p1, Lcom/miui/internal/view/menu/SubMenuBuilder;

    if-eqz p2, :cond_0

    .line 635
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    .line 637
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .line 624
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 625
    return v0

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    check-cast p1, Lcom/miui/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iput p1, v1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ne:I

    .line 629
    return v0
.end method
