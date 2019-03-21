package com.miui.gallery.discovery;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;

public class DeleteRecordCleanJob extends AbstractJob {
    public Object execJob() {
        return Boolean.valueOf(DeleteRecorder.clearExpiredRecords());
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new Builder(this.mJobId, cn).setPeriodic(604800000).setRequiresDeviceIdle(true).build();
    }
}
