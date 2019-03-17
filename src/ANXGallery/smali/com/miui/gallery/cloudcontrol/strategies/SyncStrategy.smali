.class public Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "SyncStrategy.java"


# instance fields
.field private isAutoDownload:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto_download"
    .end annotation
.end field

.field private isAutoDownloadBackPeriodic:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto-download-in-back-periodic"
    .end annotation
.end field

.field private isAutoDownloadForePeriodic:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto-download-in-fore-periodic"
    .end annotation
.end field

.field private isAutoDownloadRequireDeviceIdle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto-download-require-device-idle"
    .end annotation
.end field

.field private isAutoDownloadShare:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto_download_share"
    .end annotation
.end field

.field private isGuideCloudInternational:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "guide-cloud-for-international-build"
    .end annotation
.end field

.field private isMonitorBackground:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "monitor_background"
    .end annotation
.end field

.field private isMonitorEnable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "monitor_enable"
    .end annotation
.end field

.field private isMonitorSyncTime:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "monitor_sync_time"
    .end annotation
.end field

.field private isMonitorTraffic:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "monitor_traffic"
    .end annotation
.end field

.field private isSupportBackupOnlyWifi:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "support_backup_only_wifi"
    .end annotation
.end field

.field private mAutoDownloadNumInForeground:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto-download-num-in-foreground"
    .end annotation
.end field

.field private mAutoDownloadOwnerSyncedImage:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto-download-owner-synced-image"
    .end annotation
.end field

.field private mAutoDownloadShareSyncedImage:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto-download-share-synced-image"
    .end annotation
.end field

.field private mAutoDownloadSpaceLimit:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto-download-space-limit"
    .end annotation
.end field

.field private mAutoDownloadType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_type"
    .end annotation
.end field

.field private mDelayUploadTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delay-upload-time"
    .end annotation
.end field

.field private mMaxDownloadTimes:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max-download-times-when-timeout"
    .end annotation
.end field

.field private mMaxTempOperationServerTagCapacity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max-capacity-temp-operation-server-tag"
    .end annotation
.end field

.field private mMonitorBackBufferTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "monitor_background_buffer_time"
    .end annotation
.end field

.field private mMonitorBackUpperTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "monitor_background_upper_time"
    .end annotation
.end field

.field private mMonitorCheckInterval:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "monitor_check_interval"
    .end annotation
.end field

.field private mMonitorSyncUpperTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "monitor_sync_upper_time"
    .end annotation
.end field

.field private mMonitorTrafficStep:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "monitor_traffic_step"
    .end annotation
.end field

.field private mOnlyChargingAcquireWakelock:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "only-charging-acquire-wakelock"
    .end annotation
.end field

.field private mOnlyScreenOffAcquireWakelock:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "only-screen-off-acquire-wakelock"
    .end annotation
.end field

.field private mTotalOwnerSaveThumbnailCountLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total-owner-save-thumbnail-count-limit"
    .end annotation
.end field

.field private mTotalSharerSaveThumbnailCountLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total-sharer-save-thumbnail-count-limit"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    .line 113
    const/16 v0, 0x2710

    iput v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mTotalOwnerSaveThumbnailCountLimit:I

    .line 114
    iput v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mTotalSharerSaveThumbnailCountLimit:I

    .line 115
    iput-wide v4, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mDelayUploadTime:J

    .line 116
    iput-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mOnlyScreenOffAcquireWakelock:Z

    .line 117
    iput-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mOnlyChargingAcquireWakelock:Z

    .line 118
    const/16 v0, 0x1e

    iput v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMaxTempOperationServerTagCapacity:I

    .line 119
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mAutoDownloadSpaceLimit:F

    .line 120
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mAutoDownloadNumInForeground:I

    .line 121
    iput-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mAutoDownloadOwnerSyncedImage:Z

    .line 122
    iput-boolean v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mAutoDownloadShareSyncedImage:Z

    .line 123
    iput-boolean v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownloadBackPeriodic:Z

    .line 124
    iput-boolean v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownloadForePeriodic:Z

    .line 125
    iput-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownloadRequireDeviceIdle:Z

    .line 126
    iput-boolean v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isGuideCloudInternational:Z

    .line 127
    iput v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMaxDownloadTimes:I

    .line 129
    iput-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownload:Z

    .line 130
    iput v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mAutoDownloadType:I

    .line 131
    iput-boolean v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownloadShare:Z

    .line 133
    iput-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isSupportBackupOnlyWifi:Z

    .line 135
    iput-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorEnable:Z

    .line 136
    iput-wide v4, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorCheckInterval:J

    .line 137
    iput-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorBackground:Z

    .line 138
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorBackBufferTime:J

    .line 139
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorBackUpperTime:J

    .line 140
    iput-boolean v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorTraffic:Z

    .line 141
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorTrafficStep:J

    .line 142
    iput-boolean v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorSyncTime:Z

    .line 143
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorSyncUpperTime:J

    .line 144
    return-void
