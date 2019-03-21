package com.miui.gallery.discovery;

import android.annotation.SuppressLint;
import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.text.TextUtils;

public abstract class AbstractJob {
    protected int mJobId;

    public abstract Object execJob();

    public abstract JobInfo getJobInfo(Context context, ComponentName componentName);

    public AbstractJob() {
        this.mJobId = -1;
        this.mJobId = getClass().getSimpleName().hashCode();
    }

    public void setJobId(int jobId) {
        this.mJobId = jobId;
    }

    public int getJobId() {
        return this.mJobId;
    }

    public boolean needsReschedule() {
        return false;
    }

    @SuppressLint({"NewApi"})
    public boolean equals(JobInfo self, JobInfo other) {
        return self != null && other != null && self.getId() == other.getId() && self.getService().equals(other.getService()) && self.isPeriodic() == other.isPeriodic() && self.getIntervalMillis() == other.getIntervalMillis() && self.getInitialBackoffMillis() == other.getInitialBackoffMillis() && self.getBackoffPolicy() == other.getBackoffPolicy() && self.getNetworkType() == other.getNetworkType() && self.isRequireCharging() == other.isRequireCharging() && self.isRequireDeviceIdle() == other.isRequireDeviceIdle() && isJobExtrasEquals(self.getExtras(), other.getExtras());
    }

    @SuppressLint({"NewApi"})
    private static boolean isJobExtrasEquals(PersistableBundle first, PersistableBundle second) {
        return (first.isEmpty() && second.isEmpty()) || TextUtils.equals(first.toString(), second.toString());
    }
}
