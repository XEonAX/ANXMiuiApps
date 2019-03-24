.class Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;-><init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nA:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->nA:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 37
    iget-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->nA:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-static {p1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->a(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 39
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->nA:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    new-instance p3, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;

    invoke-direct {p3, p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;-><init>(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V

    invoke-virtual {p2, p3}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p2, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->nA:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-static {p2}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->d(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lcom/miui/internal/app/ActionBarDelegateImpl;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->nA:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->dismiss(Z)V

    .line 52
    return-void
.end method
