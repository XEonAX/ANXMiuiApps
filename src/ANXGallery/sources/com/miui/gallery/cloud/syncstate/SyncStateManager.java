package com.miui.gallery.cloud.syncstate;

import android.content.Context;
import com.miui.gallery.cloud.SyncConditionManager;
import com.miui.gallery.util.Log;

public class SyncStateManager {
    private SyncStateInfo mSyncStateInfo;
    private SyncStateObserver mSyncStateObserver;

    private static class Singleton {
        private static SyncStateManager INSTANCE = new SyncStateManager();
    }

    private SyncStateManager() {
        this.mSyncStateInfo = new SyncStateInfo();
        this.mSyncStateInfo.invalidate();
        this.mSyncStateObserver = new SyncStateObserver();
    }

    public static SyncStateManager getInstance() {
        return Singleton.INSTANCE;
    }

    public SyncStateInfo getSyncState() {
        return this.mSyncStateInfo;
    }

    public SyncType getSyncType() {
        SyncType syncType;
        synchronized (this.mSyncStateInfo) {
            syncType = this.mSyncStateInfo.getSyncType();
        }
        return syncType;
    }

    public void setSyncType(SyncType syncType, boolean force) {
        Log.i("SyncStateManager", "setSyncType old: %s, new: %s", getSyncType(), syncType);
        if (force || syncType.isForce()) {
            this.mSyncStateInfo.setSyncType(syncType);
            return;
        }
        SyncType curSyncType = getSyncType();
        if (curSyncType.isForce()) {
            if (SyncConditionManager.checkIgnoreCancel(4, syncType) == 0) {
                this.mSyncStateInfo.setSyncType(syncType);
            }
        } else if (SyncType.compare(syncType, curSyncType) > 0) {
            this.mSyncStateInfo.setSyncType(syncType);
        }
    }

    public void registerSyncStateObserver(Context context, OnSyncStateChangeObserver observer) {
        this.mSyncStateInfo.registerObserver(observer);
        this.mSyncStateObserver.register(context);
        updateSyncStatus();
    }

    public void unregisterSyncStateObserver(Context context, OnSyncStateChangeObserver observer) {
        this.mSyncStateInfo.unregisterObserver(observer);
        this.mSyncStateObserver.unregister(context);
    }

    void setIsBatteryLow(boolean isBatteryLow) {
        this.mSyncStateInfo.setIsBatteryLow(isBatteryLow);
    }

    void setIsLocalSpaceFull(boolean isLocalSpaceFull) {
        this.mSyncStateInfo.setIsLocalSpaceFull(isLocalSpaceFull);
    }

    void updateSyncStatus() {
        this.mSyncStateInfo.invalidate();
    }

    void onSyncCommandDispatched() {
        this.mSyncStateInfo.onSyncCommandDispatched();
    }
}
