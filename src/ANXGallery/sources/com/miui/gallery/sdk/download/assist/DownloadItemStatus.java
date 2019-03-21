package com.miui.gallery.sdk.download.assist;

import com.miui.gallery.sdk.SyncStatus;

public class DownloadItemStatus {
    private final DownloadedItem mItem;
    private final SyncStatus mSyncStatus;

    public DownloadItemStatus(SyncStatus syncStatus, DownloadedItem item) {
        this.mSyncStatus = syncStatus;
        this.mItem = item;
    }

    public SyncStatus getStatus() {
        return this.mSyncStatus;
    }

    public String getDownloadedPath() {
        return this.mItem != null ? this.mItem.getFilePath() : null;
    }

    public boolean isDownloading() {
        return this.mSyncStatus == SyncStatus.STATUS_INIT || this.mSyncStatus == SyncStatus.STATUS_INTERRUPT;
    }
}
