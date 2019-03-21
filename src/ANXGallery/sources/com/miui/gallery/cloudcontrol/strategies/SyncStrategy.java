package com.miui.gallery.cloudcontrol.strategies;

import com.google.gson.annotations.SerializedName;

public class SyncStrategy extends BaseStrategy {
    @SerializedName("auto_download")
    private boolean isAutoDownload = true;
    @SerializedName("auto-download-in-back-periodic")
    private boolean isAutoDownloadBackPeriodic = false;
    @SerializedName("auto-download-in-fore-periodic")
    private boolean isAutoDownloadForePeriodic = false;
    @SerializedName("auto-download-require-device-idle")
    private boolean isAutoDownloadRequireDeviceIdle = true;
    @SerializedName("auto_download_share")
    private boolean isAutoDownloadShare = false;
    @SerializedName("guide-cloud-for-international-build")
    private boolean isGuideCloudInternational = false;
    @SerializedName("monitor_background")
    private boolean isMonitorBackground = true;
    @SerializedName("monitor_enable")
    private boolean isMonitorEnable = true;
    @SerializedName("monitor_sync_time")
    private boolean isMonitorSyncTime = false;
    @SerializedName("monitor_traffic")
    private boolean isMonitorTraffic = false;
    @SerializedName("support_backup_only_wifi")
    private boolean isSupportBackupOnlyWifi = true;
    @SerializedName("auto-download-num-in-foreground")
    private int mAutoDownloadNumInForeground = 500;
    @SerializedName("auto-download-owner-synced-image")
    private boolean mAutoDownloadOwnerSyncedImage = true;
    @SerializedName("auto-download-share-synced-image")
    private boolean mAutoDownloadShareSyncedImage = false;
    @SerializedName("auto-download-space-limit")
    private float mAutoDownloadSpaceLimit = 0.2f;
    @SerializedName("download_type")
    private int mAutoDownloadType = 0;
    @SerializedName("delay-upload-time")
    private long mDelayUploadTime = 0;
    @SerializedName("max-download-times-when-timeout")
    private int mMaxDownloadTimes = 1;
    @SerializedName("max-capacity-temp-operation-server-tag")
    private int mMaxTempOperationServerTagCapacity = 30;
    @SerializedName("monitor_background_buffer_time")
    private long mMonitorBackBufferTime = 15000;
    @SerializedName("monitor_background_upper_time")
    private long mMonitorBackUpperTime = 120000;
    @SerializedName("monitor_check_interval")
    private long mMonitorCheckInterval = 0;
    @SerializedName("monitor_sync_upper_time")
    private long mMonitorSyncUpperTime = 1800000;
    @SerializedName("monitor_traffic_step")
    private long mMonitorTrafficStep = 104857600;
    @SerializedName("only-charging-acquire-wakelock")
    private boolean mOnlyChargingAcquireWakelock = true;
    @SerializedName("only-screen-off-acquire-wakelock")
    private boolean mOnlyScreenOffAcquireWakelock = true;
    @SerializedName("total-owner-save-thumbnail-count-limit")
    private int mTotalOwnerSaveThumbnailCountLimit = 10000;
    @SerializedName("total-sharer-save-thumbnail-count-limit")
    private int mTotalSharerSaveThumbnailCountLimit = 0;

    public static SyncStrategy createDefault() {
        return new SyncStrategy();
    }

    public long getDelayUploadTime() {
        return this.mDelayUploadTime;
    }

    public boolean isOnlyScreenOffAcquireWakelock() {
        return this.mOnlyScreenOffAcquireWakelock;
    }

    public boolean isOnlyChargingAcquireWakelock() {
        return this.mOnlyChargingAcquireWakelock;
    }

    public int getMaxTempOperationServerTagCapacity() {
        return this.mMaxTempOperationServerTagCapacity;
    }

    public float getAutoDownloadSpaceLimit() {
        return this.mAutoDownloadSpaceLimit;
    }

