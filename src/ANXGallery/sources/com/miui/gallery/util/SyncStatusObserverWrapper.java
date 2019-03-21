package com.miui.gallery.util;

import android.content.SyncStatusObserver;

public class SyncStatusObserverWrapper implements SyncStatusObserver {
    private SyncStatusObserver mWorker;

    public void setSyncStatusObserverWorker(SyncStatusObserver worker) {
        this.mWorker = worker;
    }

    public void onStatusChanged(int which) {
        SyncStatusObserver worker = this.mWorker;
        if (worker != null) {
            worker.onStatusChanged(which);
        }
    }
}
