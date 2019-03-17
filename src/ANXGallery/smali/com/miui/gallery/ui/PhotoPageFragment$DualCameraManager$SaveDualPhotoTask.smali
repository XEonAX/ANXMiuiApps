.class Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;
.super Landroid/os/AsyncTask;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveDualPhotoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    .prologue
    .line 3400
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3400
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3408
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/scanner/MediaScanner;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 3409
    aget-object v0, p1, v2

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3400
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3414
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3423
    :goto_0
    return-void

    .line 3417
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataSet()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    .line 3418
    .local v0, "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    if-eqz v0, :cond_1

    .line 3419
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/model/BaseDataSet;->addNewFile(Ljava/lang/String;I)Z

    .line 3421
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "photo_focused_path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3422
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$SaveDualPhotoTask;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->onContentChanged()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 3404
    return-void
.end method
