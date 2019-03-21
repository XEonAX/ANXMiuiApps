package com.miui.gallery.cloud.control;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.cloud.syncstate.SyncStateInfo;
import com.miui.gallery.cloud.syncstate.SyncStateManager;
import com.miui.gallery.cloud.syncstate.SyncStateUtil;
import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.SyncUtil.Request.Builder;
import com.miui.gallery.util.deprecated.Preference;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class SyncMonitor {
    private static final Object LOCK = new Object();
    private static Handler sHandler;
    private static AtomicInteger sSyncStarted = new AtomicInteger();

    public static class UploadInfoAnalyzer {
        private long mAvgSpeed;
        private List<UploadMonitorInfo> mInfos = new LinkedList();
        private ReadWriteLock mLock = new ReentrantReadWriteLock();
        private long mMaxSpeed;
        private long mRecentSpeed;

        interface Func<T> {
            T doFunc();
        }

        public long getRecentSpeed() {
            return ((Long) safeRun(new Func<Long>() {
                public Long doFunc() {
                    return Long.valueOf(UploadInfoAnalyzer.this.mRecentSpeed);
                }
            }, false)).longValue();
        }

        public long getAvgSpeed() {
            return ((Long) safeRun(new Func<Long>() {
                public Long doFunc() {
                    return Long.valueOf(UploadInfoAnalyzer.this.mAvgSpeed);
                }
            }, false)).longValue();
        }

        public long getUploadTraffic() {
            return ((Long) safeRun(new Func<Long>() {
                public Long doFunc() {
                    long traffic = 0;
                    for (UploadMonitorInfo info : UploadInfoAnalyzer.this.mInfos) {
                        traffic += info.size;
                    }
                    return Long.valueOf(traffic);
                }
            }, false)).longValue();
        }

        private boolean isValidInfo(UploadMonitorInfo info) {
            return info != null && info.size > 0 && info.timely > 0;
        }

        private long calculateSpeed(long size, long timely) {
            return (long) ((((float) size) * 1000.0f) / ((float) timely));
        }

        public void addUploadInfo(final UploadMonitorInfo info) {
            if (isValidInfo(info)) {
                safeRun(new Func<Void>() {
                    public Void doFunc() {
                        UploadInfoAnalyzer.this.mRecentSpeed = UploadInfoAnalyzer.this.calculateSpeed(info.size, info.timely);
                        if (UploadInfoAnalyzer.this.mRecentSpeed > UploadInfoAnalyzer.this.mMaxSpeed) {
                            UploadInfoAnalyzer.this.mMaxSpeed = UploadInfoAnalyzer.this.mRecentSpeed;
                        }
                        UploadInfoAnalyzer.this.mInfos.add(info);
                        long totalSize = 0;
                        long totalTime = 0;
                        for (UploadMonitorInfo info : UploadInfoAnalyzer.this.mInfos) {
                            totalSize += info.size;
                            totalTime += info.timely;
                        }
                        UploadInfoAnalyzer.this.mAvgSpeed = UploadInfoAnalyzer.this.calculateSpeed(totalSize, totalTime);
                        return null;
                    }
                }, true);
            }
        }

        private void clear() {
            safeRun(new Func<Void>() {
                public Void doFunc() {
                    UploadInfoAnalyzer.this.mMaxSpeed = UploadInfoAnalyzer.this.mAvgSpeed = UploadInfoAnalyzer.this.mRecentSpeed = 0;
                    UploadInfoAnalyzer.this.mInfos.clear();
                    return null;
                }
            }, true);
        }

        private void lock(boolean write) {
            (write ? this.mLock.writeLock() : this.mLock.readLock()).lock();
        }

        private void unlock(boolean write) {
            (write ? this.mLock.writeLock() : this.mLock.readLock()).unlock();
        }

        public <T> T safeRun(Func<T> func, boolean write) {
            lock(write);
            try {
                T doFunc = func.doFunc();
                return doFunc;
            } finally {
                unlock(write);
            }
        }
    }

    public static class UploadMonitorInfo {
        final long size;
        final long timely;

        public UploadMonitorInfo(long timely, long size) {
            this.timely = timely;
            this.size = size;
        }
    }

    private static final class WorkHandler extends Handler {
        private static int TRAFFIC_STEP_INIT = 1;
        private static long sBackgroundStartTime;
        private static boolean sIsFirstBackground = true;
        private static long sLastCheckTime;
        private static long sSyncStartTime;
        private static Throwable sSyncThrowable;
        private static int sTrafficSteps = TRAFFIC_STEP_INIT;
        private static UploadInfoAnalyzer sUploadInfoAnalyzer;

        public WorkHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    recordSyncStart();
                    return;
                case 2:
                    recordUploadInfo((UploadMonitorInfo) msg.obj);
                    return;
                case 3:
                    recordSyncThrowable((Throwable) msg.obj);
                    return;
                case 4:
                    recordSyncStop();
                    return;
                case 5:
                    recordAppFocused();
                    return;
                default:
                    return;
            }
        }

        private static void recordSyncStart() {
            sSyncThrowable = null;
            sSyncStartTime = System.currentTimeMillis();
            statSyncStart();
        }

        private static void recordUploadInfo(UploadMonitorInfo info) {
            getAnalyzer().addUploadInfo(info);
            tryCheck();
        }

        private static void recordSyncThrowable(Throwable t) {
            sSyncThrowable = t;
        }

        private static void recordSyncStop() {
            Log.d("SyncMonitor", "sync time %s", Long.valueOf(System.currentTimeMillis() - sSyncStartTime));
            sLastCheckTime = 0;
            sSyncStartTime = 0;
            sTrafficSteps = TRAFFIC_STEP_INIT;
            sBackgroundStartTime = 0;
            sIsFirstBackground = true;
            if (sUploadInfoAnalyzer != null) {
                sUploadInfoAnalyzer.clear();
            }
        }

        private static void recordAppFocused() {
            boolean cancelSuccess = true;
            Context context = GalleryApp.sGetAndroidContext();
            Account account = AccountCache.getAccount();
            if (account != null && SyncUtil.isGalleryCloudSyncable(context) && !SyncStateUtil.isSyncing(context)) {
                boolean isPending = ContentResolver.isSyncPending(account, "com.miui.gallery.cloud.provider");
                if (!isPending) {
                    if (!Preference.sIsFirstSynced()) {
                        Log.d("SyncMonitor", "monitor app focused: %s", (Object) "no pending & not synced first");
                        SyncUtil.requestSync(context);
                        return;
                    } else if (SyncStateUtil.getDirtyCount(context).getSyncableCount() > 0) {
                        Log.d("SyncMonitor", "monitor app focused: %s", (Object) "no pending & has dirty");
                        SyncUtil.requestSync(context, new Builder().setSyncType(SyncType.NORMAL).setSyncReason(1).setDelayUpload(false).build());
                        return;
                    }
                }
                if (!isPending || !Preference.sIsFirstSynced()) {
                    return;
                }
                if (SyncStateUtil.getDirtyCount(context).getSyncableCount() <= 0) {
                    ContentResolver.cancelSync(account, "com.miui.gallery.cloud.provider");
                    if (ContentResolver.isSyncPending(account, "com.miui.gallery.cloud.provider")) {
                        cancelSuccess = false;
                    }
                    Log.d("SyncMonitor", "cancel pending result %s", Boolean.valueOf(cancelSuccess));
                    if (cancelSuccess) {
                        Log.d("SyncMonitor", "monitor app focused: %s", (Object) "pending & no dirty");
                        SyncUtil.requestSync(context);
                    }
                } else if (SyncStateInfo.isBackSyncType(SyncStateManager.getInstance().getSyncType())) {
                    Log.d("SyncMonitor", "monitor app focused: %s", (Object) "pending & has dirty & background -> foreground");
                    SyncUtil.requestSync(context, new Builder().setSyncType(SyncType.NORMAL).setSyncReason(1).setDelayUpload(false).build());
                }
            }
        }

        private static UploadInfoAnalyzer getAnalyzer() {
            if (sUploadInfoAnalyzer == null) {
                sUploadInfoAnalyzer = new UploadInfoAnalyzer();
            }
            return sUploadInfoAnalyzer;
        }

        private static void tryCheck() {
            if (System.currentTimeMillis() - sLastCheckTime >= getCheckInterval()) {
                sLastCheckTime = System.currentTimeMillis();
                check();
            }
        }

        private static long getCheckInterval() {
            return CloudControlStrategyHelper.getSyncStrategy().getMonitorCheckInterval();
        }

        private static long getTrafficStepValue() {
            return CloudControlStrategyHelper.getSyncStrategy().getMonitorTrafficStep();
        }

        private static long getBackgroundBufferTime() {
            return CloudControlStrategyHelper.getSyncStrategy().getMonitorBackBufferTime();
        }

        private static long getBackgroundUpperLimitTime() {
            return CloudControlStrategyHelper.getSyncStrategy().getMonitorBackUpperTime();
        }

        private static long getSyncUpperLimitTime() {
            return CloudControlStrategyHelper.getSyncStrategy().getMonitorSyncUpperTime();
        }

        private static boolean needMonitorTraffic() {
            return CloudControlStrategyHelper.getSyncStrategy().isMonitorTraffic();
        }

        private static boolean needMonitorBackground() {
            return CloudControlStrategyHelper.getSyncStrategy().isMonitorBackground();
        }

        private static boolean needMonitorSyncTime() {
            return CloudControlStrategyHelper.getSyncStrategy().isMonitorSyncTime();
        }

        private static boolean isCharging(Context context) {
            long start = System.currentTimeMillis();
            int status = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getIntExtra("status", -1);
            Log.d("SyncMonitor", "judge charging state cost %s", Long.valueOf(System.currentTimeMillis() - start));
            return status == 2 || status == 5;
        }

        private static void check() {
            Log.d("SyncMonitor", "check");
            Context context = GalleryApp.sGetAndroidContext();
            Object syncType = SyncStateManager.getInstance().getSyncType();
            if (syncType == null || !syncType.isForce()) {
                if (needMonitorTraffic() && NetworkUtils.isActiveNetworkMetered()) {
                    long traffic = getAnalyzer().getUploadTraffic();
                    if (traffic > ((long) sTrafficSteps) * getTrafficStepValue()) {
                        Log.w("SyncMonitor", "upload traffic %s", Long.valueOf(traffic));
                        sTrafficSteps++;
                    }
                }
                if (needMonitorSyncTime()) {
                    long syncUpperTime = getSyncUpperLimitTime();
                    if (syncUpperTime > 0 && System.currentTimeMillis() - sSyncStartTime > syncUpperTime) {
                        Log.w("SyncMonitor", "sync time has reached upper limit");
                    }
                }
                if (!needMonitorBackground()) {
                    return;
                }
                if (isCharging(context)) {
                    if (sBackgroundStartTime > 0) {
                        Log.d("SyncMonitor", "monitor charging, reset background start time");
                        sBackgroundStartTime = 0;
                        return;
                    }
                    return;
                } else if (!MiscUtil.isAppProcessInForeground(context)) {
                    if (sIsFirstBackground) {
                        sIsFirstBackground = false;
                        statSyncInBackground();
                    }
                    Log.d("SyncMonitor", "sync type %s, app not in foreground", syncType);
                    if (sBackgroundStartTime == 0) {
                        Log.d("SyncMonitor", "monitor process changes to background");
                        sBackgroundStartTime = System.currentTimeMillis();
                        return;
                    }
                    long bufferTime = getBackgroundBufferTime();
                    if (bufferTime < 0 || System.currentTimeMillis() - sBackgroundStartTime < bufferTime) {
                        Log.d("SyncMonitor", "monitor background in buffer time %s", Long.valueOf(bufferTime));
                        return;
                    } else if (getBackgroundUpperLimitTime() < 0) {
                        Log.d("SyncMonitor", "monitor background in upper limit time %s", Long.valueOf(getBackgroundUpperLimitTime()));
                        return;
                    } else {
                        long[] size = SyncStateUtil.getDirtySize(context);
                        long totalSize = size[0] + size[1];
                        long speed = Math.min(getAnalyzer().getAvgSpeed(), getAnalyzer().getRecentSpeed());
                        if (speed > 0) {
                            long predictedTime = (long) ((1000.0f * ((float) totalSize)) / ((float) speed));
                            Log.d("SyncMonitor", "need upload size %s, speed %s, predicted time %s", Long.valueOf(totalSize), Long.valueOf(speed), Long.valueOf(predictedTime));
                            long predictedUpper = predictedTime + (System.currentTimeMillis() - sBackgroundStartTime);
                            Log.d("SyncMonitor", "predicted upper time %s, limit time %s", Long.valueOf(predictedUpper), Long.valueOf(getBackgroundUpperLimitTime()));
                            if (predictedUpper < getBackgroundUpperLimitTime()) {
                                Log.d("SyncMonitor", "monitor background in upper limit time");
                                return;
                            }
                        }
                        Log.w("SyncMonitor", "background sync time has reached upper limit, change sync policy");
                        SyncUtil.stopSync(context);
                        SyncUtil.requestSync(context, new Builder().setSyncType(SyncType.BACKGROUND).setSyncReason(1).setDelayUpload(false).build());
                        statPolicyChanged();
                        return;
                    }
                } else if (sBackgroundStartTime > 0) {
                    Log.d("SyncMonitor", "monitor app focused, reset background start time");
                    sBackgroundStartTime = 0;
                    return;
                } else {
                    return;
                }
            }
            Log.d("SyncMonitor", "sync type %s, ignore monitor", syncType);
        }

        private static void statSyncStart() {
            BaseSamplingStatHelper.recordCountEvent("sync_monitor", "monitor_sync_start");
        }

        private static void statSyncInBackground() {
            BaseSamplingStatHelper.recordCountEvent("sync_monitor", "monitor_sync_in_background");
            long[] size = SyncStateUtil.getDirtySize(GalleryApp.sGetAndroidContext());
            long totalSize = size[0] + size[1];
            long speed = Math.min(getAnalyzer().getAvgSpeed(), getAnalyzer().getRecentSpeed());
            if (speed > 0) {
                long predictedTime = (long) ((1.0f * ((float) totalSize)) / ((float) speed));
                HashMap<String, String> params = new HashMap();
                params.put("predictedTime", String.valueOf(predictedTime));
                BaseSamplingStatHelper.recordCountEvent("sync_monitor", "monitor_background_predicted_time", params);
            }
        }

        private static void statPolicyChanged() {
            long[] size = SyncStateUtil.getDirtySize(GalleryApp.sGetAndroidContext());
            long totalSize = size[0] + size[1];
            HashMap<String, String> params = new HashMap();
            params.put("dirty", String.valueOf(totalSize));
            BaseSamplingStatHelper.recordCountEvent("sync_monitor", "monitor_sync_policy_changed_dirty", params);
        }
    }

    private static boolean isEnable() {
        return CloudControlStrategyHelper.getSyncStrategy().isMonitorEnable();
    }

    public static void monitorSyncStart() {
        if (!isEnable()) {
            return;
        }
        if (sSyncStarted.incrementAndGet() == 1) {
            Log.d("SyncMonitor", "monitor sync start");
            getHandler().obtainMessage(1).sendToTarget();
            return;
        }
        Log.d("SyncMonitor", "sync has started");
    }

    public static void monitorSyncStop() {
        if (!isEnable()) {
            return;
        }
        if (sSyncStarted.decrementAndGet() == 0) {
            Log.d("SyncMonitor", "monitor sync stop");
            getHandler().removeCallbacksAndMessages(null);
            getHandler().obtainMessage(4).sendToTarget();
            synchronized (LOCK) {
                if (sHandler != null) {
                    sHandler.getLooper().quitSafely();
                    sHandler = null;
                }
            }
            return;
        }
        Log.d("SyncMonitor", "sync hasn't stopped");
    }

    public static void monitorUploadInfo(UploadMonitorInfo info) {
        if (isEnable()) {
            getHandler().obtainMessage(2, info).sendToTarget();
        }
    }

    public static void monitorSyncThrowable(Throwable t) {
        if (isEnable()) {
            getHandler().obtainMessage(3, t).sendToTarget();
        }
    }

    private static Handler getHandler() {
        if (sHandler == null) {
            synchronized (LOCK) {
                if (sHandler == null) {
                    HandlerThread t = new HandlerThread("sync_monitor");
                    t.start();
                    sHandler = new WorkHandler(t.getLooper());
                }
            }
        }
        return sHandler;
    }
}
