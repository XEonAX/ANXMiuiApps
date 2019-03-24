.class Lcom/miui/internal/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qH:Lcom/miui/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarContextView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->qH:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x1020019

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->qH:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarContextView;->a(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->qH:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarContextView;->b(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;

    move-result-object p1

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->qH:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarContextView;->c(Lcom/miui/internal/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/EditActionModeImpl;

    .line 101
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/miui/internal/view/EditActionModeImpl;->getMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/view/EditActionModeImpl;->onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 104
    :cond_1
    return-void
.end method
