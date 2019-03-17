.class Lcom/miui/gallery/ui/PhotoPageFragment$5;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;->createBars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

.field final synthetic val$delayInitMenus:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$5;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iput-boolean p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$5;->val$delayInitMenus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 570
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$5;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$5;->val$delayInitMenus:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$5;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->setHasOptionsMenu(Z)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$5;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$700(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 575
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$5;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageTopBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageTopBar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 577
    :cond_1
    return-void
.end method
