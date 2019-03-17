.class public abstract Lcom/miui/gallery/app/BottomMenuDelegateImpl;
.super Ljava/lang/Object;
.source "BottomMenuDelegateImpl.java"

# interfaces
.implements Lcom/miui/gallery/view/menu/MenuBuilder$Callback;
.implements Lcom/miui/gallery/view/menu/MenuPresenter$Callback;


# instance fields
.field private mActionBarWrapper:Lcom/miui/gallery/view/ActionBarWrapper;

.field final mActivity:Landroid/app/Activity;

.field mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

.field protected mIsBottomMenuInstalled:Z

.field protected mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

.field private mShowHideAnimationEnabled:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mShowHideAnimationEnabled:Z

    .line 29
    iput-object p1, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mActivity:Landroid/app/Activity;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/BottomMenuDelegateImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/app/BottomMenuDelegateImpl;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->onShowActionBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/BottomMenuDelegateImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/app/BottomMenuDelegateImpl;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->onHideActionBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/BottomMenuDelegateImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/app/BottomMenuDelegateImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->onSetShowHideAnimationEnabled(Z)V

    return-void
.end method

.method private onHideActionBar()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    iget-boolean v1, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mShowHideAnimationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/BottomMenu;->hide(Z)V

    .line 141
    :cond_0
    return-void
.end method

.method private onSetShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mShowHideAnimationEnabled:Z

    .line 145
    return-void
.end method

.method private onShowActionBar()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    iget-boolean v1, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mShowHideAnimationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/BottomMenu;->show(Z)V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method protected createMenu()Lcom/miui/gallery/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "menu":Lcom/miui/gallery/view/menu/MenuBuilder;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->setCallback(Lcom/miui/gallery/view/menu/MenuBuilder$Callback;)V

    .line 78
    return-object v0
.end method

.method protected final getActionBarThemedContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 36
    iget-object v1, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mActivity:Landroid/app/Activity;

    .line 38
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    :cond_0
    return-object v1
.end method

.method public getMenuCollapsedHeight()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/BottomMenu;->getCollapsedHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    return-void
.end method

.method public onMenuModeChange(Lcom/miui/gallery/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->reopenMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V

    .line 94
    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/gallery/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method protected reopenMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "toggleMenuMode"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/BottomMenu;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/BottomMenu;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/BottomMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/BottomMenu;->showOverflowMenu()Z

    .line 62
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/BottomMenu;->hideOverflowMenu()Z

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->close()V

    goto :goto_0
.end method

.method protected setMenu(Lcom/miui/gallery/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 70
    iget-boolean v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mIsBottomMenuInstalled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v0, p1, p0}, Lcom/miui/gallery/widget/BottomMenu;->setMenu(Landroid/view/Menu;Lcom/miui/gallery/view/menu/MenuPresenter$Callback;)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    if-eqz v0, :cond_0

    .line 149
    if-eqz p1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/BottomMenu;->show(Z)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/BottomMenu;->hide(Z)V

    goto :goto_0
.end method

.method protected wrapActionBar(Lmiui/app/ActionBar;)Lmiui/app/ActionBar;
    .locals 1
    .param p1, "actionBar"    # Lmiui/app/ActionBar;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mActionBarWrapper:Lcom/miui/gallery/view/ActionBarWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mActionBarWrapper:Lcom/miui/gallery/view/ActionBarWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/view/ActionBarWrapper;->getWrapped()Lmiui/app/ActionBar;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 107
    :cond_1
    new-instance v0, Lcom/miui/gallery/app/BottomMenuDelegateImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/app/BottomMenuDelegateImpl$1;-><init>(Lcom/miui/gallery/app/BottomMenuDelegateImpl;Lmiui/app/ActionBar;)V

    iput-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mActionBarWrapper:Lcom/miui/gallery/view/ActionBarWrapper;

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/BottomMenuDelegateImpl;->mActionBarWrapper:Lcom/miui/gallery/view/ActionBarWrapper;

    goto :goto_0
.end method
