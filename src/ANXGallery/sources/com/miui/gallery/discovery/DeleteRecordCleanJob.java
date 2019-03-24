package com.miui.gallery.discovery;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;
import miui.mipub.MipubStat;

public class DeleteRecordCleanJob extends AbstractJob {
    public Object execJob() {
        return Boolean.valueOf(DeleteRecorder.clearExpiredRecords());
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new Builder(this.mJobId, cn).setPeriodic(MipubStat.STAT_EXPIRY_DATA).setRequiresDeviceIdle(true).build();
    }
}
