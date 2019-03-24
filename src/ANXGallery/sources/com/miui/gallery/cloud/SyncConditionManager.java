package com.miui.gallery.cloud;

import android.content.Context;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.policy.IPolicy;
import com.miui.gallery.cloud.policy.SyncPolicyManager;
import com.miui.gallery.cloud.syncstate.SyncStateManager;
import com.miui.gallery.cloud.syncstate.SyncStateUtil;
import com.miui.gallery.cloud.syncstate.SyncStateUtil.CloudSpaceInfo;
import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.strategies.SyncStrategy;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.SyncLog;
import com.miui.internal.vip.VipConstants;

public class SyncConditionManager {
    private static final Checker[] sCheckers = new Checker[14];
    private static final CheckerFactory sFactory = new CheckerFactory();
    private static long sSpaceCheckTime = 0;
    private static SyncStrategy sSyncConfig;
    private static Object sSyncConfigLock = new Object();

    private static abstract class Checker {
        private final String TAG = getClass().getSimpleName();
        private volatile boolean mCanceled = false;

        protected abstract int checkInternal(SyncType syncType);

        Checker() {
        }

        private boolean isCanceled() {
            return this.mCanceled;
        }

        protected void setCanceled(boolean canceled) {
            if (canceled) {
                SyncLog.d(this.TAG, new Throwable("setCanceled: " + canceled));
            }
            this.mCanceled = canceled;
        }

        public int check(SyncType syncType) {
            int result = 2;
            if (isCanceled()) {
                SyncLog.d(this.TAG, "isCanceled");
            } else if (NetworkUtils.isNetworkConnected()) {
                result = checkInternal(syncType);
                if (result != 0) {
                    SyncLog.d(this.TAG, "check result %d, sync type %s", Integer.valueOf(result), syncType);
                }
            } else {
                SyncLog.d(this.TAG, "network not connected");
            }
            return result;
        }

        public int checkIgnoreCancel(SyncType syncType) {
            if (NetworkUtils.isNetworkConnected()) {
                return checkInternal(syncType);
            }
            SyncLog.d(this.TAG, "network not connected");
            return 2;
        }
    }

    private static class BackDownloadChecker extends Checker {
        private BackDownloadChecker() {
        }

        protected int checkInternal(SyncType syncType) {
            if (!GalleryCloudUtils.isGalleryCloudSyncable(GalleryApp.sGetAndroidContext())) {
                return 2;
            }
            boolean networkFree = !NetworkUtils.isActiveNetworkMetered();
            boolean isPlugged = Sync.getIsPlugged();
            if (networkFree && isPlugged) {
                String priorStoragePath = StorageUtils.getPriorStoragePath();
                long total = StorageUtils.getTotalBytes(priorStoragePath);
                long available = StorageUtils.getAvailableBytes(priorStoragePath);
                boolean isSpaceOk = (available <= 0 || total <= 0) ? false : (1.0f * ((float) available)) / ((float) total) > CloudControlStrategyHelper.getSyncStrategy().getAutoDownloadSpaceLimit();
                if (isSpaceOk) {
                    return 0;
                }
            }
            return 2;
        }
    }

    private static class BackDownloadWeakChecker extends Checker {
        private BackDownloadWeakChecker() {
        }

        protected int checkInternal(SyncType syncType) {
            if (!GalleryCloudUtils.isGalleryCloudSyncable(GalleryApp.sGetAndroidContext())) {
                return 2;
            }
            boolean networkFree;
            if (NetworkUtils.isActiveNetworkMetered()) {
                networkFree = false;
            } else {
                networkFree = true;
            }
            boolean isPowerOk = Sync.getPowerCanSync();
            boolean isAppForeground = MiscUtil.isAppProcessInForeground(GalleryApp.sGetAndroidContext());
            if (networkFree && isPowerOk && isAppForeground) {
                return 0;
            }
            return 2;
        }
    }

    private static class ServerTagChecker extends Checker {
        private ServerTagChecker() {
        }

        protected int checkInternal(SyncType syncType) {
            if (!GalleryCloudUtils.isGalleryCloudSyncable(GalleryApp.sGetAndroidContext())) {
                return 2;
            }
            IPolicy policy = SyncPolicyManager.getInstance().getPolicy(syncType);
            if (policy == null || !policy.isEnable()) {
                SyncLog.d("SyncConditionManager", "policy not enable");
                return 2;
            } else if (policy.isIgnoreBatteryLow() || Sync.getPowerCanSync()) {
                return 0;
            } else {
                SyncLog.d("SyncConditionManager", "battery low");
                return 2;
            }
        }
    }

    private static class BackUploadChecker extends ServerTagChecker {
        private BackUploadChecker() {
            super();
        }

