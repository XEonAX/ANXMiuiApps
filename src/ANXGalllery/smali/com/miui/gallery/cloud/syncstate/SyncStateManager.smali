.class public Lcom/miui/gallery/cloud/syncstate/SyncStateManager;
.super Ljava/lang/Object;
.source "SyncStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/syncstate/SyncStateManager$Singleton;
    }
.end annotation


# instance fields
.field private mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

.field private mSyncStateObserver:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    .line 17
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->invalidate()V

    .line 18
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateObserver:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/syncstate/SyncStateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/syncstate/SyncStateManager$1;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager$Singleton;->access$100()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSyncState()Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    return-object v0
.end method

.method public getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onSyncCommandDispatched()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->onSyncCommandDispatched()V

    .line 84
    return-void
.end method

.method public registerSyncStateObserver(Landroid/content/Context;Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->registerObserver(Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;)V

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateObserver:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->register(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->updateSyncStatus()V

    .line 59
    return-void
.end method

.method setIsBatteryLow(Z)V
    .locals 1
    .param p1, "isBatteryLow"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->setIsBatteryLow(Z)V

    .line 72
    return-void
.end method

.method setIsLocalSpaceFull(Z)V
    .locals 1
    .param p1, "isLocalSpaceFull"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->setIsLocalSpaceFull(Z)V

    .line 76
    return-void
.end method

.method public setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;Z)V
    .locals 4
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;
    .param p2, "force"    # Z

    .prologue
    .line 40
    const-string v1, "SyncStateManager"

    const-string/jumbo v2, "setSyncType old: %s, new: %s"

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v3

    invoke-static {v1, v2, v3, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/cloud/syncstate/SyncType;->isForce()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)V

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v0

    .line 45
    .local v0, "curSyncType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncType;->isForce()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/miui/gallery/cloud/SyncConditionManager;->checkIgnoreCancel(ILcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v1

    if-nez v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)V

    goto :goto_0

    .line 49
    :cond_3
    invoke-static {p1, v0}, Lcom/miui/gallery/cloud/syncstate/SyncType;->compare(Lcom/miui/gallery/cloud/syncstate/SyncType;Lcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v1

    if-lez v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)V

    goto :goto_0
.end method

.method public unregisterSyncStateObserver(Landroid/content/Context;Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->unregisterObserver(Lcom/miui/gallery/cloud/syncstate/OnSyncStateChangeObserver;)V

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateObserver:Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateObserver;->unregister(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method updateSyncStatus()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->mSyncStateInfo:Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->invalidate()V

    .line 80
    return-void
.end method
