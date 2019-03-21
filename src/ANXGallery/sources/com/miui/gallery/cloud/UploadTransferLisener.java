package com.miui.gallery.cloud;

import com.miui.gallery.util.Log;
import com.xiaomi.opensdk.file.model.MiCloudFileListener;

public class UploadTransferLisener implements MiCloudFileListener {
    private RequestCloudItem mRequestItem;

    UploadTransferLisener(RequestCloudItem requestItem) {
        this.mRequestItem = requestItem;
    }

    public void onDataSended(long pos, long total) {
        if (SyncConditionManager.check(this.mRequestItem.priority) != 0) {
            Log.i("CloudGalleryTransferListener", "net work is changed, interrupt this thread, priority=" + this.mRequestItem.priority + ", item:" + this.mRequestItem.getIdentity());
            Thread.currentThread().interrupt();
        }
    }

    public void onDataReceived(long pos, long total) {
        Log.e("CloudGalleryTransferListener", "upload should not received, pos:" + pos + ", total:" + total + ", item:" + this.mRequestItem.getIdentity());
    }
}
