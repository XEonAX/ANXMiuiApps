package com.miui.gallery.sdk.uploadstatus;

import com.miui.gallery.sdk.SyncStatus;

abstract class SyncItem {
    public final SyncStatus mStatus;

    SyncItem(SyncStatus status) {
        this.mStatus = status;
    }
}
