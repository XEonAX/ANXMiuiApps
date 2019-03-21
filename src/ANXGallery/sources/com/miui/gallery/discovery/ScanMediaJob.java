package com.miui.gallery.discovery;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.scanner.MediaScannerUtil;
import com.miui.gallery.util.Log;

public class ScanMediaJob extends AbstractJob {
    public Object execJob() {
        Log.i("ScanMediaJob", "execJob %d", Long.valueOf(System.currentTimeMillis()));
        MediaScannerUtil.scanVolume(GalleryApp.sGetAndroidContext(), "external");
        return null;
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new Builder(this.mJobId, cn).setRequiredNetworkType(0).setRequiresCharging(true).setRequiresDeviceIdle(true).setPeriodic(86400000).build();
    }
}
