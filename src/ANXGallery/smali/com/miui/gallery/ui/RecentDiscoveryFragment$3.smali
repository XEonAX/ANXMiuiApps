.class Lcom/miui/gallery/ui/RecentDiscoveryFragment$3;
.super Ljava/lang/Object;
.source "RecentDiscoveryFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/RecentDiscoveryFragment;->doDelete(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/RecentDiscoveryFragment;Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$3;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$3;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(I[J)V
    .locals 6
    .param p1, "count"    # I
    .param p2, "deleteIds"    # [J

    .prologue
    const/4 v5, 0x0

    .line 534
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$3;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-nez v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$3;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$3;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    const v2, 0x7f0c014d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 537
    if-lez p1, :cond_1

    .line 539
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$3;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0, v5}, Lcom/miui/gallery/util/SoundUtils;->playSoundForOperation(Landroid/content/Context;I)V

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$3;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_0
.end method
