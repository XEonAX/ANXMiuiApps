package com.miui.gallery.discovery;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.provider.cloudmanager.FileHandleService;

public class FileHandleServiceCheckJob extends AbstractJob {
    public Object execJob() {
        FileHandleService.checkUnhandledMedias(GalleryApp.sGetAndroidContext());
        return null;
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new Builder(this.mJobId, cn).setRequiresDeviceIdle(true).setPeriodic(86400000).build();
    }
}
