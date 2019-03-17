.class public Lcom/miui/gallery/util/deviceprovider/UploadStatusController;
.super Ljava/lang/Object;
.source "UploadStatusController.java"

# interfaces
.implements Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;


# static fields
.field private static sThis:Lcom/miui/gallery/util/deviceprovider/UploadStatusController;


# instance fields
.field private mCount:I

.field private volatile mHasPendingItem:Z

.field private final mLock:Ljava/lang/Object;

.field private final mUploadingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mUploadingItems:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mLock:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mCount:I

    .line 64
    return-void
.end method

.method private accept(Lcom/miui/gallery/cloud/RequestItemBase;)Z
    .locals 2
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 129
    iget v0, p1, Lcom/miui/gallery/cloud/RequestItemBase;->priority:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/miui/gallery/cloud/RequestItemBase;->priority:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/miui/gallery/cloud/RequestItemBase;->priority:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/miui/gallery/cloud/RequestItemBase;->priority:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/deviceprovider/UploadStatusController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mHasPendingItem:Z

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/util/deviceprovider/UploadStatusController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/deviceprovider/UploadStatusController;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mHasPendingItem:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/deviceprovider/UploadStatusController;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->refreshUploadStatus()V

    return-void
.end method

.method private checkPendingStatus()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController$1;-><init>(Lcom/miui/gallery/util/deviceprovider/UploadStatusController;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 183
    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;
    .locals 3

    .prologue
    .line 55
    const-class v1, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->sThis:Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    invoke-direct {v0}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->sThis:Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    .line 57
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/miui/gallery/cloud/UpDownloadManager;->instance(I)Lcom/miui/gallery/cloud/UpDownloadManager;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->sThis:Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/cloud/UpDownloadManager;->addOnItemChangedListener(Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)V

    .line 58
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miui/gallery/cloud/UpDownloadManager;->instance(I)Lcom/miui/gallery/cloud/UpDownloadManager;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->sThis:Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/cloud/UpDownloadManager;->addOnItemChangedListener(Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)V

    .line 60
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->sThis:Lcom/miui/gallery/util/deviceprovider/UploadStatusController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private refreshUploadStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 39
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "is_upload"

    iget v2, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mCount:I

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 41
    const-string v2, "has_pending_item"

    iget-boolean v4, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mHasPendingItem:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 42
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->UPLOAD_STATE_URI:Landroid/net/Uri;

    .line 43
    invoke-virtual {v2, v4, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getDirtyCount(Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    move-result-object v0

    .line 48
    .local v0, "dirtyCount":Lcom/miui/gallery/cloud/syncstate/DirtyCount;
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->getSyncableCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const-string v2, "UploadStatusController"

    const-string v4, "recover syncType"

    invoke-static {v2, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v2

    sget-object v4, Lcom/miui/gallery/cloud/syncstate/SyncType;->UNKNOW:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-virtual {v2, v4, v3}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;Z)V

    .line 52
    :cond_0
    return-void

    .line 40
    .end local v0    # "dirtyCount":Lcom/miui/gallery/cloud/syncstate/DirtyCount;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized end(Lcom/miui/gallery/cloud/RequestItemBase;)V
    .locals 2
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->accept(Lcom/miui/gallery/cloud/RequestItemBase;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 126
    .end local p1    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    .restart local p1    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    .end local p1    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    invoke-direct {v0, p1}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;-><init>(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    .line 123
    .local v0, "statusItem":Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
    iget-object v1, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mUploadingItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 125
    invoke-static {}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getInstance()Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getUploadStatusProxy()Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;->onUploadStatusChanged(Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    .end local v0    # "statusItem":Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public endUpload()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget v0, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mCount:I

    .line 98
    iget v0, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mCount:I

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->refreshUploadStatus()V

    .line 100
    const-string v0, "UploadStatusController"

    const-string v2, "end upload"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUploadStatus(Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;)Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    .prologue
    .line 140
    iget-object v2, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mUploadingItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    .line 143
    .local v0, "anItem":Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    .end local v0    # "anItem":Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPending()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mHasPendingItem:Z

    return v0
.end method

.method public isUploading()Z
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget v0, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAddItem(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 0
    .param p1, "item"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->checkPendingStatus()V

    .line 153
    return-void
.end method

.method public onRemoveItem(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 0
    .param p1, "item"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->checkPendingStatus()V

    .line 158
    return-void
.end method

.method public declared-synchronized start(Lcom/miui/gallery/cloud/RequestItemBase;)V
    .locals 2
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->accept(Lcom/miui/gallery/cloud/RequestItemBase;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 115
    .end local p1    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    .restart local p1    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    .end local p1    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    invoke-direct {v0, p1}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;-><init>(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    .line 111
    .local v0, "statusItem":Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
    iget-object v1, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mUploadingItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mUploadingItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getInstance()Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getUploadStatusProxy()Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;->onUploadStatusChanged(Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    .end local v0    # "statusItem":Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startUpload()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget v0, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mCount:I

    .line 88
    iget v0, p0, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->mCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->refreshUploadStatus()V

    .line 90
    const-string v0, "UploadStatusController"

    const-string/jumbo v2, "start upload"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
