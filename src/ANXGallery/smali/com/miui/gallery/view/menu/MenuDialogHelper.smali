.class public Lcom/miui/gallery/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/miui/gallery/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

.field mPresenter:Lcom/miui/gallery/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 34
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 133
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 156
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mPresenter:Lcom/miui/gallery/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 157
    return-void
.end method

.method public onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 142
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuDialogHelper;->dismiss()V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V

    .line 148
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mPresenter:Lcom/miui/gallery/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/view/menu/ListMenuPresenter;->onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V

    .line 138
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 85
    const/16 v4, 0x52

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    .line 86
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 87
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 88
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 89
    .local v2, "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 93
    .local v1, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 116
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :goto_0
    return v3

    .line 99
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 100
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 101
    .restart local v2    # "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 103
    .restart local v0    # "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 105
    .restart local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/miui/gallery/view/menu/MenuBuilder;->close(Z)V

    .line 107
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 116
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4}, Lcom/miui/gallery/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_0
.end method

.method public onOpenSubMenu(Lcom/miui/gallery/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/miui/gallery/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/miui/gallery/view/menu/MenuBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 43
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 46
    .local v3, "menu":Lcom/miui/gallery/view/menu/MenuBuilder;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/miui/gallery/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lcom/miui/gallery/view/menu/ListMenuPresenter;

    const v5, 0x7f0400a6

    const v6, 0x7f110011

    invoke-direct {v4, v5, v6}, Lcom/miui/gallery/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object v4, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mPresenter:Lcom/miui/gallery/view/menu/ListMenuPresenter;

    .line 53
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mPresenter:Lcom/miui/gallery/view/menu/ListMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/miui/gallery/view/menu/ListMenuPresenter;->setCallback(Lcom/miui/gallery/view/menu/MenuPresenter$Callback;)V

    .line 54
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mPresenter:Lcom/miui/gallery/view/menu/ListMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/gallery/view/menu/MenuPresenter;)V

    .line 55
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mPresenter:Lcom/miui/gallery/view/menu/ListMenuPresenter;

    invoke-virtual {v4}, Lcom/miui/gallery/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v3}, Lcom/miui/gallery/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "headerView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 68
    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    .line 72
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 74
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 75
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 76
    if-eqz p1, :cond_0

    .line 77
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 79
    :cond_0
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 81
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 82
    return-void

    .line 64
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v3}, Lcom/miui/gallery/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/miui/gallery/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
