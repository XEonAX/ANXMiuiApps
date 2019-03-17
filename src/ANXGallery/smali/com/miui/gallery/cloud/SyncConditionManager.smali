.class public Lcom/miui/gallery/cloud/SyncConditionManager;
.super Ljava/lang/Object;
.source "SyncConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/SyncConditionManager$CheckerFactory;,
        Lcom/miui/gallery/cloud/SyncConditionManager$ForeDownloadThumbnailChecker;,
        Lcom/miui/gallery/cloud/SyncConditionManager$ForceForeDownloadOriginChecker;,
        Lcom/miui/gallery/cloud/SyncConditionManager$ForeDownloadOriginChecker;,
        Lcom/miui/gallery/cloud/SyncConditionManager$BackDownloadWeakChecker;,
        Lcom/miui/gallery/cloud/SyncConditionManager$BackDownloadChecker;,
        Lcom/miui/gallery/cloud/SyncConditionManager$BackUploadChecker;,
        Lcom/miui/gallery/cloud/SyncConditionManager$ServerTagChecker;,
        Lcom/miui/gallery/cloud/SyncConditionManager$InvalidChecker;,
        Lcom/miui/gallery/cloud/SyncConditionManager$Checker;
    }
.end annotation


# static fields
.field private static final sCheckers:[Lcom/miui/gallery/cloud/SyncConditionManager$Checker;

.field private static final sFactory:Lcom/miui/gallery/cloud/SyncConditionManager$CheckerFactory;

.field private static sSpaceCheckTime:J

.field private static sSyncConfig:Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

.field private static sSyncConfigLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/SyncConditionManager;->sSyncConfigLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/miui/gallery/cloud/SyncConditionManager$CheckerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/SyncConditionManager$CheckerFactory;-><init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V

    sput-object v0, Lcom/miui/gallery/cloud/SyncConditionManager;->sFactory:Lcom/miui/gallery/cloud/SyncConditionManager$CheckerFactory;

    .line 32
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/miui/gallery/cloud/SyncConditionManager$Checker;

    sput-object v0, Lcom/miui/gallery/cloud/SyncConditionManager;->sCheckers:[Lcom/miui/gallery/cloud/SyncConditionManager$Checker;

    .line 101
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/gallery/cloud/SyncConditionManager;->sSpaceCheckTime:J

    return-void
.end method

.method public static check(I)I
    .locals 1
    .param p0, "priority"    # I

    .prologue
    .line 60
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/cloud/SyncConditionManager;->checkInternal(ILcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v0

    return v0
.end method

.method public static checkCloudSpace(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isOwnerSpaceFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    const-string v3, "SyncConditionManager"

    const-string v6, "Preference.sGetCloudGallerySpaceFull"

    invoke-static {v3, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getCloudSpaceInfo(Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;

    move-result-object v2

    .line 110
    .local v2, "info":Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->getTotal()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;->getUsed()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 111
    .local v0, "free":J
    const-wide/32 v6, 0x1400000

    cmp-long v3, v0, v6

    if-gez v3, :cond_0

    .line 112
    const-string v3, "SyncConditionManager"

    const-string/jumbo v6, "space free little %s"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/miui/gallery/cloud/SyncConditionManager;->sSpaceCheckTime:J

    sub-long v4, v6, v8

    .line 114
    .local v4, "interval":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const-wide/32 v6, 0x36ee80

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 115
    const-string v3, "SyncConditionManager"

    const-string v6, "interval %s"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const/4 v3, 0x2

    .line 122
    .end local v0    # "free":J
    .end local v2    # "info":Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;
    .end local v4    # "interval":J
    :goto_0
    return v3

    .line 119
    .restart local v0    # "free":J
    .restart local v2    # "info":Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;
    :cond_0
    const-string v3, "SyncConditionManager"

    const-string/jumbo v6, "try refresh space full pref entry"

    invoke-static {v3, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/miui/gallery/cloud/SyncConditionManager;->sSpaceCheckTime:J

    .line 122
    .end local v0    # "free":J
    .end local v2    # "info":Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$CloudSpaceInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static checkForItem(Lcom/miui/gallery/cloud/RequestItemBase;)I
    .locals 3
    .param p0, "item"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 64
    iget v1, p0, Lcom/miui/gallery/cloud/RequestItemBase;->priority:I

    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/cloud/SyncConditionManager;->checkInternal(ILcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v0

    .line 65
    .local v0, "result":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestItemBase;->getStatus()I

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x3

    .line 69
    :cond_0
    return v0
.end method

.method public static checkIgnoreCancel(ILcom/miui/gallery/cloud/syncstate/SyncType;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/SyncConditionManager;->checkInternalIgnoreCancel(ILcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v0

    return v0
.end method

.method private static checkInternal(ILcom/miui/gallery/cloud/syncstate/SyncType;)I
    .locals 2
    .param p0, "priority"    # I
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 77
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const-string v0, "SyncConditionManager"

    const-string v1, "check cta false"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x2

    .line 81
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/cloud/SyncConditionManager;->instance(I)Lcom/miui/gallery/cloud/SyncConditionManager$Checker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->check(Lcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v0

    goto :goto_0
.end method

.method private static checkInternalIgnoreCancel(ILcom/miui/gallery/cloud/syncstate/SyncType;)I
    .locals 2
    .param p0, "priority"    # I
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 85
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-string v0, "SyncConditionManager"

    const-string v1, "check cta false"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x2

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/cloud/SyncConditionManager;->instance(I)Lcom/miui/gallery/cloud/SyncConditionManager$Checker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->checkIgnoreCancel(Lcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v0

    goto :goto_0
.end method

.method private static instance(I)Lcom/miui/gallery/cloud/SyncConditionManager$Checker;
    .locals 3
    .param p0, "priority"    # I

    .prologue
    .line 35
    sget-object v1, Lcom/miui/gallery/cloud/SyncConditionManager;->sCheckers:[Lcom/miui/gallery/cloud/SyncConditionManager$Checker;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/miui/gallery/cloud/SyncConditionManager;->sCheckers:[Lcom/miui/gallery/cloud/SyncConditionManager$Checker;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lcom/miui/gallery/cloud/SyncConditionManager;->sCheckers:[Lcom/miui/gallery/cloud/SyncConditionManager$Checker;

    sget-object v2, Lcom/miui/gallery/cloud/SyncConditionManager;->sFactory:Lcom/miui/gallery/cloud/SyncConditionManager$CheckerFactory;

    invoke-virtual {v2, p0}, Lcom/miui/gallery/cloud/SyncConditionManager$CheckerFactory;->createChecker(I)Lcom/miui/gallery/cloud/SyncConditionManager$Checker;

    move-result-object v2

    aput-object v2, v0, p0

    .line 39
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/SyncConditionManager;->sCheckers:[Lcom/miui/gallery/cloud/SyncConditionManager$Checker;

    aget-object v0, v0, p0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sGetSyncConfig()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;
    .locals 2

    .prologue
    .line 93
    sget-object v1, Lcom/miui/gallery/cloud/SyncConditionManager;->sSyncConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/miui/gallery/cloud/SyncConditionManager;->sSyncConfig:Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/SyncConditionManager;->sSyncConfig:Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    .line 97
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/SyncConditionManager;->sSyncConfig:Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setCancelled(IZ)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "cancelled"    # Z

    .prologue
    .line 44
    invoke-static {p0}, Lcom/miui/gallery/cloud/SyncConditionManager;->instance(I)Lcom/miui/gallery/cloud/SyncConditionManager$Checker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;->setCanceled(Z)V

    .line 45
    return-void
.end method

.method public static setCancelledForAllBackground(Z)V
    .locals 2
    .param p0, "cancelled"    # Z

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 49
    invoke-static {v0}, Lcom/miui/gallery/cloud/RequestItemBase;->isBackgroundPriority(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {v0, p0}, Lcom/miui/gallery/cloud/SyncConditionManager;->setCancelled(IZ)V

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method
