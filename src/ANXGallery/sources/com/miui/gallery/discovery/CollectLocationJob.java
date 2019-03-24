package com.miui.gallery.discovery;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.data.LocationManager;
import com.miui.internal.vip.VipConstants;

public class CollectLocationJob extends AbstractJob {
    public Object execJob() {
        LocationManager.getInstance().loadAllLocation();
        return null;
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new Builder(this.mJobId, cn).setPeriodic(VipConstants.DAY).setRequiresCharging(true).setRequiresDeviceIdle(true).setRequiredNetworkType(2).build();
    }
}
