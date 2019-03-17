.class Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;
.super Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;
.source "AsyncUpDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/AsyncUpDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockRef"
.end annotation


# instance fields
.field private mAcquireTime:J

.field private mIsCharging:Z

.field private mIsScreenOn:Z

.field private final mPendingOwners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Ljava/lang/String;)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    .line 130
    invoke-direct {p0, p2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    .line 131
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mIsScreenOn:Z

    .line 132
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->isCharging()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mIsCharging:Z

    .line 133
    return-void
.end method

.method private canBatteryAcquire()Z
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mIsCharging:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canScreenAcquire()Z
    .locals 1

    .prologue
    .line 178
    invoke-static {}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mIsScreenOn:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCharging()Z
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getIsPlugged()Z

    move-result v0

    return v0
.end method

.method private isScreenOn()Z
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 144
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method private releaseTemp()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mOwners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mTag:Ljava/lang/String;

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->onRelease()V

    .line 218
    return-void
.end method

.method private tryAcquireLock()V
    .locals 4

    .prologue
    .line 229
    iget-object v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 231
    .local v1, "pendings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 232
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    .local v0, "owner":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->acquire(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .end local v0    # "owner":Ljava/lang/String;
    .end local v1    # "pendings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private tryReleaseLock()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mOwners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 241
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mOwners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->releaseTemp()V

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire(Ljava/lang/String;)V
    .locals 7
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->canScreenAcquire()Z

    move-result v1

    .line 188
    .local v1, "screenOk":Z
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->canBatteryAcquire()Z

    move-result v0

    .line 189
    .local v0, "chargeOk":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 190
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->acquire(Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mTag:Ljava/lang/String;

    const-string v3, "can\'t acquire wakelock, add pending %s, pendings %s, screen %s, charge %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onAcquire()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "AsyncUpDownloadService"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "wakelock acquire and release not balance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 171
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 172
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 173
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mAcquireTime:J

    goto :goto_0
.end method

.method public onChargeStateChanged(Z)V
    .locals 2
    .param p1, "charging"    # Z

    .prologue
    .line 272
    invoke-static {}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 275
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mIsCharging:Z

    .line 276
    if-eqz p1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mTag:Ljava/lang/String;

    const-string v1, "charging"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->tryAcquireLock()V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mTag:Ljava/lang/String;

    const-string v1, "not charging"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->tryReleaseLock()V

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 8

    .prologue
    .line 153
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "wakelock_elapse_time"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mAcquireTime:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "Sync"

    const-string/jumbo v2, "sync_wakelock_time"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 162
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public onScreenOnOff(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 252
    invoke-static {}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 255
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mIsScreenOn:Z

    .line 256
    if-eqz p1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mTag:Ljava/lang/String;

    const-string v1, "screen on"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->tryReleaseLock()V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mTag:Ljava/lang/String;

    const-string v1, "screen off"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->tryAcquireLock()V

    goto :goto_0
.end method

.method public release(Ljava/lang/String;)V
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mTag:Ljava/lang/String;

    const-string v1, "remove owner from pending success: %s, left pending owners: %s"

    iget-object v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    invoke-static {v0, v1, p1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mTag:Ljava/lang/String;

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->onRelease()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mTag:Ljava/lang/String;

    const-string v1, "remove owner from pending fail, pending owners: %s, owners: %s, owner: %s"

    iget-object v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mOwners:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->release(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseAll()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->mPendingOwners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->onRelease()V

    .line 225
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->releaseAll()V

    .line 226
    return-void
.end method
