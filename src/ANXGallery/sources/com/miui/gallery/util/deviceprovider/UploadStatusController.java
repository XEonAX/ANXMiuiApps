package com.miui.gallery.util.deviceprovider;

import android.content.ContentValues;
import android.os.AsyncTask;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.RequestCloudItem;
import com.miui.gallery.cloud.RequestItemBase;
import com.miui.gallery.cloud.UpDownloadManager;
import com.miui.gallery.cloud.syncstate.SyncStateManager;
import com.miui.gallery.cloud.syncstate.SyncStateUtil;
import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.cloud.thread.RequestCommandQueue.OnItemChangedListener;
import com.miui.gallery.provider.deprecated.GalleryCloudProvider;
import com.miui.gallery.sdk.uploadstatus.SyncProxy;
import com.miui.gallery.sdk.uploadstatus.UploadStatusItem;
import com.miui.gallery.util.SyncLog;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class UploadStatusController implements OnItemChangedListener {
    private static UploadStatusController sThis;
    private int mCount = 0;
    private volatile boolean mHasPendingItem;
    private final Object mLock = new Object();
    private final List<UploadStatusItem> mUploadingItems = new CopyOnWriteArrayList();

    private void refreshUploadStatus() {
        ContentValues values = new ContentValues();
        values.put("is_upload", Boolean.valueOf(this.mCount > 0));
        values.put("has_pending_item", Boolean.valueOf(this.mHasPendingItem));
        GalleryApp.sGetAndroidContext().getContentResolver().update(GalleryCloudProvider.UPLOAD_STATE_URI, values, null, null);
        if (SyncStateUtil.getDirtyCount(GalleryApp.sGetAndroidContext()).getSyncableCount() == 0) {
            SyncLog.d("UploadStatusController", "recover syncType");
            SyncStateManager.getInstance().setSyncType(SyncType.UNKNOW, true);
        }
    }

    public static synchronized UploadStatusController getInstance() {
        UploadStatusController uploadStatusController;
        synchronized (UploadStatusController.class) {
            if (sThis == null) {
                sThis = new UploadStatusController();
                UpDownloadManager.instance(4).addOnItemChangedListener(sThis);
                UpDownloadManager.instance(2).addOnItemChangedListener(sThis);
            }
            uploadStatusController = sThis;
        }
        return uploadStatusController;
    }

    private UploadStatusController() {
    }

    public boolean isUploading() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mCount > 0;
        }
        return z;
    }

    public boolean isPending() {
        return this.mHasPendingItem;
    }

    public void startUpload() {
        synchronized (this.mLock) {
            this.mCount++;
            if (this.mCount == 1) {
                refreshUploadStatus();
                SyncLog.d("UploadStatusController", "start upload");
            }
        }
    }

    public void endUpload() {
        synchronized (this.mLock) {
            this.mCount--;
            if (this.mCount == 0) {
                refreshUploadStatus();
                SyncLog.d("UploadStatusController", "end upload");
            }
        }
    }

    public synchronized void start(RequestItemBase requestItem) {
        if (accept(requestItem)) {
            UploadStatusItem statusItem = new UploadStatusItem((RequestCloudItem) requestItem);
            this.mUploadingItems.remove(statusItem);
            this.mUploadingItems.add(statusItem);
            SyncProxy.getInstance().getUploadStatusProxy().onUploadStatusChanged(statusItem);
        }
    }

    public synchronized void end(RequestItemBase requestItem) {
        if (accept(requestItem)) {
            UploadStatusItem statusItem = new UploadStatusItem((RequestCloudItem) requestItem);
            this.mUploadingItems.remove(statusItem);
            SyncProxy.getInstance().getUploadStatusProxy().onUploadStatusChanged(statusItem);
        }
    }

    private boolean accept(RequestItemBase requestItem) {
        return requestItem.priority == 4 || requestItem.priority == 2 || requestItem.priority == 5 || requestItem.priority == 3;
    }

    public UploadStatusItem getUploadStatus(UploadStatusItem item) {
        for (UploadStatusItem anItem : this.mUploadingItems) {
            if (anItem.equals(item)) {
                return anItem;
            }
        }
        return null;
    }

    public void onAddItem(RequestCloudItem item) {
        checkPendingStatus();
    }

    public void onRemoveItem(RequestCloudItem item) {
        checkPendingStatus();
    }

    private void checkPendingStatus() {
        new AsyncTask<Void, Void, Void>() {
            protected Void doInBackground(Void... params) {
                boolean oldPendingStatus = UploadStatusController.this.mHasPendingItem;
                UploadStatusController uploadStatusController = UploadStatusController.this;
                boolean z = UpDownloadManager.instance(4).hasDelayedItem() || UpDownloadManager.instance(2).hasDelayedItem();
                uploadStatusController.mHasPendingItem = z;
                if (oldPendingStatus != UploadStatusController.this.mHasPendingItem) {
                    UploadStatusController.this.refreshUploadStatus();
                }
                return null;
            }
        }.execute(new Void[0]);
    }
}
