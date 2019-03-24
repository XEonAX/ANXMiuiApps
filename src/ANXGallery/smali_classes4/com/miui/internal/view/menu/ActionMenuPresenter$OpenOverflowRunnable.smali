.class Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field final synthetic nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

.field private nh:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-object p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->nh:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    .line 646
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 650
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    .line 651
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->nh:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->nh:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->nf:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 655
    return-void
.end method
