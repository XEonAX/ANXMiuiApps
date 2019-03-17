.class Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1$1;
.super Ljava/lang/Object;
.source "PhoneImmersionMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;

.field final synthetic val$subMenu:Lcom/miui/gallery/widget/menu/ImmersionSubMenu;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;Lcom/miui/gallery/widget/menu/ImmersionSubMenu;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1$1;->this$1:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;

    iput-object p2, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1$1;->val$subMenu:Lcom/miui/gallery/widget/menu/ImmersionSubMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1$1;->this$1:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;

    iget-object v0, v0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1$1;->this$1:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;

    iget-object v0, v0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    iget-object v1, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1$1;->val$subMenu:Lcom/miui/gallery/widget/menu/ImmersionSubMenu;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->update(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1$1;->this$1:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;

    iget-object v0, v0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    iget-object v1, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1$1;->this$1:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;

    iget-object v1, v1, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-static {v1}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->access$100(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1$1;->this$1:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;

    iget-object v2, v2, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu$1;->this$0:Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;

    invoke-static {v2}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->access$200(Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/widget/menu/PhoneImmersionMenu;->fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 52
    return-void
.end method
