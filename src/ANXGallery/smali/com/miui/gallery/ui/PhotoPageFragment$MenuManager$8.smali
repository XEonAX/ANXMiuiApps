.class Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$8;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->doDelete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

.field final synthetic val$current:Lcom/miui/gallery/model/BaseDataItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$8;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$8;->val$current:Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(I[J)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "deleteIds"    # [J

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$8;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-nez v0, :cond_0

    .line 1746
    :goto_0
    return-void

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$8;->val$current:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getSpecialTypeFlags()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->sendDeletePhotoStatic(J)V

    .line 1739
    if-lez p1, :cond_2

    .line 1741
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$8;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SoundUtils;->playSoundForOperation(Landroid/content/Context;I)V

    .line 1745
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$8;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->onContentChanged()V

    goto :goto_0

    .line 1742
    :cond_2
    const/16 v0, -0x70

    if-ne p1, v0, :cond_1

    .line 1743
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$8;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/DocumentProviderUtils;->startExtSDCardPermissionActivityForResult(Landroid/app/Activity;)V

    goto :goto_1
.end method
