.class Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$3;
.super Ljava/lang/Object;
.source "HomePageTopBarController.java"

# interfaces
.implements Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->removeItem(Lcom/miui/gallery/widget/PanelItem;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

.field final synthetic val$oldItem:Lcom/miui/gallery/widget/PanelItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;Lcom/miui/gallery/widget/PanelItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$3;->this$1:Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    iput-object p2, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$3;->val$oldItem:Lcom/miui/gallery/widget/PanelItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerAnimEnd(Z)V
    .locals 3
    .param p1, "opened"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$3;->this$1:Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->access$400(Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;)Lcom/miui/gallery/widget/PanelItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$3;->val$oldItem:Lcom/miui/gallery/widget/PanelItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$3;->this$1:Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->access$400(Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;)Lcom/miui/gallery/widget/PanelItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager$3;->this$1:Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/HomePageTopBarController$PanelItemManager;->this$0:Lcom/miui/gallery/ui/HomePageTopBarController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/HomePageTopBarController;->access$100(Lcom/miui/gallery/ui/HomePageTopBarController;ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V

    .line 244
    :cond_0
    return-void
.end method
