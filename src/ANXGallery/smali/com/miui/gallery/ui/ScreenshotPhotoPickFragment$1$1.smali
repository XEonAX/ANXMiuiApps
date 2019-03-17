.class Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;
.super Ljava/lang/Object;
.source "ScreenshotPhotoPickFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;->this$1:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(I[J)V
    .locals 7
    .param p1, "count"    # I
    .param p2, "deleteIds"    # [J

    .prologue
    const/4 v6, 0x0

    .line 88
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;->this$1:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-nez v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;->this$1:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;->this$1:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    iget-object v2, v2, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    const v3, 0x7f0c014d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 90
    if-lez p1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;->this$1:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1, v6}, Lcom/miui/gallery/util/SoundUtils;->playSoundForOperation(Landroid/content/Context;I)V

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;->this$1:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$100(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Lcom/miui/gallery/cleaner/ScreenshotScanner;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/gallery/cleaner/ScreenshotScanner;->removeItems([J)V

    .line 95
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;->this$1:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    iget-object v2, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;->this$1:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    iget-object v2, v2, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$100(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Lcom/miui/gallery/cleaner/ScreenshotScanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/cleaner/ScreenshotScanner;->getScanResultIds()[J

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$202(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;[J)[J

    .line 96
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;->this$1:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$000(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAllItemsCheckState(Z)V

    .line 97
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;->this$1:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$200(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)[J

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1$1;->this$1:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 100
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "deleteCount"

    int-to-float v2, p1

    sget-object v3, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->DELETE_COUNT_STAGE:[I

    invoke-static {v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->formatValueStage(F[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "cleaner"

    const-string v2, "cleaner_screenshot_used"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
