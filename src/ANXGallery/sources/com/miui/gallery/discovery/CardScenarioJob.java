package com.miui.gallery.discovery;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.card.CardManager;
import com.miui.internal.vip.VipConstants;

public class CardScenarioJob extends AbstractJob {
    public Object execJob() {
        CardManager.getInstance().triggerScenarios();
        return null;
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new Builder(this.mJobId, cn).setRequiresCharging(false).setRequiresDeviceIdle(false).setPeriodic(VipConstants.DAY).build();
    }
}
