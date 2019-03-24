.class public Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;
.super Lmiui/widget/ImmersionListPopupWindow;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;


# instance fields
.field private nw:Lcom/miui/internal/app/ActionBarDelegateImpl;

.field private nx:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

.field private ny:Landroid/view/View;

.field private nz:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->nw:Lcom/miui/internal/app/ActionBarDelegateImpl;

    .line 32
    new-instance p1, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-direct {p1, v0, p2}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->nx:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    .line 33
    iget-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->nx:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    new-instance p1, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;-><init>(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->nx:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->ny:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->nz:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lcom/miui/internal/app/ActionBarDelegateImpl;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->nw:Lcom/miui/internal/app/ActionBarDelegateImpl;

    return-object p0
.end method


# virtual methods
.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->ny:Landroid/view/View;

    .line 63
    iput-object p2, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->nz:Landroid/view/ViewGroup;

    .line 64
    invoke-super {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 65
    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->nx:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->update(Landroid/view/Menu;)V

    .line 58
    return-void
.end method
