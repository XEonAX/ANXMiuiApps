.class Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/Button;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 474
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    .line 475
    invoke-static {p1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->access$200(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 477
    invoke-virtual {p0, v3}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 478
    invoke-virtual {p0, v3}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 479
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 480
    invoke-virtual {p0, v3}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 482
    invoke-static {p1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->access$300(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)Lcom/miui/gallery/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 483
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 486
    return-void
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 489
    move-object v1, p0

    .line 490
    .local v1, "view":Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 491
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 492
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    .line 493
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 494
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    .line 497
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    if-nez v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public performClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 502
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v3

    .line 506
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/gallery/view/menu/MenuBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-static {v2}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->access$300(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)Lcom/miui/gallery/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 514
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 515
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    goto :goto_0

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method
