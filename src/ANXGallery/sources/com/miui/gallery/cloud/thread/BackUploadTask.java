package com.miui.gallery.cloud.thread;

import android.accounts.Account;
import android.content.Context;
import com.miui.gallery.cloud.CreateOwnerImage;
import com.miui.gallery.cloud.CreateShareImage;
import com.miui.gallery.cloud.GalleryErrorCode.MiCloudServerExceptionHandler;
import com.miui.gallery.cloud.GalleryExtendedAuthToken;
import com.miui.gallery.cloud.RequestCloudItem;
import com.miui.gallery.cloud.RetryRequest;
import com.miui.gallery.cloud.control.BatteryMonitor;
import com.miui.gallery.cloud.control.SyncMonitor;
import com.miui.gallery.cloud.thread.RequestCommandQueue.OnItemChangedListener;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.deviceprovider.UploadStatusController;
import java.util.HashMap;
import java.util.List;

public class BackUploadTask extends BaseSyncLockTask {
    private long mStartTime;
    private int mUploadCount;

    public BackUploadTask(int type, int priorityCount, int batchMax, int commandMax, OnItemChangedListener changeListener) {
        super(type, priorityCount, batchMax, commandMax, changeListener);
    }

    protected void onPreExecute() {
        this.mStartTime = System.currentTimeMillis();
        this.mUploadCount = 0;
        UploadStatusController.getInstance().startUpload();
        BatteryMonitor.getInstance().start();
        acquireLock();
        SyncMonitor.monitorSyncStart();
    }

    protected void onPostExecute() {
        UploadStatusController.getInstance().endUpload();
        BatteryMonitor.getInstance().end();
        releaseLock();
        statUpload();
        SyncMonitor.monitorSyncStop();
    }

    private void statUpload() {
        long uploadTime = (long) Math.round((1.0f * ((float) (System.currentTimeMillis() - this.mStartTime))) / 1000.0f);
        HashMap<String, String> params = new HashMap();
        params.put("cost", String.valueOf(uploadTime));
        params.put("count", String.valueOf(this.mUploadCount));
        BaseSamplingStatHelper.recordCountEvent("Sync", "sync_upload_time_total", params);
    }

    protected int onPerformSync() throws Throwable {
        int result = 2;
        try {
            return super.onPerformSync();
        } catch (Throwable e) {
            SyncLog.e(this.TAG, e);
            if (MiCloudServerExceptionHandler.handleMiCloudException(e.getCloudServerException())) {
                SyncLog.e(this.TAG, "throw Cloud server exception status code %d", Integer.valueOf(e.getStatusCode()));
                return result;
            }
            SyncLog.d(this.TAG, "no retry");
            return result;
        }
    }

    protected int handle(Context context, Account account, GalleryExtendedAuthToken extToken, List<RequestCloudItem> requestItems) throws Exception {
        if (requestItems.isEmpty()) {
            return 0;
        }
        this.mUploadCount += requestItems.size();
        return RetryRequest.doUpDownDeleteItems(context, account, extToken, requestItems, ((RequestCloudItem) requestItems.get(0)).dbCloud.isShareItem() ? new CreateShareImage(context) : new CreateOwnerImage(context));
    }
}
