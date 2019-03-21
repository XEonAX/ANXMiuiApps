package com.miui.gallery.discovery;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.provider.RecentDiscoveryMediaManager;

public class RecentMediaCleanupJob extends AbstractJob {
    public Object execJob() {
        RecentDiscoveryMediaManager.cleanupInvalidRecords();
        return null;
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new Builder(this.mJobId, cn).setRequiredNetworkType(0).setRequiresCharging(false).setRequiresDeviceIdle(true).setPeriodic(86400000).build();
    }
}
