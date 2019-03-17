.class public Lcom/miui/gallery/discovery/RequestSyncJob;
.super Lcom/miui/gallery/discovery/AbstractJob;
.source "RequestSyncJob.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/discovery/AbstractJob;-><init>()V

    return-void
.end method


# virtual methods
.method public execJob()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 20
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    invoke-static {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getDirtyCount(Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    move-result-object v1

    .line 23
    .local v1, "dirtyCount":Lcom/miui/gallery/cloud/syncstate/DirtyCount;
    invoke-virtual {v1}, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->getSyncableCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 24
    invoke-static {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->isSyncing(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 25
    new-instance v4, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v4}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    sget-object v5, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 26
    invoke-virtual {v4, v5}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 27
    invoke-virtual {v4, v5}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v4

    .line 28
    invoke-virtual {v4}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v3

    .line 29
    .local v3, "request":Lcom/miui/gallery/util/SyncUtil$Request;
    invoke-static {v0, v3}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "time"

    invoke-static {}, Lcom/miui/gallery/util/MiscUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v4, "Sync"

    const-string/jumbo v5, "sync_request_sync_periodic"

    invoke-static {v4, v5, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    .end local v1    # "dirtyCount":Lcom/miui/gallery/cloud/syncstate/DirtyCount;
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "request":Lcom/miui/gallery/util/SyncUtil$Request;
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method public getJobInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/job/JobInfo;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x1

    .line 41
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    iget v2, p0, Lcom/miui/gallery/discovery/RequestSyncJob;->mJobId:I

    invoke-direct {v1, v2, p2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x2

    .line 43
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const-wide/32 v2, 0x2932e00

    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 51
    .local v0, "jobInfo":Landroid/app/job/JobInfo;
    return-object v0
.end method
