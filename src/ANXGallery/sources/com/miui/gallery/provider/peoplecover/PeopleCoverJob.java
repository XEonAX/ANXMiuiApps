package com.miui.gallery.provider.peoplecover;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.discovery.AbstractJob;
import com.miui.gallery.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;

public class PeopleCoverJob extends AbstractJob {
    private static AtomicBoolean isRunning = new AtomicBoolean(false);

    public Object execJob() {
        if (isRunning.compareAndSet(false, true)) {
            PeopleCoverManager.getInstance().startChooseCoverForAllPeople();
            isRunning.set(false);
        } else {
            Log.d("PeopleCoverJob", "A same job is still running.");
        }
        return null;
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new Builder(this.mJobId, cn).setRequiresCharging(true).setRequiresDeviceIdle(true).setPeriodic(259200000).build();
    }
}
