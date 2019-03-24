.class public Lcom/miui/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private os:Landroid/app/AlertDialog;

.field ot:Lcom/miui/internal/view/menu/ListMenuPresenter;

.field private ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 34
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->os:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->os:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 136
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->ot:Lcom/miui/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/internal/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 160
    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 145
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 151
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 140
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->ot:Lcom/miui/internal/view/menu/ListMenuPresenter;

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/internal/view/menu/ListMenuPresenter;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 141
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 88
    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 89
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->os:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 92
    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    .line 96
    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 98
    return v1

    .line 102
    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->os:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object p2, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p2, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    .line 110
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 111
    return v1

    .line 119
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPresenterCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    .line 125
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 46
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$attr;->menuDialogTheme:I

    invoke-static {v2, v3}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v2

    .line 51
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 52
    sget v2, Lcom/miui/internal/R$style;->Theme_MenuDialog_Light:I

    .line 54
    :cond_0
    new-instance v3, Lcom/miui/internal/view/menu/ListMenuPresenter;

    sget v4, Lcom/miui/internal/R$layout;->list_menu_item_layout:I

    invoke-direct {v3, v4, v2}, Lcom/miui/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object v3, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->ot:Lcom/miui/internal/view/menu/ListMenuPresenter;

    .line 56
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->ot:Lcom/miui/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/miui/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 57
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->ot:Lcom/miui/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 58
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->ot:Lcom/miui/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    :goto_0
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->os:Landroid/app/AlertDialog;

    .line 75
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->os:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 77
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->os:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 78
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 79
    if-eqz p1, :cond_2

    .line 80
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 82
    :cond_2
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 84
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuDialogHelper;->os:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 85
    return-void
.end method
