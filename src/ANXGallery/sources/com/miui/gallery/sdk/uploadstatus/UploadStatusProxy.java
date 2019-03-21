package com.miui.gallery.sdk.uploadstatus;

import com.google.common.collect.Sets;
import com.miui.gallery.util.deviceprovider.UploadStatusController;
import java.util.Set;

public class UploadStatusProxy {
    private Set<UploadStatusChangedListener> mListeners = Sets.newHashSet();

    public interface UploadStatusChangedListener {
        void onUploadStatusChanged(UploadStatusItem uploadStatusItem);
    }

    UploadStatusProxy() {
    }

    public synchronized void addUploadStatusChangedListener(UploadStatusChangedListener listener) {
        this.mListeners.add(listener);
    }

    public synchronized void removeUploadStatusChangedListener(UploadStatusChangedListener listener) {
        this.mListeners.remove(listener);
    }

    public synchronized void onUploadStatusChanged(UploadStatusItem statusItem) {
        for (UploadStatusChangedListener listener : this.mListeners) {
            listener.onUploadStatusChanged(statusItem);
        }
    }

    public UploadStatusItem getUploadStatus(UploadStatusItem item) {
        return UploadStatusController.getInstance().getUploadStatus(item);
    }
}
