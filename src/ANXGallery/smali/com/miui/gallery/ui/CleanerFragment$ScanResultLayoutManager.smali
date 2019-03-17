.class Lcom/miui/gallery/ui/CleanerFragment$ScanResultLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "CleanerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CleanerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanResultLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/CleanerFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/CleanerFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultLayoutManager;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    .line 225
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 226
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultLayoutManager;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$400(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultLayoutManager;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$500(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultLayoutManager;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment;->access$600(Lcom/miui/gallery/ui/CleanerFragment;)I

    move-result v0

    return v0
.end method
