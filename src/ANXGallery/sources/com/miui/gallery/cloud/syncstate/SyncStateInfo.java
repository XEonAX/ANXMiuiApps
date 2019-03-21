package com.miui.gallery.cloud.syncstate;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.cloud.SpaceFullHandler;
import com.miui.gallery.cloud.SyncConditionManager;
import com.miui.gallery.cloud.control.BatteryMonitor;
import com.miui.gallery.cloud.syncstate.SyncStateUtil.CloudSpaceInfo;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.SyncUtil.Request.Builder;
import com.miui.gallery.util.deprecated.Preference;
import com.miui.gallery.util.deviceprovider.UploadStatusController;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

public class SyncStateInfo {
    private long mCloudSpaceRemainingSize;
    private long mCloudSpaceTotalSize;
    private DirtyCount mDirtyCount = new DirtyCount();
    private long mDirtySize;
    private int mImageSyncedCount = -1;
    private volatile boolean mInited;
    private volatile boolean mIsBatteryLow;
    private volatile boolean mIsCloudSpaceFull;
    private volatile boolean mIsDirtyChanged;
    private volatile boolean mIsLocalSpaceFull;
    private volatile boolean mIsSyncedChanged;
    private Object mLock = new Object();
    private final List<OnSyncStateChangeObserver> mObservable = new LinkedList();
    private Runnable mRefreshTimeRunnable;
    private SyncStatus mSyncStatus = SyncStatus.UNAVAILABLE;
    private SyncType mSyncType = SyncType.UNKNOW;
    private Runnable mUpdateRunnable = new Runnable() {
        public void run() {
            SyncStateInfo.this.updateSyncStatus(GalleryApp.sGetAndroidContext());
        }
    };
    private AsyncTask<Context, Void, SyncStatus> mUpdateTask;
    private int mVideoSyncedCount = -1;

    SyncStateInfo() {
    }

    public SyncType getSyncType() {
        return this.mSyncType;
    }

    public SyncStatus getSyncStatus() {
        return this.mSyncStatus;
    }

    public int[] getDirtyCount() {
        return new int[]{this.mDirtyCount.getTotalImageCount(), this.mDirtyCount.getTotalVideoCount()};
    }

    public long getDirtySize() {
        return this.mDirtySize;
    }

    public int[] getSyncedCount() {
        return new int[]{this.mImageSyncedCount, this.mVideoSyncedCount};
    }

    public long getCloudSpaceTotalSize() {
        return this.mCloudSpaceTotalSize;
    }

    public long getCloudSpaceRemainingSize() {
        return this.mCloudSpaceRemainingSize;
    }

    public long getResumeInterval(Context context) {
        return Math.max(0, SyncUtil.getResumeTime(context) - System.currentTimeMillis());
    }

    void setSyncType(SyncType syncType) {
        synchronized (this.mLock) {
            if (this.mSyncType != syncType) {
                Log.d("SyncStateInfo", "setSyncType old: %s, new: %s", this.mSyncType, syncType);
                this.mSyncType = syncType;
                invalidate();
            }
        }
    }

    void setIsBatteryLow(boolean isBatteryLow) {
        if (this.mIsBatteryLow != isBatteryLow) {
            invalidate();
        }
        this.mIsBatteryLow = isBatteryLow;
    }

    void setIsLocalSpaceFull(boolean isLocalSpaceFull) {
        if (this.mIsLocalSpaceFull != isLocalSpaceFull) {
            invalidate();
        }
        this.mIsLocalSpaceFull = isLocalSpaceFull;
    }

    void onSyncCommandDispatched() {
        invalidate();
    }

    void registerObserver(OnSyncStateChangeObserver observer) {
        if (observer == null) {
            throw new IllegalArgumentException("The observer is null.");
        }
        synchronized (this.mObservable) {
            if (this.mObservable.contains(observer)) {
                throw new IllegalStateException("Observer " + observer + " is already registered.");
            }
            this.mObservable.add(observer);
        }
        if (this.mSyncStatus != SyncStatus.UNAVAILABLE) {
            observer.onSyncStateChanged(this);
        }
    }

