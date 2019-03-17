.class public Lcom/miui/gallery/cloud/AsyncUpDownloadService;
.super Lcom/miui/gallery/service/ServiceBase;
.source "AsyncUpDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;,
        Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;,
        Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;,
        Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;,
        Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;
    }
.end annotation


# static fields
.field private static final WAKELOCK_ONLY_CHARGING:Z

.field private static final WAKELOCK_ONLY_SCREEN_OFF:Z

.field private static final sPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

.field final mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mDoingCancelTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mForegroundRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStartTime:J

.field private final mSyncReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;

.field private mWifiLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lcom/miui/gallery/cloud/SyncConditionManager;->sGetSyncConfig()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isOnlyScreenOffAcquireWakelock()Z

    move-result v0

    sput-boolean v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->WAKELOCK_ONLY_SCREEN_OFF:Z

    .line 391
    invoke-static {}, Lcom/miui/gallery/cloud/SyncConditionManager;->sGetSyncConfig()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isOnlyChargingAcquireWakelock()Z

    move-result v0

    sput-boolean v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->WAKELOCK_ONLY_CHARGING:Z

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->sPendingRequests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/service/ServiceBase;-><init>()V

    .line 317
    new-instance v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$1;-><init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 325
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mDoingCancelTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 353
    new-instance v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$3;-><init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$4;-><init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 374
    new-instance v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$5;-><init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 578
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->WAKELOCK_ONLY_SCREEN_OFF:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->WAKELOCK_ONLY_CHARGING:Z

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/AsyncUpDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mHasForeground:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/cloud/AsyncUpDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->tryCancelTasksWhenConnChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/cloud/AsyncUpDownloadService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mDoingCancelTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/AsyncUpDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->handleScreenOnOff(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/AsyncUpDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->handleChargeStateChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->startSyncInBackground(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->stopSyncInBackground(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private handleChargeStateChanged(Z)V
    .locals 1
    .param p1, "isCharging"    # Z

    .prologue
    .line 539
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWakeLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->onChargeStateChanged(Z)V

    .line 540
    return-void
.end method

.method private handleScreenOnOff(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 535
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWakeLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->onScreenOnOff(Z)V

    .line 536
    return-void
.end method

.method private isLockInitialized()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWifiLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWakeLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mForegroundRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static needHandleRequest(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owner"    # Ljava/lang/String;

    .prologue
    .line 485
    sget-object v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->sPendingRequests:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newSyncLock(Ljava/lang/String;)Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 575
    new-instance v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWifiLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWifiLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->releaseAll()V

    .line 461
    iput-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWifiLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWakeLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWakeLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->releaseAll()V

    .line 465
    iput-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWakeLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mForegroundRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mForegroundRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;->releaseAll()V

    .line 469
    iput-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mForegroundRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;

    .line 472
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 473
    sget-boolean v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->WAKELOCK_ONLY_SCREEN_OFF:Z

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GalleryUtils;->safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 476
    :cond_3
    sget-boolean v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->WAKELOCK_ONLY_CHARGING:Z

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GalleryUtils;->safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 479
    :cond_4
    sget-object v0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->sPendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 480
    return-void
.end method

.method private static startSyncInBackground(Ljava/lang/String;ZZ)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "wifiNeeded"    # Z
    .param p2, "wakeUpNeeded"    # Z

    .prologue
    .line 543
    sget-object v2, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->sPendingRequests:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 546
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.gallery.ACTION_SYNC_IN_BACKGROUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const-string v2, "com.miui.gallery.EXTRA_SYNC_NAME"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v2, "com.miui.gallery.EXTRA_SYNC_STOP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 550
    const-string v2, "com.miui.gallery.EXTRA_SYNC_WIFI"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 551
    const-string v2, "com.miui.gallery.EXTRA_SYNC_WAKE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    invoke-static {v0, v1}, Lcom/miui/gallery/util/BackgroundServiceHelper;->startForegroundServiceIfNeed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 553
    return-void
.end method

.method private static stopSyncInBackground(Ljava/lang/String;ZZ)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "wifiNeeded"    # Z
    .param p2, "wakeUpNeeded"    # Z

    .prologue
    .line 556
    sget-object v2, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->sPendingRequests:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 558
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 559
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.gallery.ACTION_SYNC_IN_BACKGROUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v2, "com.miui.gallery.EXTRA_SYNC_NAME"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const-string v2, "com.miui.gallery.EXTRA_SYNC_STOP"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 563
    const-string v2, "com.miui.gallery.EXTRA_SYNC_WIFI"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 564
    const-string v2, "com.miui.gallery.EXTRA_SYNC_WAKE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 571
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 572
    return-void
.end method

.method private tryCancelTasksWhenConnChanged()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mDoingCancelTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/cloud/AsyncUpDownloadService$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$2;-><init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 351
    :cond_0
    return-void
.end method


# virtual methods
.method protected getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/NotificationHelper;->getEmptyNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method protected getNotificationId()I
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x6

    return v0
.end method

.method handleRequest(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 493
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "action":Ljava/lang/String;
    const-string v5, "AsyncUpDownloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRequest: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v5, "com.miui.gallery.ACTION_SYNC_IN_BACKGROUND"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->isLockInitialized()Z

    move-result v5

    if-nez v5, :cond_1

    .line 497
    const-string v5, "AsyncUpDownloadService"

    const-string v6, "service has been released"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->release()V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    const-string v5, "com.miui.gallery.EXTRA_SYNC_NAME"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "owner":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 503
    const-string v5, "com.miui.gallery.EXTRA_SYNC_STOP"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 504
    .local v2, "stop":Z
    const-string v5, "com.miui.gallery.EXTRA_SYNC_WIFI"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 505
    .local v4, "wifiNeeded":Z
    const-string v5, "com.miui.gallery.EXTRA_SYNC_WAKE"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 506
    .local v3, "wakeUpNeeded":Z
    const-string v5, "AsyncUpDownloadService"

    const-string v6, "owner=%s, is stop=%s, wifiNeeded=%s, wakeupNeeded=%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    if-eqz v2, :cond_4

    .line 508
    if-eqz v4, :cond_2

    .line 509
    iget-object v5, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWifiLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;

    invoke-virtual {v5, v1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->release(Ljava/lang/String;)V

    .line 511
    :cond_2
    if-eqz v3, :cond_3

    .line 512
    iget-object v5, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWakeLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;

    invoke-virtual {v5, v1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->release(Ljava/lang/String;)V

    .line 514
    :cond_3
    iget-object v5, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mForegroundRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;

    invoke-virtual {v5, v1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;->release(Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_4
    invoke-static {v1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->needHandleRequest(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 517
    iget-object v5, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mForegroundRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;

    invoke-virtual {v5, v1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;->acquire(Ljava/lang/String;)V

    .line 518
    if-eqz v3, :cond_5

    .line 519
    const-string v5, "AsyncUpDownloadService"

    const-string v6, "handle request, owner: %s"

    invoke-static {v5, v6, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    iget-object v5, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWakeLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;

    invoke-virtual {v5, v1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;->acquire(Ljava/lang/String;)V

    .line 522
    :cond_5
    if-eqz v4, :cond_0

    .line 523
    iget-object v5, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWifiLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;

    invoke-virtual {v5, v1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->acquire(Ljava/lang/String;)V

    goto :goto_0

    .line 527
    :cond_6
    const-string v5, "AsyncUpDownloadService"

    const-string v6, "no need handle request: %s"

    invoke-static {v5, v6, v1}, Lcom/miui/gallery/util/SyncLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 407
    invoke-super {p0}, Lcom/miui/gallery/service/ServiceBase;->onCreate()V

    .line 408
    const-string v3, "AsyncUpDownloadService"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mStartTime:J

    .line 411
    new-instance v3, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;

    const-string v4, "AsyncUpDownloadService#Foreground"

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;-><init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mForegroundRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ForegroundRef;

    .line 412
    new-instance v3, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;

    const-string v4, "AsyncUpDownloadService#WakeLock"

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;-><init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWakeLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$WakeLockRef;

    .line 413
    new-instance v3, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;

    const-string v4, "AsyncUpDownloadService#WifiLock"

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$WifiLockRef;-><init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mWifiLockRef:Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;

    .line 415
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.miui.gallery.ACTION_SYNC_IN_BACKGROUND"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 416
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 418
    sget-boolean v3, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->WAKELOCK_ONLY_SCREEN_OFF:Z

    if-eqz v3, :cond_0

    .line 419
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 420
    .local v2, "screenFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    .end local v2    # "screenFilter":Landroid/content/IntentFilter;
    :cond_0
    sget-boolean v3, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->WAKELOCK_ONLY_CHARGING:Z

    if-eqz v3, :cond_1

    .line 425
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 426
    .local v0, "batteryFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    iget-object v3, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 429
    .end local v0    # "batteryFilter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->release()V

    .line 449
    const-string v1, "AsyncUpDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy, elapse time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-super {p0}, Lcom/miui/gallery/service/ServiceBase;->onDestroy()V

    .line 453
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 454
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "service_elapse_time"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->mStartTime:J

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

    .line 455
    const-string v1, "Sync"

    const-string/jumbo v2, "sync_service_time"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 456
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 435
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/service/ServiceBase;->onStartCommand(Landroid/content/Intent;II)I

    .line 436
    if-nez p1, :cond_0

    .line 437
    const-string v0, "AsyncUpDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null intent parameter in onStartCommand! intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->stopSelf()V

    .line 443
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 441
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->handleRequest(Landroid/content/Intent;)V

    goto :goto_0
.end method
