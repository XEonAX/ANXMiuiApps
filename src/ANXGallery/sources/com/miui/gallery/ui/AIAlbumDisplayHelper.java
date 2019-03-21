package com.miui.gallery.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import android.util.SparseBooleanArray;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloudcontrol.CloudControlManager;
import com.miui.gallery.cloudcontrol.FeatureProfile.Status;
import com.miui.gallery.cloudcontrol.FeatureStatusObserver;
import java.lang.ref.WeakReference;
import java.util.Observable;
import java.util.Observer;

public class AIAlbumDisplayHelper {
    private static AIAlbumDisplayHelper sInstance;
    private BroadcastReceiver mAIAlbumSwitchObserver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (intent != null && "com.miui.gallery.action.AI_ALBUM_SWITCH_CHANGE".equals(intent.getAction())) {
                AIAlbumDisplayHelper.this.requeryStatusAndNotifyStatusChange();
            }
        }
    };
    private AIAlbumDisplayStatusObservable mObservable;
    private FeatureStatusObserver mSearchCloudControlStatusObserver = new FeatureStatusObserver() {
        public void onStatusChange(String featureName, Status oldStatus, Status newStatus) {
            if ("search".equals(featureName)) {
                AIAlbumDisplayHelper.this.requeryStatusAndNotifyStatusChange();
            }
        }
    };
    private SparseBooleanArray mStatusValueCache = null;

    private class AIAlbumDisplayStatusObservable extends Observable {
        private AIAlbumDisplayStatusObservable() {
        }

        /* synthetic */ AIAlbumDisplayStatusObservable(AIAlbumDisplayHelper x0, AnonymousClass1 x1) {
            this();
        }

        void onUpdateStatus(SparseBooleanArray changedStatus) {
            setChanged();
            notifyObservers(changedStatus);
        }
    }

    public interface DisplayStatusCallback {
        void onStatusChanged(SparseBooleanArray sparseBooleanArray);
    }

    public static class WeakReferencedAIAlbumDisplayStatusObserver implements Observer {
        private WeakReference<DisplayStatusCallback> mCallbackRef;

        public WeakReferencedAIAlbumDisplayStatusObserver(DisplayStatusCallback callback) {
            this.mCallbackRef = new WeakReference(callback);
        }

        public void update(Observable o, Object arg) {
            DisplayStatusCallback callback = (DisplayStatusCallback) this.mCallbackRef.get();
            if (callback != null && (arg instanceof SparseBooleanArray)) {
                callback.onStatusChanged((SparseBooleanArray) arg);
            }
        }
    }

    public static AIAlbumDisplayHelper getInstance() {
        if (sInstance == null) {
            synchronized (AIAlbumDisplayHelper.class) {
                if (sInstance == null) {
                    sInstance = new AIAlbumDisplayHelper();
                }
            }
        }
        return sInstance;
    }

    public SparseBooleanArray registerAIAlbumDisplayStatusObserver(WeakReferencedAIAlbumDisplayStatusObserver observer) {
        if (this.mObservable == null) {
            this.mObservable = new AIAlbumDisplayStatusObservable(this, null);
        }
        requeryStatusAndNotifyStatusChange();
        int oldObserverCount = this.mObservable.countObservers();
        this.mObservable.addObserver(observer);
        if (oldObserverCount <= 0 && this.mObservable.countObservers() > 0) {
            CloudControlManager.getInstance().registerStatusObserver("search", this.mSearchCloudControlStatusObserver);
            LocalBroadcastManager.getInstance(GalleryApp.sGetAndroidContext()).registerReceiver(this.mAIAlbumSwitchObserver, new IntentFilter("com.miui.gallery.action.AI_ALBUM_SWITCH_CHANGE"));
        }
        return this.mStatusValueCache.clone();
    }

    public void unregisterAIAlbumDisplayStatusObserver(WeakReferencedAIAlbumDisplayStatusObserver observer) {
        if (this.mObservable != null) {
            this.mObservable.deleteObserver(observer);
            if (this.mObservable.countObservers() <= 0) {
                CloudControlManager.getInstance().unregisterStatusObserver("search", this.mSearchCloudControlStatusObserver);
                LocalBroadcastManager.getInstance(GalleryApp.sGetAndroidContext()).unregisterReceiver(this.mAIAlbumSwitchObserver);
            }
        }
    }

    private void requeryStatusAndNotifyStatusChange() {
        boolean searchBarStatus;
        boolean aiAlbumStatus;
        SparseBooleanArray changedStatus = this.mStatusValueCache == null ? new SparseBooleanArray() : this.mStatusValueCache;
        this.mStatusValueCache = new SparseBooleanArray();
        if (AIAlbumStatusHelper.isLocalSearchOpen(true) && AIAlbumStatusHelper.isCloudControlSearchBarOpen()) {
            searchBarStatus = true;
        } else {
            searchBarStatus = false;
        }
        updateNewValue(changedStatus, 1, searchBarStatus);
        if (AIAlbumStatusHelper.useNewAIAlbumSwitch() && (AIAlbumStatusHelper.isFaceAlbumEnabled() || AIAlbumStatusHelper.isLocalSearchOpen(true))) {
            aiAlbumStatus = true;
        } else {
            aiAlbumStatus = false;
        }
        updateNewValue(changedStatus, 2, aiAlbumStatus);
        if (this.mObservable != null && changedStatus.size() > 0) {
            this.mObservable.onUpdateStatus(changedStatus);
        }
    }

    private void updateNewValue(SparseBooleanArray changedStatus, int key, boolean newValue) {
        this.mStatusValueCache.put(key, newValue);
        if (changedStatus.indexOfKey(key) < 0 || changedStatus.get(key) != newValue) {
            changedStatus.put(key, newValue);
        } else {
            changedStatus.delete(key);
        }
    }
}
