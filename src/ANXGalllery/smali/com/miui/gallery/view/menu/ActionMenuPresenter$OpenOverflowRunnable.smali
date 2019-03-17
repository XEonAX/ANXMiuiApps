.class Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

.field final synthetic this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;)V
    .locals 0
    .param p2, "popup"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    .line 651
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 654
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->changeMenuMode()V

    .line 655
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    iget-object v0, v1, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    .line 656
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-static {v1, v2}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->access$602(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;)Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->access$902(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 660
    return-void
.end method
