package com.xiaomi.scanner.module.amazoncloudconfig;

import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.settings.FeatureManager;
import com.xiaomi.scanner.settings.Keys;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.util.DeviceUtil;

public class AmazonAssistantHelper {
    private static final int CLOUD_CONFIG_SERVER_CALL_GAP = 2;
    private static final Tag TAG = new Tag("AmazonAssistantHelper");
    private CloudConfigTask mCloudConfigTask = null;
    private ScanActivity mScanActivity = null;

    public AmazonAssistantHelper(ScanActivity activity) {
        this.mScanActivity = activity;
    }

    public void amazonAssistantCloudConfigCall() {
        boolean isNotEURegion;
        if (DeviceUtil.isEURegion()) {
            isNotEURegion = false;
        } else {
            isNotEURegion = true;
        }
        boolean isCloudConfigCallNeeded = callCloudConfigTimeStamp();
        boolean isAAFeatureAvailable = FeatureManager.isAmazonShoppingModuleAvailable(this.mScanActivity);
        Log.d(TAG, "isNotEURegion : " + isNotEURegion + " - isCloudConfigCallNeeded : " + isCloudConfigCallNeeded + " - " + " isAAShoppingFeatureAvailable : " + isAAFeatureAvailable);
        if (isNotEURegion && isCloudConfigCallNeeded && isAAFeatureAvailable) {
            this.mCloudConfigTask = new CloudConfigTask(this.mScanActivity);
            this.mCloudConfigTask.execute(new Void[0]);
        }
    }

    public boolean callCloudConfigTimeStamp() {
        return isFirstAACloudCall() || checkCloudConfigCallTimeGap();
    }

    public boolean checkCloudConfigCallTimeGap() {
        long finalDiffValue = (System.currentTimeMillis() - this.mScanActivity.getSettingsManager().getLong(SettingsManager.SCOPE_GLOBAL, Keys.KEY_AMAZON_ASSISTANT_TIMESTAMP_STATUS, Long.valueOf(System.currentTimeMillis())).longValue()) / 3600000;
        Log.d(TAG, "Cloud config time gap is  " + finalDiffValue + " hours currently.");
        if (finalDiffValue < 2) {
            return false;
        }
        Log.d(TAG, finalDiffValue + " hours completed till last cloud config server call. So lets hit" + "cloud again.");
        return true;
    }

    public boolean isFirstAACloudCall() {
        long currentTimeStamp = System.currentTimeMillis();
        if (currentTimeStamp == Long.parseLong(this.mScanActivity.getSettingsManager().getString(SettingsManager.SCOPE_GLOBAL, Keys.KEY_AMAZON_ASSISTANT_TIMESTAMP_STATUS, String.valueOf(currentTimeStamp)))) {
            return true;
        }
        return false;
    }

    public void cleanUpCloudTask() {
        if (this.mCloudConfigTask != null && !this.mCloudConfigTask.isCancelled()) {
            this.mCloudConfigTask.cancel(true);
            this.mCloudConfigTask = null;
        }
    }
}
