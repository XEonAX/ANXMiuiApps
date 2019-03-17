.class Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper$StartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    .prologue
    .line 3242
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStarted(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 3245
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->isDualCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3246
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->access$5000(Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;)V

    .line 3247
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->tryChangeStereoBtnVisible(Z)V

    .line 3248
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 3249
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3250
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->onStart()V

    .line 3253
    .end local v0    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_0
    return-void
.end method