        protected int checkInternal(SyncType syncType) {
            int result = super.checkInternal(syncType);
            if (result != 0) {
                return result;
            }
            IPolicy policy = SyncPolicyManager.getInstance().getPolicy(syncType);
            if (policy.isDisallowMetered() && NetworkUtils.isActiveNetworkMetered()) {
                SyncLog.d("SyncConditionManager", "network is metered");
                return 2;
            } else if (!policy.isRequireCharging() || Sync.getIsPlugged()) {
                return result;
            } else {
                SyncLog.d("SyncConditionManager", "not charged");
                return 2;
            }
        }
    }

    private static class CheckerFactory {
        private CheckerFactory() {
        }

        public Checker createChecker(int priority) {
            switch (priority) {
                case 0:
                case 1:
                    return new ServerTagChecker();
                case 2:
                case 3:
                case 4:
                case 5:
                    return new BackUploadChecker();
                case 6:
                case 8:
                    return new BackDownloadChecker();
                case 7:
                    return new BackDownloadWeakChecker();
                case 9:
                case 10:
                    return new ForeDownloadOriginChecker();
                case 11:
                    return new ForceForeDownloadOriginChecker();
                case 12:
                case 13:
                    return new ForeDownloadThumbnailChecker();
                default:
                    return new InvalidChecker();
            }
        }
    }

    private static class ForceForeDownloadOriginChecker extends Checker {
        private ForceForeDownloadOriginChecker() {
        }

        protected int checkInternal(SyncType syncType) {
            return 0;
        }
    }

    private static class ForeDownloadOriginChecker extends Checker {
        private ForeDownloadOriginChecker() {
        }

        protected int checkInternal(SyncType syncType) {
            boolean networkFree;
            if (NetworkUtils.isActiveNetworkMetered()) {
                networkFree = false;
            } else {
                networkFree = true;
            }
            if (networkFree) {
                return 0;
            }
            return 3;
        }
    }

    private static class ForeDownloadThumbnailChecker extends Checker {
        private ForeDownloadThumbnailChecker() {
        }

        protected int checkInternal(SyncType syncType) {
            return 0;
        }
    }

    private static class InvalidChecker extends Checker {
        private InvalidChecker() {
        }

        protected int checkInternal(SyncType syncType) {
            return 2;
        }
    }

    private static Checker instance(int priority) {
        Checker checker;
        synchronized (sCheckers) {
            if (sCheckers[priority] == null) {
                sCheckers[priority] = sFactory.createChecker(priority);
            }
            checker = sCheckers[priority];
        }
        return checker;
    }

    public static void setCancelled(int priority, boolean cancelled) {
        instance(priority).setCanceled(cancelled);
    }

    public static void setCancelledForAllBackground(boolean cancelled) {
        for (int i = 0; i < 14; i++) {
            if (RequestItemBase.isBackgroundPriority(i)) {
                setCancelled(i, cancelled);
            }
        }
    }

    public static int check(int priority) {
        return checkInternal(priority, SyncStateManager.getInstance().getSyncType());
    }

    public static int checkForItem(RequestItemBase item) {
        int result = checkInternal(item.priority, SyncStateManager.getInstance().getSyncType());
        if (result != 0 || item.getStatus() == 0) {
            return result;
        }
        return 3;
    }

    public static int checkIgnoreCancel(int priority, SyncType syncType) {
        return checkInternalIgnoreCancel(priority, syncType);
    }

    private static int checkInternal(int priority, SyncType syncType) {
        if (CTA.canConnectNetwork()) {
            return instance(priority).check(syncType);
        }
        SyncLog.d("SyncConditionManager", "check cta false");
        return 2;
    }

    private static int checkInternalIgnoreCancel(int priority, SyncType syncType) {
        if (CTA.canConnectNetwork()) {
            return instance(priority).checkIgnoreCancel(syncType);
        }
        SyncLog.d("SyncConditionManager", "check cta false");
        return 2;
    }

    public static SyncStrategy sGetSyncConfig() {
        SyncStrategy syncStrategy;
        synchronized (sSyncConfigLock) {
            if (sSyncConfig == null) {
                sSyncConfig = CloudControlStrategyHelper.getSyncStrategy();
            }
            syncStrategy = sSyncConfig;
        }
        return syncStrategy;
    }

    public static int checkCloudSpace(Context context) {
        if (SpaceFullHandler.isOwnerSpaceFull()) {
            SyncLog.d("SyncConditionManager", "Preference.sGetCloudGallerySpaceFull");
            CloudSpaceInfo info = SyncStateUtil.getCloudSpaceInfo(context);
            long free = info.getTotal() - info.getUsed();
            if (free < 20971520) {
                SyncLog.d("SyncConditionManager", "space free little %s", Long.valueOf(free));
                long interval = System.currentTimeMillis() - sSpaceCheckTime;
                if (interval > 0 && interval < VipConstants.HOUR) {
                    SyncLog.d("SyncConditionManager", "interval %s", Long.valueOf(interval));
                    return 2;
                }
            }
            SyncLog.d("SyncConditionManager", "try refresh space full pref entry");
            sSpaceCheckTime = System.currentTimeMillis();
        }
        return 0;
    }
}
