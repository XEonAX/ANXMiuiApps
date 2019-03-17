.class final Lcom/miui/gallery/sdk/download/downloader/OriginDownloader$1;
.super Ljava/lang/Object;
.source "OriginDownloader.java"

# interfaces
.implements Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;->createListener(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/miui/gallery/sdk/download/assist/RequestItem;)Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$requestCloudItem:Lcom/miui/gallery/cloud/RequestCloudItem;

.field final synthetic val$requestItem:Lcom/miui/gallery/sdk/download/assist/RequestItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/miui/gallery/sdk/download/assist/RequestItem;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader$1;->val$requestCloudItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    iput-object p2, p0, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader$1;->val$requestItem:Lcom/miui/gallery/sdk/download/assist/RequestItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(JJ)V
    .locals 5
    .param p1, "pos"    # J
    .param p3, "total"    # J

    .prologue
    .line 297
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader$1;->val$requestCloudItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    iget v1, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->priority:I

    invoke-static {v1}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v0

    .line 298
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 299
    const-string v1, "OriginalFileDownloader"

    const-string v2, "net work is changed, interrupt this thread item: %s"

    iget-object v3, p0, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader$1;->val$requestCloudItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/RequestCloudItem;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader$1;->val$requestCloudItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    iput-wide p1, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->mDownloadedSize:J

    .line 303
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader$1;->val$requestCloudItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    iput-wide p3, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->mTotalSize:J

    .line 304
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader$1;->val$requestItem:Lcom/miui/gallery/sdk/download/assist/RequestItem;

    iget-object v1, v1, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackProgress(Lcom/miui/gallery/sdk/download/assist/DownloadItem;JJ)V

    .line 305
    return-void
.end method

.method public onDataSended(JJ)V
    .locals 0
    .param p1, "pos"    # J
    .param p3, "total"    # J

    .prologue
    .line 293
    return-void
.end method
