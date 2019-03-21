package com.miui.gallery.cloud.jobs;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.download.BatchDownloadManager;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;

public class BackDownloadJob extends AbsSyncJob<Void> {
    public Void execute() {
        if (BatchDownloadManager.canAutoDownload()) {
            BatchDownloadManager.getInstance().startBatchDownload(GalleryApp.sGetAndroidContext(), false);
        }
        return null;
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new Builder(getJobId(), cn).setRequiredNetworkType(2).setRequiresDeviceIdle(CloudControlStrategyHelper.getSyncStrategy().isAutoDownloadRequireDeviceIdle()).setRequiresCharging(true).build();
    }
}
