.class public Lmiui/widget/PopupMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/PopupMenu$OnMenuItemClickListener;,
        Lmiui/widget/PopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private XP:Lcom/miui/internal/view/menu/MenuPopupHelper;

.field private XQ:Lmiui/widget/PopupMenu$OnMenuItemClickListener;

.field private XR:Lmiui/widget/PopupMenu$OnDismissListener;

.field private mContext:Landroid/content/Context;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private sN:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lmiui/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/PopupMenu;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 48
    iget-object v0, p0, Lmiui/widget/PopupMenu;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    new-instance v1, Lmiui/widget/PopupMenu$1;

    invoke-direct {v1, p0}, Lmiui/widget/PopupMenu$1;-><init>(Lmiui/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 59
    iput-object p2, p0, Lmiui/widget/PopupMenu;->sN:Landroid/view/View;

    .line 60
    new-instance v0, Lcom/miui/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Lmiui/widget/PopupMenu;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1, v1, p2}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    iput-object v0, p0, Lmiui/widget/PopupMenu;->XP:Lcom/miui/internal/view/menu/MenuPopupHelper;

    .line 61
    iget-object p1, p0, Lmiui/widget/PopupMenu;->XP:Lcom/miui/internal/view/menu/MenuPopupHelper;

    new-instance p2, Lmiui/widget/PopupMenu$2;

    invoke-direct {p2, p0}, Lmiui/widget/PopupMenu$2;-><init>(Lmiui/widget/PopupMenu;)V

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 72
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 117
    iget-object v0, p0, Lmiui/widget/PopupMenu;->XP:Lcom/miui/internal/view/menu/MenuPopupHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 118
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 82
    iget-object v0, p0, Lmiui/widget/PopupMenu;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 92
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lmiui/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(I)V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lmiui/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/PopupMenu;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 152
    iget-object p1, p0, Lmiui/widget/PopupMenu;->XR:Lmiui/widget/PopupMenu$OnDismissListener;

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lmiui/widget/PopupMenu;->XR:Lmiui/widget/PopupMenu$OnDismissListener;

    invoke-interface {p1, p0}, Lmiui/widget/PopupMenu$OnDismissListener;->onDismiss(Lmiui/widget/PopupMenu;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onCloseSubMenu(Lcom/miui/internal/view/menu/SubMenuBuilder;)V
    .locals 0

    .line 176
    return-void
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    .line 142
    iget-object p1, p0, Lmiui/widget/PopupMenu;->XQ:Lmiui/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lmiui/widget/PopupMenu;->XQ:Lmiui/widget/PopupMenu$OnMenuItemClickListener;

    invoke-interface {p1, p2}, Lmiui/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 145
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 182
    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 4

    .line 161
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 164
    return v1

    .line 168
    :cond_1
    new-instance v0, Lcom/miui/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lmiui/widget/PopupMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/widget/PopupMenu;->sN:Landroid/view/View;

    invoke-direct {v0, v2, p1, v3}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->show()V

    .line 169
    return v1
.end method

.method public setOnDismissListener(Lmiui/widget/PopupMenu$OnDismissListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lmiui/widget/PopupMenu;->XR:Lmiui/widget/PopupMenu$OnDismissListener;

    .line 136
    return-void
.end method

.method public setOnMenuItemClickListener(Lmiui/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lmiui/widget/PopupMenu;->XQ:Lmiui/widget/PopupMenu$OnMenuItemClickListener;

    .line 127
    return-void
.end method

.method public show()V
    .locals 1

    .line 109
    iget-object v0, p0, Lmiui/widget/PopupMenu;->XP:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->show()V

    .line 110
    return-void
.end method
