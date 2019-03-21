package com.miui.gallery.cloud.thread;

import com.miui.gallery.cloud.AsyncUpDownloadService;
import com.miui.gallery.cloud.AsyncUpDownloadService.SyncLock;
import com.miui.gallery.cloud.thread.RequestCommandQueue.OnItemChangedListener;

public abstract class BaseSyncLockTask extends BaseTask {
    private SyncLock mSyncLock;

    public BaseSyncLockTask(int type, int priorityCount, int batchMax, int commandMax, OnItemChangedListener changeListener) {
        super(type, priorityCount, batchMax, commandMax, changeListener);
    }

    protected final void acquireLock() {
        if (this.mSyncLock == null) {
            this.mSyncLock = AsyncUpDownloadService.newSyncLock(this.TAG);
        }
        this.mSyncLock.acquire();
    }

    protected final void releaseLock() {
        if (this.mSyncLock != null) {
            this.mSyncLock.release();
            this.mSyncLock = null;
        }
    }
}
