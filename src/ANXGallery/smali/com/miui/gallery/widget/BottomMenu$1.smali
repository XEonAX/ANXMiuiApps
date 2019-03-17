.class Lcom/miui/gallery/widget/BottomMenu$1;
.super Ljava/lang/Object;
.source "BottomMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/BottomMenu;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/BottomMenu;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/BottomMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/BottomMenu;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/gallery/widget/BottomMenu$1;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$1;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$000(Lcom/miui/gallery/widget/BottomMenu;)Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$1;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$000(Lcom/miui/gallery/widget/BottomMenu;)Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu$1;->this$0:Lcom/miui/gallery/widget/BottomMenu;

    invoke-static {v0}, Lcom/miui/gallery/widget/BottomMenu;->access$000(Lcom/miui/gallery/widget/BottomMenu;)Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getPresenter()Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 68
    :cond_0
    return-void
.end method
