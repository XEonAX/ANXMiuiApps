.class public abstract Lcom/miui/gallery/cloud/thread/BaseSyncLockTask;
.super Lcom/miui/gallery/cloud/thread/BaseTask;
.source "BaseSyncLockTask.java"


# instance fields
.field private mSyncLock:Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;


# direct methods
.method public constructor <init>(IIIILcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "priorityCount"    # I
    .param p3, "batchMax"    # I
    .param p4, "commandMax"    # I
    .param p5, "changeListener"    # Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;

    .prologue
    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/cloud/thread/BaseTask;-><init>(IIIILcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected final acquireLock()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseSyncLockTask;->mSyncLock:Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseSyncLockTask;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->newSyncLock(Ljava/lang/String;)Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseSyncLockTask;->mSyncLock:Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseSyncLockTask;->mSyncLock:Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->acquire()V

    .line 18
    return-void
.end method

.method protected final releaseLock()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseSyncLockTask;->mSyncLock:Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseSyncLockTask;->mSyncLock:Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->release()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cloud/thread/BaseSyncLockTask;->mSyncLock:Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;

    .line 25
    :cond_0
    return-void
.end method
