.class Lcom/miui/gallery/ui/HomePageFragment$8;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/HomePageFragment;->displaySearchBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/HomePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageFragment$8;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$8;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$500(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/TwoStageDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$8;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$500(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/TwoStageDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->isDrawerHalfOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$8;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$500(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/TwoStageDrawer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->halfOpenDrawer(Z)V

    .line 758
    :cond_1
    return-void
.end method
