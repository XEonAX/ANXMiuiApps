package com.miui.gallery.cloud;

import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.WifiLock;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.google.common.collect.Lists;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.service.ServiceBase;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BackgroundServiceHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.NotificationHelper;
import com.miui.gallery.util.SyncLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import miui.extension.target.ActivityTarget;

public class AsyncUpDownloadService extends ServiceBase {
    private static final boolean WAKELOCK_ONLY_CHARGING = SyncConditionManager.sGetSyncConfig().isOnlyChargingAcquireWakelock();
    private static final boolean WAKELOCK_ONLY_SCREEN_OFF = SyncConditionManager.sGetSyncConfig().isOnlyScreenOffAcquireWakelock();
    private static final List<String> sPendingRequests = new ArrayList();
    private BroadcastReceiver mBatteryStateReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                int status = intent.getIntExtra("status", -1);
                boolean isCharging = status == 2 || status == 5;
                AsyncUpDownloadService.this.handleChargeStateChanged(isCharging);
            }
        }
    };
    final BroadcastReceiver mConnReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            AsyncUpDownloadService.this.tryCancelTasksWhenConnChanged();
        }
    };
    private AtomicBoolean mDoingCancelTasks = new AtomicBoolean(false);
    private ForegroundRef mForegroundRef;
    private BroadcastReceiver mScreenStateReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.SCREEN_OFF".equals(action)) {
                AsyncUpDownloadService.this.handleScreenOnOff(false);
            } else if ("android.intent.action.SCREEN_ON".equals(action)) {
                AsyncUpDownloadService.this.handleScreenOnOff(true);
            }
        }
    };
    private long mStartTime;
    private final BroadcastReceiver mSyncReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            SyncLog.i("AsyncUpDownloadService", "sync receiver thread %s", Thread.currentThread());
            AsyncUpDownloadService.this.handleRequest(intent);
        }
    };
    private WakeLockRef mWakeLockRef;
    private ResourceRef mWifiLockRef;

    static abstract class ResourceRef {
        protected final List<String> mOwners = Lists.newArrayList();
        protected final String mTag;

        protected abstract void onAcquire();

        protected abstract void onRelease();

        public ResourceRef(String tag) {
            this.mTag = tag;
        }

        public void acquire(String owner) {
            if (this.mOwners.isEmpty()) {
                SyncLog.d(this.mTag, "onAcquire");
                onAcquire();
            }
            SyncLog.d(this.mTag, "add owner: " + owner);
            this.mOwners.add(owner);
        }

        public void release(String owner) {
            if (this.mOwners.remove(owner)) {
                SyncLog.d(this.mTag, "remove owner success: %s, left owners: %s", owner, this.mOwners);
                if (this.mOwners.isEmpty()) {
                    SyncLog.d(this.mTag, "onRelease");
                    onRelease();
                    return;
                }
                return;
            }
            SyncLog.d(this.mTag, "remove owner failed: " + owner);
        }

        public void releaseAll() {
            dump();
            if (this.mOwners != null) {
                this.mOwners.clear();
                SyncLog.d(this.mTag, "onRelease");
                onRelease();
            }
        }

        private void dump() {
            SyncLog.d(this.mTag, "size=%d", Integer.valueOf(this.mOwners.size()));
            for (String owner : this.mOwners) {
                SyncLog.d(this.mTag, "name=" + owner);
            }
        }
    }

    private class ForegroundRef extends ResourceRef {
        public ForegroundRef(String tag) {
            super(tag);
        }

        protected void onAcquire() {
            AsyncUpDownloadService.this.mHasForeground = true;
            AsyncUpDownloadService.this.startForeground(4, NotificationHelper.getEmptyNotification(AsyncUpDownloadService.this.getApplicationContext()));
            IntentFilter connFilter = new IntentFilter();
            connFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            connFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE");
            AsyncUpDownloadService.this.registerReceiver(AsyncUpDownloadService.this.mConnReceiver, connFilter);
        }

        protected void onRelease() {
            AsyncUpDownloadService.this.stopForeground(true);
            AsyncUpDownloadService.this.stopSelf();
            GalleryUtils.safeUnregisterReceiver(AsyncUpDownloadService.this, AsyncUpDownloadService.this.mConnReceiver);
        }
    }

    public static final class SyncLock {
        private int mCount = 0;
        private String mIdentifier;
        private final Object mToken = new Object();

        SyncLock(String name) {
            this.mIdentifier = name + "#" + SystemClock.elapsedRealtimeNanos();
        }

        public void acquire() {
            synchronized (this.mToken) {
                int i = this.mCount;
                this.mCount = i + 1;
                if (i == 0) {
                    SyncLog.d("AsyncUpDownloadService", "thread: %s, %s require lock, identifier: %s", Thread.currentThread(), Integer.valueOf(System.identityHashCode(Thread.currentThread())), this.mIdentifier);
                    ThreadManager.getMainHandler().post(new Runnable() {
                        public void run() {
                            AsyncUpDownloadService.startSyncInBackground(SyncLock.this.mIdentifier, true, true);
                        }
                    });
                }
            }
        }

        public void release() {
            synchronized (this.mToken) {
                int i = this.mCount - 1;
                this.mCount = i;
                if (i == 0) {
                    SyncLog.d("AsyncUpDownloadService", "thread: %s, %s release lock, identifier: %s", Thread.currentThread(), Integer.valueOf(System.identityHashCode(Thread.currentThread())), this.mIdentifier);
                    ThreadManager.getMainHandler().post(new Runnable() {
                        public void run() {
                            AsyncUpDownloadService.stopSyncInBackground(SyncLock.this.mIdentifier, true, true);
                        }
                    });
                }
                if (this.mCount < 0) {
                    throw new RuntimeException("SyncLock under-locked " + this.mIdentifier);
                }
            }
        }
    }

    private class WakeLockRef extends ResourceRef {
        private long mAcquireTime;
        private boolean mIsCharging = isCharging();
        private boolean mIsScreenOn = isScreenOn();
        private final List<String> mPendingOwners = Lists.newArrayList();
        private WakeLock mWakeLock;

        public WakeLockRef(String tag) {
            super(tag);
        }

        private boolean isScreenOn() {
            return ((PowerManager) AsyncUpDownloadService.this.getSystemService("power")).isScreenOn();
        }

        private boolean isCharging() {
            return Sync.getIsPlugged();
        }

        protected void onRelease() {
            if (this.mWakeLock != null) {
                this.mWakeLock.release();
                this.mWakeLock = null;
                HashMap<String, String> params = new HashMap();
                params.put("wakelock_elapse_time", String.valueOf(Math.round((1.0f * ((float) (System.currentTimeMillis() - this.mAcquireTime))) / 1000.0f)));
                BaseSamplingStatHelper.recordCountEvent("Sync", "sync_wakelock_time", params);
            }
        }

        protected void onAcquire() {
            if (this.mWakeLock == null || !this.mWakeLock.isHeld()) {
                this.mWakeLock = ((PowerManager) AsyncUpDownloadService.this.getSystemService("power")).newWakeLock(1, this.mTag);
                this.mWakeLock.setReferenceCounted(false);
                this.mWakeLock.acquire();
                this.mAcquireTime = System.currentTimeMillis();
                return;
            }
            SyncLog.e("AsyncUpDownloadService", new IllegalStateException("wakelock acquire and release not balance"));
        }

        private boolean canScreenAcquire() {
            return (AsyncUpDownloadService.WAKELOCK_ONLY_SCREEN_OFF && this.mIsScreenOn) ? false : true;
        }

        private boolean canBatteryAcquire() {
            return !AsyncUpDownloadService.WAKELOCK_ONLY_CHARGING || this.mIsCharging;
        }

        public void acquire(String owner) {
            boolean screenOk = canScreenAcquire();
            boolean chargeOk = canBatteryAcquire();
            if (screenOk && chargeOk) {
                super.acquire(owner);
                return;
            }
            this.mPendingOwners.add(owner);
            SyncLog.d(this.mTag, "can't acquire wakelock, add pending %s, pendings %s, screen %s, charge %s", owner, this.mPendingOwners, Boolean.valueOf(screenOk), Boolean.valueOf(chargeOk));
        }

        public void release(String owner) {
            if (this.mPendingOwners.remove(owner)) {
                SyncLog.d(this.mTag, "remove owner from pending success: %s, left pending owners: %s", owner, this.mPendingOwners);
                if (this.mPendingOwners.isEmpty()) {
                    SyncLog.d(this.mTag, "onRelease");
                    onRelease();
                    return;
                }
                return;
            }
            if (this.mPendingOwners.size() > 0) {
                SyncLog.d(this.mTag, "remove owner from pending fail, pending owners: %s, owners: %s, owner: %s", this.mPendingOwners, this.mOwners, owner);
            }
            super.release(owner);
        }

        private void releaseTemp() {
            this.mOwners.clear();
            SyncLog.d(this.mTag, "onRelease");
            onRelease();
        }

        public void releaseAll() {
            if (!this.mPendingOwners.isEmpty()) {
                onRelease();
            }
            super.releaseAll();
        }

        private void tryAcquireLock() {
            if (this.mPendingOwners.size() > 0) {
                List<String> pendings = new ArrayList(this.mPendingOwners);
                this.mPendingOwners.clear();
                for (String owner : pendings) {
                    acquire(owner);
                }
            }
        }

        private void tryReleaseLock() {
            if (this.mOwners.size() > 0) {
                this.mPendingOwners.clear();
                this.mPendingOwners.addAll(this.mOwners);
                releaseTemp();
            }
        }

        public void onScreenOnOff(boolean on) {
            if (AsyncUpDownloadService.WAKELOCK_ONLY_SCREEN_OFF) {
                this.mIsScreenOn = on;
                if (on) {
                    SyncLog.d(this.mTag, "screen on");
                    tryReleaseLock();
                    return;
                }
                SyncLog.d(this.mTag, "screen off");
                tryAcquireLock();
            }
        }

        public void onChargeStateChanged(boolean charging) {
            if (AsyncUpDownloadService.WAKELOCK_ONLY_CHARGING) {
                this.mIsCharging = charging;
                if (charging) {
                    SyncLog.d(this.mTag, "charging");
                    tryAcquireLock();
                    return;
                }
                SyncLog.d(this.mTag, "not charging");
                tryReleaseLock();
            }
        }
    }

    private class WifiLockRef extends ResourceRef {
        private WifiLock mWifiLock;

        public WifiLockRef(String tag) {
            super(tag);
        }

        public void onAcquire() {
            this.mWifiLock = ((WifiManager) AsyncUpDownloadService.this.getApplicationContext().getSystemService("wifi")).createWifiLock(getClass().getName());
            this.mWifiLock.setReferenceCounted(false);
            this.mWifiLock.acquire();
        }

        public void onRelease() {
            if (this.mWifiLock != null) {
                this.mWifiLock.release();
                this.mWifiLock = null;
            }
        }
    }

    private void tryCancelTasksWhenConnChanged() {
        if (this.mDoingCancelTasks.compareAndSet(false, true)) {
            ThreadManager.getMiscPool().submit(new Job() {
                public Object run(JobContext jc) {
                    int i = 0;
                    while (i < 14) {
                        try {
                            int result = SyncConditionManager.check(i);
                            if (result != 0) {
                                SyncLog.i("AsyncUpDownloadService", "net work is changed, cancel all, priority=" + i);
                                if (RequestItemBase.isCancellablePriority(i)) {
                                    UpDownloadManager.cancel(i, 2 == result, true);
                                }
                            }
                            i++;
                        } catch (Throwable th) {
                            AsyncUpDownloadService.this.mDoingCancelTasks.set(false);
                        }
                    }
                    AsyncUpDownloadService.this.mDoingCancelTasks.set(false);
                    return null;
                }
            });
        }
    }

    protected Notification getNotification() {
        return NotificationHelper.getEmptyNotification(getApplicationContext());
    }

    protected int getNotificationId() {
        return 6;
    }

    public void onCreate() {
        super.onCreate();
        SyncLog.d("AsyncUpDownloadService", ActivityTarget.ACTION_ON_CREATE);
        this.mStartTime = SystemClock.uptimeMillis();
        this.mForegroundRef = new ForegroundRef("AsyncUpDownloadService#Foreground");
        this.mWakeLockRef = new WakeLockRef("AsyncUpDownloadService#WakeLock");
        this.mWifiLockRef = new WifiLockRef("AsyncUpDownloadService#WifiLock");
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mSyncReceiver, new IntentFilter("com.miui.gallery.ACTION_SYNC_IN_BACKGROUND"));
        if (WAKELOCK_ONLY_SCREEN_OFF) {
            IntentFilter screenFilter = new IntentFilter();
            screenFilter.addAction("android.intent.action.SCREEN_ON");
            screenFilter.addAction("android.intent.action.SCREEN_OFF");
            registerReceiver(this.mScreenStateReceiver, screenFilter);
        }
        if (WAKELOCK_ONLY_CHARGING) {
            IntentFilter batteryFilter = new IntentFilter();
            batteryFilter.addAction("android.intent.action.BATTERY_CHANGED");
            registerReceiver(this.mBatteryStateReceiver, batteryFilter);
        }
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        super.onStartCommand(intent, flags, startId);
        if (intent == null) {
            SyncLog.e("AsyncUpDownloadService", "null intent parameter in onStartCommand! intent=" + intent + ", flags=" + flags + ", startId=" + startId);
            stopSelf();
        } else {
            handleRequest(intent);
        }
        return 2;
    }

    public void onDestroy() {
        release();
        SyncLog.d("AsyncUpDownloadService", "onDestroy, elapse time=" + (SystemClock.uptimeMillis() - this.mStartTime));
        super.onDestroy();
        HashMap<String, String> params = new HashMap();
        params.put("service_elapse_time", String.valueOf(Math.round((1.0f * ((float) (SystemClock.uptimeMillis() - this.mStartTime))) / 1000.0f)));
        BaseSamplingStatHelper.recordCountEvent("Sync", "sync_service_time", params);
    }

    private void release() {
        if (this.mWifiLockRef != null) {
            this.mWifiLockRef.releaseAll();
            this.mWifiLockRef = null;
        }
        if (this.mWakeLockRef != null) {
            this.mWakeLockRef.releaseAll();
            this.mWakeLockRef = null;
        }
        if (this.mForegroundRef != null) {
            this.mForegroundRef.releaseAll();
            this.mForegroundRef = null;
        }
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mSyncReceiver);
        if (WAKELOCK_ONLY_SCREEN_OFF) {
            GalleryUtils.safeUnregisterReceiver(this, this.mScreenStateReceiver);
        }
        if (WAKELOCK_ONLY_CHARGING) {
            GalleryUtils.safeUnregisterReceiver(this, this.mBatteryStateReceiver);
        }
        sPendingRequests.clear();
    }

    private static boolean needHandleRequest(String owner) {
        return sPendingRequests.remove(owner);
    }

    private boolean isLockInitialized() {
        return (this.mWifiLockRef == null || this.mWakeLockRef == null || this.mForegroundRef == null) ? false : true;
    }

    void handleRequest(Intent intent) {
        String action = intent.getAction();
        SyncLog.d("AsyncUpDownloadService", "handleRequest: action=" + action);
        if (!"com.miui.gallery.ACTION_SYNC_IN_BACKGROUND".equals(action)) {
            return;
        }
        if (isLockInitialized()) {
            Object owner = intent.getStringExtra("com.miui.gallery.EXTRA_SYNC_NAME");
            if (!TextUtils.isEmpty(owner)) {
                boolean stop = intent.getBooleanExtra("com.miui.gallery.EXTRA_SYNC_STOP", true);
                boolean wifiNeeded = intent.getBooleanExtra("com.miui.gallery.EXTRA_SYNC_WIFI", false);
                boolean wakeUpNeeded = intent.getBooleanExtra("com.miui.gallery.EXTRA_SYNC_WAKE", true);
                SyncLog.d("AsyncUpDownloadService", "owner=%s, is stop=%s, wifiNeeded=%s, wakeupNeeded=%s", owner, Boolean.valueOf(stop), Boolean.valueOf(wifiNeeded), Boolean.valueOf(wakeUpNeeded));
                if (stop) {
                    if (wifiNeeded) {
                        this.mWifiLockRef.release(owner);
                    }
                    if (wakeUpNeeded) {
                        this.mWakeLockRef.release(owner);
                    }
                    this.mForegroundRef.release(owner);
                    return;
                } else if (needHandleRequest(owner)) {
                    this.mForegroundRef.acquire(owner);
                    if (wakeUpNeeded) {
                        SyncLog.d("AsyncUpDownloadService", "handle request, owner: %s", owner);
                        this.mWakeLockRef.acquire(owner);
                    }
                    if (wifiNeeded) {
                        this.mWifiLockRef.acquire(owner);
                        return;
                    }
                    return;
                } else {
                    SyncLog.w("AsyncUpDownloadService", "no need handle request: %s", owner);
                    return;
                }
            }
            return;
        }
        SyncLog.w("AsyncUpDownloadService", "service has been released");
        release();
    }

    private void handleScreenOnOff(boolean on) {
        this.mWakeLockRef.onScreenOnOff(on);
    }

    private void handleChargeStateChanged(boolean isCharging) {
        this.mWakeLockRef.onChargeStateChanged(isCharging);
    }

    private static void startSyncInBackground(String name, boolean wifiNeeded, boolean wakeUpNeeded) {
        sPendingRequests.add(name);
        Context context = GalleryApp.sGetAndroidContext();
        Intent intent = new Intent("com.miui.gallery.ACTION_SYNC_IN_BACKGROUND");
        intent.setPackage(context.getPackageName());
        intent.putExtra("com.miui.gallery.EXTRA_SYNC_NAME", name);
        intent.putExtra("com.miui.gallery.EXTRA_SYNC_STOP", false);
        intent.putExtra("com.miui.gallery.EXTRA_SYNC_WIFI", wifiNeeded);
        intent.putExtra("com.miui.gallery.EXTRA_SYNC_WAKE", wakeUpNeeded);
        BackgroundServiceHelper.startForegroundServiceIfNeed(context, intent);
    }

    private static void stopSyncInBackground(String name, boolean wifiNeeded, boolean wakeUpNeeded) {
        sPendingRequests.remove(name);
        Context context = GalleryApp.sGetAndroidContext();
        Intent intent = new Intent("com.miui.gallery.ACTION_SYNC_IN_BACKGROUND");
        intent.setPackage(context.getPackageName());
        intent.putExtra("com.miui.gallery.EXTRA_SYNC_NAME", name);
        intent.putExtra("com.miui.gallery.EXTRA_SYNC_STOP", true);
        intent.putExtra("com.miui.gallery.EXTRA_SYNC_WIFI", wifiNeeded);
        intent.putExtra("com.miui.gallery.EXTRA_SYNC_WAKE", wakeUpNeeded);
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
    }

    public static SyncLock newSyncLock(String name) {
        return new SyncLock(name);
    }
}
