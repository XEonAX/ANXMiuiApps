.class Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;
.super Ljava/lang/Object;
.source "PhoneImmersionMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;-><init>(Landroid/content/Context;Lcom/miui/gallery/widget/menu/ImmersionMenuListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-static {v2}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->access$000(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->getItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v0

    .line 39
    .local v0, "menu":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    invoke-virtual {v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-static {v2}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->access$000(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->toggleCheckableItem(Landroid/view/View;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    invoke-virtual {v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->getSubMenu()Lcom/miui/gallery/widget/menu/ImmersionSubMenu;

    move-result-object v1

    .line 46
    .local v1, "subMenu":Lcom/miui/gallery/widget/menu/ImmersionSubMenu;
    iget-object v2, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    new-instance v3, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1$1;

    invoke-direct {v3, p0, v1}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1$1;-><init>(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;Lcom/miui/gallery/widget/menu/ImmersionSubMenu;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 58
    .end local v1    # "subMenu":Lcom/miui/gallery/widget/menu/ImmersionSubMenu;
    :goto_1
    invoke-virtual {v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->isRemainWhenClick()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->dismiss(Z)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-static {v2}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->access$400(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)Lcom/miui/gallery/widget/menu/ImmersionMenuListener;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-static {v3}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->access$300(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)Lcom/miui/gallery/widget/menu/ImmersionMenu;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuListener;->onImmersionMenuSelected(Lcom/miui/gallery/widget/menu/ImmersionMenu;Lcom/miui/gallery/widget/menu/ImmersionMenuItem;)V

    goto :goto_1
.end method