    @Deprecated
    public boolean isAutoDownloadRequireDeviceIdle() {
        return this.isAutoDownloadRequireDeviceIdle;
    }

    public boolean isGuideCloudInternational() {
        return this.isGuideCloudInternational;
    }

    public int getMaxDownloadTimes() {
        return this.mMaxDownloadTimes;
    }

    public boolean isAutoDownload() {
        return this.isAutoDownload;
    }

    public int getAutoDownloadType() {
        return this.mAutoDownloadType;
    }

    public boolean isAutoDownloadShare() {
        return this.isAutoDownloadShare;
    }

    public boolean isSupportBackupOnlyWifi() {
        return this.isSupportBackupOnlyWifi;
    }

    public boolean isMonitorEnable() {
        return this.isMonitorEnable;
    }

    public long getMonitorCheckInterval() {
        return this.mMonitorCheckInterval;
    }

    public boolean isMonitorBackground() {
        return this.isMonitorBackground;
    }

    public long getMonitorBackBufferTime() {
        return this.mMonitorBackBufferTime;
    }

    public long getMonitorBackUpperTime() {
        return this.mMonitorBackUpperTime;
    }

    public boolean isMonitorTraffic() {
        return this.isMonitorTraffic;
    }

    public long getMonitorTrafficStep() {
        return this.mMonitorTrafficStep;
    }

    public boolean isMonitorSyncTime() {
        return this.isMonitorSyncTime;
    }

    public long getMonitorSyncUpperTime() {
        return this.mMonitorSyncUpperTime;
    }

    public String toString() {
        return "SyncStrategy{mTotalOwnerSaveThumbnailCountLimit=" + this.mTotalOwnerSaveThumbnailCountLimit + ", mTotalSharerSaveThumbnailCountLimit=" + this.mTotalSharerSaveThumbnailCountLimit + ", mDelayUploadTime=" + this.mDelayUploadTime + ", mOnlyScreenOffAcquireWakelock=" + this.mOnlyScreenOffAcquireWakelock + ", mOnlyChargingAcquireWakelock=" + this.mOnlyChargingAcquireWakelock + ", mMaxTempOperationServerTagCapacity=" + this.mMaxTempOperationServerTagCapacity + ", mAutoDownloadSpaceLimit=" + this.mAutoDownloadSpaceLimit + ", mAutoDownloadNumInForeground=" + this.mAutoDownloadNumInForeground + ", mAutoDownloadOwnerSyncedImage=" + this.mAutoDownloadOwnerSyncedImage + ", mAutoDownloadShareSyncedImage=" + this.mAutoDownloadShareSyncedImage + ", isAutoDownloadBackPeriodic=" + this.isAutoDownloadBackPeriodic + ", isAutoDownloadForePeriodic=" + this.isAutoDownloadForePeriodic + ", isAutoDownloadRequireDeviceIdle=" + this.isAutoDownloadRequireDeviceIdle + ", isGuideCloudInternational=" + this.isGuideCloudInternational + ", isAutoDownload=" + this.isAutoDownload + ", mAutoDownloadType=" + this.mAutoDownloadType + ", isAutoDownloadShare=" + this.isAutoDownloadShare + ", isSupportBackupOnlyWifi=" + this.isSupportBackupOnlyWifi + ", isMonitorEnable=" + this.isMonitorEnable + ", mMonitorCheckInterval=" + this.mMonitorCheckInterval + ", isMonitorBackground=" + this.isMonitorBackground + ", mMonitorBackBufferTime=" + this.mMonitorBackBufferTime + ", mMonitorBackUpperTime=" + this.mMonitorBackUpperTime + ", isMonitorTraffic=" + this.isMonitorTraffic + ", mMonitorTrafficStep=" + this.mMonitorTrafficStep + ", isMonitorSyncTime=" + this.isMonitorSyncTime + ", mMonitorSyncUpperTime=" + this.mMonitorSyncUpperTime + '}';
    }
}
