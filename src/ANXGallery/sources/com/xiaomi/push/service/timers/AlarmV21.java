package com.xiaomi.push.service.timers;

import android.annotation.TargetApi;
import android.app.job.JobInfo.Builder;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.XMJobService;
import com.xiaomi.smack.SmackConfiguration;

@TargetApi(21)
public class AlarmV21 implements IAlarm {
    Context mContext;
    JobScheduler mJobScheduler;
    private boolean mStarted = false;

    AlarmV21(Context context) {
        this.mContext = context;
        this.mJobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
    }

    void register(long delayMillis) {
        Builder builder = new Builder(1, new ComponentName(this.mContext.getPackageName(), XMJobService.class.getName()));
        builder.setMinimumLatency(delayMillis);
        builder.setOverrideDeadline(delayMillis);
        builder.setRequiredNetworkType(1);
        builder.setPersisted(false);
        MyLog.v("schedule Job = " + builder.build().getId() + " in " + delayMillis);
        this.mJobScheduler.schedule(builder.build());
    }

    public void registerPing(boolean firstPing) {
        if (firstPing || this.mStarted) {
            long interval = (long) SmackConfiguration.getPingInteval();
            if (firstPing) {
                stop();
                interval -= SystemClock.elapsedRealtime() % interval;
            }
            this.mStarted = true;
            register(interval);
        }
    }

    public void stop() {
        this.mStarted = false;
        this.mJobScheduler.cancel(1);
    }

    public boolean isAlive() {
        return this.mStarted;
    }
}
