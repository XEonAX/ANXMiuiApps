.class public Lcom/miui/gallery/cloud/thread/BackUploadTask;
.super Lcom/miui/gallery/cloud/thread/BaseSyncLockTask;
.source "BackUploadTask.java"


# instance fields
.field private mStartTime:J

.field private mUploadCount:I


# direct methods
.method public constructor <init>(IIIILcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "priorityCount"    # I
    .param p3, "batchMax"    # I
    .param p4, "commandMax"    # I
    .param p5, "changeListener"    # Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;

    .prologue
    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/cloud/thread/BaseSyncLockTask;-><init>(IIIILcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)V

    .line 31
    return-void
.end method

.method private statUpload()V
    .locals 8

    .prologue
    .line 55
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gallery/cloud/thread/BackUploadTask;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    mul-float/2addr v1, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v2, v1

    .line 56
    .local v2, "uploadTime":J
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "cost"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "count"

    iget v4, p0, Lcom/miui/gallery/cloud/thread/BackUploadTask;->mUploadCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "Sync"

    const-string/jumbo v4, "sync_upload_time_total"

    invoke-static {v1, v4, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected handle(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p4, "requestItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    const/4 v2, 0x0

    .line 80
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    :goto_0
    return v2

    .line 83
    :cond_0
    iget v3, p0, Lcom/miui/gallery/cloud/thread/BackUploadTask;->mUploadCount:I

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/miui/gallery/cloud/thread/BackUploadTask;->mUploadCount:I

    .line 84
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-object v2, v2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v0

    .line 85
    .local v0, "isShared":Z
    if-eqz v0, :cond_1

    new-instance v1, Lcom/miui/gallery/cloud/CreateShareImage;

    invoke-direct {v1, p1}, Lcom/miui/gallery/cloud/CreateShareImage;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, "operation":Lcom/miui/gallery/cloud/Operation;
    :goto_1
    invoke-static {p1, p2, p3, p4, v1}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItems(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v2

    goto :goto_0

    .line 85
    .end local v1    # "operation":Lcom/miui/gallery/cloud/Operation;
    :cond_1
    new-instance v1, Lcom/miui/gallery/cloud/CreateOwnerImage;

    invoke-direct {v1, p1}, Lcom/miui/gallery/cloud/CreateOwnerImage;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected onPerformSync()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v1, 0x2

    .line 66
    .local v1, "result":I
    :try_start_0
    invoke-super {p0}, Lcom/miui/gallery/cloud/thread/BaseSyncLockTask;->onPerformSync()I
    :try_end_0
    .catch Lcom/miui/gallery/cloud/GalleryMiCloudServerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/BackUploadTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;->getCloudServerException()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;->handleMiCloudException(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/BackUploadTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "throw Cloud server exception status code %d"

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/cloud/thread/BackUploadTask;->TAG:Ljava/lang/String;

    const-string v3, "no retry"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPostExecute()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->endUpload()V

    .line 48
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->end()V

    .line 49
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/thread/BackUploadTask;->releaseLock()V

    .line 50
    invoke-direct {p0}, Lcom/miui/gallery/cloud/thread/BackUploadTask;->statUpload()V

    .line 51
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncStop()V

    .line 52
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/cloud/thread/BackUploadTask;->mStartTime:J

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/cloud/thread/BackUploadTask;->mUploadCount:I

    .line 37
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->startUpload()V

    .line 39
    invoke-static {}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->getInstance()Lcom/miui/gallery/cloud/control/BatteryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->start()V

    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/thread/BackUploadTask;->acquireLock()V

    .line 42
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor;->monitorSyncStart()V

    .line 43
    return-void
.end method
