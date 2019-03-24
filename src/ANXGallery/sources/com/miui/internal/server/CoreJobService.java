package com.miui.internal.server;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.util.Log;
import com.miui.internal.analytics.AnalyticsManager;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class CoreJobService extends JobService {
    private static final long INTERVAL_DAY = 86400000;
    private static final String JOB_SCHEDULER_SERVICE = "jobscheduler";
    private static final String TAG = "CoreJobService";
    private static final int hy = 1;
    private static final int hz = 2;

    private static abstract class AbstractJob implements Runnable {
        private JobService hA;
        private JobParameters hB;

        public AbstractJob(JobService jobService, JobParameters jobParameters) {
            this.hA = jobService;
            this.hB = jobParameters;
        }

        public void run() {
            this.hA.jobFinished(this.hB, false);
        }
    }

    private static class AnyNetworkJob extends AbstractJob {
        public AnyNetworkJob(JobService jobService, JobParameters jobParameters) {
            super(jobService, jobParameters);
        }

        public void run() {
            DataUpdateManager.getInstance().update();
            super.run();
        }
    }

    private static class UnmerteredNetworkJob extends AbstractJob {
        public UnmerteredNetworkJob(JobService jobService, JobParameters jobParameters) {
            super(jobService, jobParameters);
        }

        public void run() {
            DataUpdateManager.getInstance().update();
            AnalyticsManager.getInstance().upload();
            super.run();
        }
    }

    public static void scheduleJobs(Context context) {
        Set hashSet = new HashSet();
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService(JOB_SCHEDULER_SERVICE);
        List<JobInfo> allPendingJobs = jobScheduler.getAllPendingJobs();
        if (allPendingJobs != null) {
            for (JobInfo id : allPendingJobs) {
                hashSet.add(Integer.valueOf(id.getId()));
            }
        }
        if (!hashSet.contains(Integer.valueOf(1))) {
            jobScheduler.schedule(i(context));
        }
        if (!hashSet.contains(Integer.valueOf(2))) {
            jobScheduler.schedule(j(context));
        }
    }

    private static JobInfo i(Context context) {
        return a(context, 1, 1);
    }

    private static JobInfo j(Context context) {
        return a(context, 2, 2);
    }

    private static JobInfo a(Context context, int i, int i2) {
        return new Builder(i, new ComponentName(context, CoreJobService.class)).setPeriodic(86400000).setRequiredNetworkType(i2).build();
    }

    public boolean onStartJob(JobParameters jobParameters) {
        if (jobParameters == null) {
            return false;
        }
        switch (jobParameters.getJobId()) {
            case 1:
                a(new AnyNetworkJob(this, jobParameters));
                return true;
            case 2:
                a(new UnmerteredNetworkJob(this, jobParameters));
                return true;
            default:
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Unknown job id: ");
                stringBuilder.append(jobParameters.getJobId());
                Log.e(str, stringBuilder.toString());
                return false;
        }
    }

    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    private void a(AbstractJob abstractJob) {
        new Thread(abstractJob).start();
    }
}
