.class Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListOverflowMenu"
.end annotation


# instance fields
.field final synthetic nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

.field private ng:Lcom/miui/internal/view/menu/ListMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$1;)V
    .locals 0

    .line 538
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V

    return-void
.end method

.method private c(Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/ListMenuPresenter;
    .locals 4

    .line 543
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->ng:Lcom/miui/internal/view/menu/ListMenuPresenter;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Lcom/miui/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-static {v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->c(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-static {v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->d(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->ng:Lcom/miui/internal/view/menu/ListMenuPresenter;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->ng:Lcom/miui/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 547
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->ng:Lcom/miui/internal/view/menu/ListMenuPresenter;

    return-object p1
.end method


# virtual methods
.method public d(Lcom/miui/internal/view/menu/MenuBuilder;)Landroid/view/View;
    .locals 1

    .line 551
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->c(Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/ListMenuPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 552
    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 551
    :goto_0
    return-object p1
.end method

.method public dismiss(Z)V
    .locals 0

    .line 567
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object p1, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast p1, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->hideOverflowMenu()Z

    .line 568
    return-void
.end method

.method public e(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->d(Lcom/miui/internal/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setOverflowMenuView(Landroid/view/View;)V

    .line 573
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public tryShow()Z
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
