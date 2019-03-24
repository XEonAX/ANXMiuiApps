package com.miui.gallery.cloudcontrol;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.discovery.AbstractJob;
import com.miui.gallery.preference.GalleryPreferences.CloudControl;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.internal.vip.VipConstants;
import java.util.Map;

public class FetchCloudControlDataJob extends AbstractJob {
    public Object execJob() {
        if (NetworkUtils.isNetworkConnected()) {
            long lastRequestTime = CloudControl.getLastRequestTime();
            if (lastRequestTime > 0) {
                long jobExecInterval = System.currentTimeMillis() - lastRequestTime;
                if (jobExecInterval < 57600000) {
                    Log.w("FetchCloudControlDataJob", "exec job too frequently[time interval: %d ms], skip exec.", Long.valueOf(jobExecInterval));
                    Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
                    params.put("request_interval(minutes)", String.valueOf((jobExecInterval / 1000) / 60));
                    BaseSamplingStatHelper.recordCountEvent("cloud_control", "exec_job_too_frequently", params);
                    return Boolean.valueOf(true);
                }
            }
            return Boolean.valueOf(new CloudControlRequestHelper(GalleryApp.sGetAndroidContext()).execRequestSync());
        }
        Log.e("FetchCloudControlDataJob", "Network is disconnected, skip exec.");
        return Boolean.valueOf(false);
    }

    public boolean needsReschedule() {
        return false;
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new Builder(this.mJobId, cn).setRequiredNetworkType(2).setRequiresCharging(false).setRequiresDeviceIdle(false).setPeriodic(VipConstants.DAY).build();
    }
}
