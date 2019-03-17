.class Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->processThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusGotten(Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;)V
    .locals 8
    .param p1, "status"    # Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;

    .prologue
    const/4 v5, 0x0

    .line 1316
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$1400(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$1500(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;->getStatus()Lcom/miui/gallery/sdk/SyncStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_SUCCESS:Lcom/miui/gallery/sdk/SyncStatus;

    if-ne v0, v1, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItemStatus;->getDownloadedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/BaseDataItem;->setThumbPath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    .line 1319
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->swapItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$1402(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/DownloadType;

    .line 1322
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v0, v5}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$1700(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Z)Z

    .line 1323
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$1800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Z)Z

    .line 1324
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .line 1325
    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$1400(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/PhotoPageItem;->getDisplayImageOptions(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 1326
    invoke-virtual {v5}, Lcom/miui/gallery/model/BaseDataItem;->getBigPhotoImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .line 1327
    invoke-static {v6}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$1900(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v7}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$2000(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    move-result-object v7

    .line 1324
    invoke-virtual/range {v0 .. v7}, Lcom/miui/gallery/util/uil/CloudImageLoader;->displayImage(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;)V

    goto :goto_0
.end method
