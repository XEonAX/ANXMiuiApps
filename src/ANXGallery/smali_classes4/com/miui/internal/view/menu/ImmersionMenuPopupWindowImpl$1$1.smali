.class Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nB:Landroid/view/SubMenu;

.field final synthetic nC:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->nC:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iput-object p2, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->nB:Landroid/view/SubMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->nC:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->nA:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 44
    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->nC:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->nA:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->nB:Landroid/view/SubMenu;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->update(Landroid/view/Menu;)V

    .line 45
    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->nC:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->nA:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->nC:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iget-object v1, v1, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->nA:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-static {v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->b(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1$1;->nC:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    iget-object v2, v2, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;->nA:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-static {v2}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->c(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 46
    return-void
.end method