.end method

.method public static createDefault()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAutoDownloadSpaceLimit()F
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mAutoDownloadSpaceLimit:F

    return v0
.end method

.method public getAutoDownloadType()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mAutoDownloadType:I

    return v0
.end method

.method public getDelayUploadTime()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mDelayUploadTime:J

    return-wide v0
.end method

.method public getMaxDownloadTimes()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMaxDownloadTimes:I

    return v0
.end method

.method public getMaxTempOperationServerTagCapacity()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMaxTempOperationServerTagCapacity:I

    return v0
.end method

.method public getMonitorBackBufferTime()J
    .locals 2

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorBackBufferTime:J

    return-wide v0
.end method

.method public getMonitorBackUpperTime()J
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorBackUpperTime:J

    return-wide v0
.end method

.method public getMonitorCheckInterval()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorCheckInterval:J

    return-wide v0
.end method

.method public getMonitorSyncUpperTime()J
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorSyncUpperTime:J

    return-wide v0
.end method

.method public getMonitorTrafficStep()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorTrafficStep:J

    return-wide v0
.end method

.method public isAutoDownload()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownload:Z

    return v0
.end method

.method public isAutoDownloadRequireDeviceIdle()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownloadRequireDeviceIdle:Z

    return v0
.end method

.method public isAutoDownloadShare()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownloadShare:Z

    return v0
.end method

.method public isGuideCloudInternational()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isGuideCloudInternational:Z

    return v0
.end method

.method public isMonitorBackground()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorBackground:Z

    return v0
.end method

.method public isMonitorEnable()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorEnable:Z

    return v0
.end method

.method public isMonitorSyncTime()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorSyncTime:Z

    return v0
.end method

.method public isMonitorTraffic()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorTraffic:Z

    return v0
.end method

.method public isOnlyChargingAcquireWakelock()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mOnlyChargingAcquireWakelock:Z

    return v0
.end method

.method public isOnlyScreenOffAcquireWakelock()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mOnlyScreenOffAcquireWakelock:Z

    return v0
.end method

.method public isSupportBackupOnlyWifi()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isSupportBackupOnlyWifi:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncStrategy{mTotalOwnerSaveThumbnailCountLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mTotalOwnerSaveThumbnailCountLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTotalSharerSaveThumbnailCountLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mTotalSharerSaveThumbnailCountLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDelayUploadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mDelayUploadTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnlyScreenOffAcquireWakelock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mOnlyScreenOffAcquireWakelock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnlyChargingAcquireWakelock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mOnlyChargingAcquireWakelock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxTempOperationServerTagCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMaxTempOperationServerTagCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoDownloadSpaceLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mAutoDownloadSpaceLimit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoDownloadNumInForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mAutoDownloadNumInForeground:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoDownloadOwnerSyncedImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mAutoDownloadOwnerSyncedImage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoDownloadShareSyncedImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mAutoDownloadShareSyncedImage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAutoDownloadBackPeriodic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownloadBackPeriodic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAutoDownloadForePeriodic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownloadForePeriodic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAutoDownloadRequireDeviceIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownloadRequireDeviceIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGuideCloudInternational="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isGuideCloudInternational:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAutoDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoDownloadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mAutoDownloadType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAutoDownloadShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownloadShare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSupportBackupOnlyWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isSupportBackupOnlyWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMonitorEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMonitorCheckInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorCheckInterval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMonitorBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMonitorBackBufferTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorBackBufferTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMonitorBackUpperTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorBackUpperTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMonitorTraffic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorTraffic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMonitorTrafficStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorTrafficStep:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMonitorSyncTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorSyncTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMonitorSyncUpperTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->mMonitorSyncUpperTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