    void unregisterObserver(OnSyncStateChangeObserver observer) {
        if (observer == null) {
            throw new IllegalArgumentException("The observer is null.");
        }
        synchronized (this.mObservable) {
            int index = this.mObservable.indexOf(observer);
            if (index == -1) {
                throw new IllegalStateException("Observer " + observer + " was not registered.");
            }
            this.mObservable.remove(index);
        }
    }

    private void notifyObservers() {
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                synchronized (SyncStateInfo.this.mObservable) {
                    for (OnSyncStateChangeObserver observer : SyncStateInfo.this.mObservable) {
                        observer.onSyncStateChanged(SyncStateInfo.this);
                    }
                }
            }
        });
    }

    void invalidate() {
        if (ThreadManager.getMainHandler().hasCallbacksCompat(this.mUpdateRunnable)) {
            Log.d("SyncStateInfo", "has pending runnable, ignore");
        } else {
            ThreadManager.getMainHandler().postDelayed(this.mUpdateRunnable, 300);
        }
    }

    public static boolean isBackSyncType(SyncType syncType) {
        return syncType != null && (syncType == SyncType.UNKNOW || syncType == SyncType.BACKGROUND);
    }

    private void updateSyncStatus(Context context) {
        if (this.mUpdateTask != null) {
            this.mUpdateTask.cancel(true);
        }
        this.mUpdateTask = new AsyncTask<Context, Void, SyncStatus>() {
            protected SyncStatus doInBackground(Context[] params) {
                Context context = params[0];
                SyncStatus newStatus = SyncStateInfo.this.updateSyncStatusInternal(context);
                if (needTriggerSync(context, newStatus)) {
                    SyncStateInfo.this.triggerSync(context);
                }
                return newStatus;
            }

            private boolean needNotifyObservers(SyncStatus newStatus) {
                return SyncStateInfo.this.mSyncStatus != newStatus || SyncStateInfo.this.mSyncStatus == SyncStatus.SYNC_PAUSE || SyncStateInfo.this.mIsDirtyChanged || SyncStateInfo.this.mIsSyncedChanged;
            }

            private boolean isOuterConditionLimit(SyncStatus status) {
                return status == SyncStatus.DISCONNECTED || status == SyncStatus.NO_WIFI || status == SyncStatus.BATTERY_LOW || status == SyncStatus.SYSTEM_SPACE_LOW || status == SyncStatus.CLOUD_SPACE_FULL;
            }

            private boolean needTriggerSync(Context context, SyncStatus newStatus) {
                if (newStatus == SyncStatus.SYNC_PENDING || newStatus == SyncStatus.UNKNOWN_ERROR) {
                    if (isOuterConditionLimit(SyncStateInfo.this.mSyncStatus)) {
                        Log.d("SyncStateInfo", "condition -> ok, trigger sync");
                        return true;
                    } else if (SyncStateInfo.isBackSyncType(SyncStateInfo.this.mSyncType) && MiscUtil.isAppProcessInForeground(context)) {
                        synchronized (SyncStateInfo.this.mLock) {
                            SyncStateInfo.this.mSyncType = SyncType.NORMAL;
                        }
                        Log.d("SyncStateInfo", "background -> foreground, trigger sync");
                        return true;
                    }
                }
                return false;
            }

            protected void onPostExecute(SyncStatus newSyncStatus) {
                Log.i("SyncStateInfo", "update status old: %s, new: %s, syncType: %s, mIsDirtyChanged: %s, mIsSyncedChanged: %s", SyncStateInfo.this.mSyncStatus, newSyncStatus, SyncStateInfo.this.mSyncType, Boolean.valueOf(SyncStateInfo.this.mIsDirtyChanged), Boolean.valueOf(SyncStateInfo.this.mIsSyncedChanged));
                if (needNotifyObservers(newSyncStatus)) {
                    SyncStateInfo.this.mSyncStatus = newSyncStatus;
                    SyncStateInfo.this.mIsDirtyChanged = false;
                    SyncStateInfo.this.mIsSyncedChanged = false;
                    SyncStateInfo.this.notifyObservers();
                }
            }
        };
        this.mUpdateTask.execute(new Context[]{context.getApplicationContext()});
    }

    private void init(Context context) {
        boolean equals;
        boolean z = false;
        if (this.mInited) {
            synchronized (this.mObservable) {
                if (this.mObservable.size() > 0) {
                    return;
                }
            }
        }
        this.mInited = true;
        this.mIsCloudSpaceFull = SpaceFullHandler.isOwnerSpaceFull();
        Intent intent = context.registerReceiver(null, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW"));
        if (intent != null) {
            equals = "android.intent.action.DEVICE_STORAGE_LOW".equals(intent.getAction());
        } else {
            equals = false;
        }
        this.mIsLocalSpaceFull = equals;
        intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intent == null) {
            z = Sync.getPowerCanSync();
        } else if (!BatteryMonitor.isPowerCanSync(context, intent)) {
            z = true;
        }
        this.mIsBatteryLow = z;
    }

    private SyncStatus updateSyncStatusInternal(Context context) {
        init(context);
        if (!CTA.canConnectNetwork()) {
            return SyncStatus.CTA_NOT_ALLOW;
        }
        Account account = AccountCache.getAccount();
        if (account == null) {
            return SyncStatus.NO_ACCOUNT;
        }
        if (!ContentResolver.getMasterSyncAutomatically()) {
            return SyncStatus.MASTER_SYNC_OFF;
        }
        if (!ContentResolver.getSyncAutomatically(account, "com.miui.gallery.cloud.provider")) {
            return SyncStatus.SYNC_OFF;
        }
        boolean hasFirstSynced = Preference.sIsFirstSynced();
        if (!checkIsSyncingMetaData(account) || hasFirstSynced) {
            updateDirtyCount(context);
            tryRefreshSyncType();
            if (this.mDirtyCount.getSyncableCount() == 0) {
                if (this.mDirtyCount.getOversizedCount() == 0) {
                    if (!(this.mSyncStatus == SyncStatus.SYNCED && hasFirstSynced)) {
                        updateSyncedCount(context);
                    }
                    if (hasFirstSynced) {
                        return SyncStatus.SYNCED;
                    }
                } else if (this.mDirtyCount.getOversizedCount() > 0 && hasFirstSynced) {
                    return SyncStatus.SYNCED_WITH_OVERSIZED_FILE;
                }
            }
            if (SyncUtil.isSyncPause(context)) {
                Log.i("SyncStateInfo", "start refresh time");
                startRefreshTime();
                return SyncStatus.SYNC_PAUSE;
            }
            Log.i("SyncStateInfo", "stop refresh time");
            stopRefreshTime();
            if (checkIsSyncing(account)) {
                return SyncStatus.SYNCING;
            }
            if (checkIsPending(account)) {
                return SyncStatus.SYNC_PENDING;
            }
            if (SpaceFullHandler.isOwnerSpaceFull() && hasFirstSynced) {
                CloudSpaceInfo info = SyncStateUtil.getCloudSpaceInfo(context);
                this.mCloudSpaceTotalSize = info.getTotal();
                this.mCloudSpaceRemainingSize = this.mCloudSpaceTotalSize - info.getUsed();
                return SyncStatus.CLOUD_SPACE_FULL;
            } else if (this.mIsLocalSpaceFull) {
                return SyncStatus.SYSTEM_SPACE_LOW;
            } else {
                if (!NetworkUtils.isNetworkConnected()) {
                    return SyncStatus.DISCONNECTED;
                }
                if (NetworkUtils.isActiveNetworkMetered() && hasFirstSynced) {
                    if (this.mSyncType == SyncType.GPRS_FORCE) {
                        return SyncStatus.SYNC_ERROR;
                    }
                    if (Sync.getBackupOnlyInWifi()) {
                        return SyncStatus.NO_WIFI;
                    }
                    if (this.mSyncStatus == SyncStatus.NO_WIFI) {
                        triggerSync(context);
                    }
                }
                if (!this.mIsBatteryLow) {
                    return SyncStatus.UNKNOWN_ERROR;
                }
                if (this.mSyncType.isForce()) {
                    return SyncStatus.SYNC_ERROR;
                }
                return SyncStatus.BATTERY_LOW;
            }
        }
        updateSyncedCount(context);
        return SyncStatus.SYNCING_METADATA;
    }

    private void triggerSync(Context context) {
        Log.d("SyncStateInfo", "triggerSync");
        SyncUtil.requestSync(context, new Builder().setSyncType(this.mSyncType).setSyncReason(1).setDelayUpload(false).build());
    }

    /* JADX WARNING: Missing block: B:30:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void tryRefreshSyncType() {
        synchronized (this.mLock) {
            if (this.mSyncType == SyncType.GPRS_FORCE && (!Sync.getBackupOnlyInWifi() || (NetworkUtils.isNetworkConnected() && !NetworkUtils.isActiveNetworkMetered()))) {
                if (this.mIsBatteryLow) {
                    this.mSyncType = SyncType.POWER_FORCE;
                } else {
                    this.mSyncType = SyncType.NORMAL;
                }
                Log.d("SyncStateInfo", "refresh sync type %s to %s", SyncType.GPRS_FORCE, this.mSyncType);
                notifyObservers();
            } else if (this.mSyncType != SyncType.POWER_FORCE || this.mIsBatteryLow) {
            } else {
                this.mSyncType = SyncType.NORMAL;
                Log.d("SyncStateInfo", "refresh sync type %s to %s", SyncType.POWER_FORCE, this.mSyncType);
                notifyObservers();
            }
        }
    }

    private void updateDirtyCount(Context context) {
        DirtyCount dirtyCount = SyncStateUtil.getDirtyCount(context);
        if (!Objects.equals(dirtyCount, this.mDirtyCount)) {
            this.mDirtyCount = dirtyCount;
            this.mIsDirtyChanged = true;
            updateDirtySize(context);
        }
    }

    private void updateDirtySize(Context context) {
        long[] size = SyncStateUtil.getDirtySize(context);
        this.mDirtySize = size[0] + size[1];
    }

    private void updateSyncedCount(Context context) {
        int[] syncedCount = SyncStateUtil.getSyncedCount(context);
        int imageSynced = syncedCount[0];
        int videoSynced = syncedCount[1];
        if (imageSynced != this.mImageSyncedCount || videoSynced != this.mVideoSyncedCount) {
            this.mIsSyncedChanged = true;
            this.mImageSyncedCount = imageSynced;
            this.mVideoSyncedCount = videoSynced;
        }
    }

    private boolean canSyncTag() {
        return SyncConditionManager.checkIgnoreCancel(1, this.mSyncType) == 0;
    }

    private boolean checkIsSyncingMetaData(Account account) {
        boolean canSyncTag = canSyncTag();
        if (account == null || !ContentResolver.isSyncActive(account, "com.miui.gallery.cloud.provider") || !canSyncTag) {
            return false;
        }
        Log.i("SyncStateInfo", "sync active");
        return true;
    }

    private boolean checkIsMetaDataPending(Account account) {
        return account != null && ContentResolver.isSyncPending(account, "com.miui.gallery.cloud.provider");
    }

    private boolean checkIsSyncing(Account account) {
        boolean canUpload = canUpload();
        if (checkIsSyncingMetaData(account) && canUpload) {
            return true;
        }
        if (checkIsUploading() && canUpload) {
            return true;
        }
        return false;
    }

    private boolean checkIsUploading() {
        return UploadStatusController.getInstance().isUploading();
    }

    private boolean canUpload() {
        return SyncConditionManager.checkIgnoreCancel(4, this.mSyncType) == 0;
    }

    private boolean canPendingHandle() {
        return canUpload() && !this.mIsLocalSpaceFull;
    }

    private boolean checkIsPending(Account account) {
        boolean canPendingHandled = canPendingHandle();
        if (checkIsMetaDataPending(account) && canPendingHandled) {
            Log.i("SyncStateInfo", "sync pending");
            return true;
        } else if (UploadStatusController.getInstance().isPending() && canPendingHandled) {
            return true;
        } else {
            return false;
        }
    }

    private void doRefreshTime() {
        invalidate();
    }

    private void startRefreshTime() {
        if (this.mRefreshTimeRunnable == null) {
            this.mRefreshTimeRunnable = new Runnable() {
                public void run() {
                    SyncStateInfo.this.doRefreshTime();
                }
            };
        }
        stopRefreshTime();
        synchronized (this.mObservable) {
            if (this.mObservable.size() > 0) {
                ThreadManager.getMainHandler().postDelayed(this.mRefreshTimeRunnable, 60000);
            }
        }
    }

    private void stopRefreshTime() {
        if (this.mRefreshTimeRunnable != null) {
            ThreadManager.getMainHandler().removeCallbacks(this.mRefreshTimeRunnable);
        }
    }
}
