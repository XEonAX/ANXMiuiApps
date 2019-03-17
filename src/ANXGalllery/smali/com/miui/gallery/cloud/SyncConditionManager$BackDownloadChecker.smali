.class Lcom/miui/gallery/cloud/SyncConditionManager$BackDownloadChecker;
.super Lcom/miui/gallery/cloud/SyncConditionManager$Checker;
.source "SyncConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/SyncConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackDownloadChecker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$Checker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/SyncConditionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/SyncConditionManager$1;

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/miui/gallery/cloud/SyncConditionManager$BackDownloadChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkInternal(Lcom/miui/gallery/cloud/syncstate/SyncType;)I
    .locals 12
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 242
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 243
    const/4 v7, 0x2

    .line 257
    :goto_0
    return v7

    .line 245
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v5, 0x1

    .line 246
    .local v5, "networkFree":Z
    :goto_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getIsPlugged()Z

    move-result v2

    .line 247
    .local v2, "isPlugged":Z
    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 248
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorStoragePath()Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "priorStoragePath":Ljava/lang/String;
    invoke-static {v6}, Lcom/miui/gallery/util/StorageUtils;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v8

    .line 250
    .local v8, "total":J
    invoke-static {v6}, Lcom/miui/gallery/util/StorageUtils;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v0

    .line 251
    .local v0, "available":J
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->getAutoDownloadSpaceLimit()F

    move-result v4

    .line 252
    .local v4, "limit":F
    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-lez v7, :cond_3

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    long-to-float v10, v0

    mul-float/2addr v7, v10

    long-to-float v10, v8

    div-float/2addr v7, v10

    cmpl-float v7, v7, v4

    if-lez v7, :cond_2

    const/4 v3, 0x1

    .line 253
    .local v3, "isSpaceOk":Z
    :goto_2
    if-eqz v3, :cond_4

    .line 254
    const/4 v7, 0x0

    goto :goto_0

    .line 245
    .end local v0    # "available":J
    .end local v2    # "isPlugged":Z
    .end local v3    # "isSpaceOk":Z
    .end local v4    # "limit":F
    .end local v5    # "networkFree":Z
    .end local v6    # "priorStoragePath":Ljava/lang/String;
    .end local v8    # "total":J
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 252
    .restart local v0    # "available":J
    .restart local v2    # "isPlugged":Z
    .restart local v4    # "limit":F
    .restart local v5    # "networkFree":Z
    .restart local v6    # "priorStoragePath":Ljava/lang/String;
    .restart local v8    # "total":J
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 257
    .end local v0    # "available":J
    .end local v4    # "limit":F
    .end local v6    # "priorStoragePath":Ljava/lang/String;
    .end local v8    # "total":J
    :cond_4
    const/4 v7, 0x2

    goto :goto_0
.end method
