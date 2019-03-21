package com.miui.gallery.cloud.jobs;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.cloud.taskmanager.Task;
import com.miui.gallery.cloud.taskmanager.TaskManager;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import java.util.List;
import java.util.Locale;

public class SyncJobService extends JobService {
    private TaskManager mTaskManager;

    private static class JobFactory {
        public static AbsSyncJob createJob(int jobId) {
            Class<? extends AbsSyncJob> jobClass = null;
            switch (jobId) {
                case 10000:
                    jobClass = BackDownloadJob.class;
                    break;
            }
            if (jobClass != null) {
                try {
                    AbsSyncJob job = (AbsSyncJob) jobClass.newInstance();
                    job.setJobId(jobId);
                    return job;
                } catch (InstantiationException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                }
            }
            return null;
        }
    }

    private class JobTask extends Task {
        private JobParameters mParameters;

        JobTask(JobParameters parameters) {
            this.mParameters = parameters;
        }

        public JobParameters getParameters() {
            return this.mParameters;
        }

        public int compareTo(Task another) {
            return 0;
        }

        public Object run(JobContext jc) {
            Object result = null;
            AbsSyncJob job = null;
            try {
                if (this.mParameters != null) {
                    job = JobFactory.createJob(this.mParameters.getJobId());
                    if (job != null) {
                        result = job.execute();
                    }
                }
                SyncJobService.this.jobFinished(this.mParameters, false);
                if (job != null) {
                    BaseSamplingStatHelper.recordCountEvent("Sync", String.format(Locale.US, "sync_job_%s", new Object[]{job.getClass().getSimpleName()}));
                }
                return result;
            } catch (Throwable th) {
                SyncJobService.this.jobFinished(this.mParameters, false);
                if (job != null) {
                    BaseSamplingStatHelper.recordCountEvent("Sync", String.format(Locale.US, "sync_job_%s", new Object[]{job.getClass().getSimpleName()}));
                }
            }
        }

        public boolean equals(Object o) {
            if (o == null || !(o instanceof JobTask)) {
                return false;
            }
            JobTask another = (JobTask) o;
            if ((getParameters() != null || another.getParameters() != null) && (getParameters() == null || another.getParameters() == null || getParameters().getJobId() != another.getParameters().getJobId())) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.mParameters == null ? 0 : this.mParameters.getJobId();
        }
    }

    public void onCreate() {
        super.onCreate();
        this.mTaskManager = new TaskManager(2);
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mTaskManager != null) {
            this.mTaskManager.shutdown();
            this.mTaskManager = null;
        }
    }

    public boolean onStartJob(JobParameters params) {
        if (params != null) {
            Log.i("SyncJobService", "onStartJob %s", Integer.valueOf(params.getJobId()));
        }
        if (this.mTaskManager != null) {
            this.mTaskManager.submit(new JobTask(params));
        }
        return true;
    }

    public boolean onStopJob(JobParameters params) {
        return false;
    }

    public static int scheduleJob(Context context, int jobId) {
        if (context == null) {
            return 0;
        }
        AbsSyncJob job = JobFactory.createJob(jobId);
        if (job != null) {
            return scheduleJob(context, job);
        }
        return 1;
    }

    private static int scheduleJob(Context context, AbsSyncJob job) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> jobInfos = jobScheduler.getAllPendingJobs();
        boolean isPendingJob = false;
        JobInfo info = job.getJobInfo(context, new ComponentName(context, SyncJobService.class));
        for (JobInfo jobInfo : jobInfos) {
            if (job.equals(info, jobInfo)) {
                isPendingJob = true;
                break;
            }
        }
        if (isPendingJob) {
            Log.d("SyncJobService", "scheduledJob %d", Integer.valueOf(job.getJobId()));
            return 1;
        }
        if (info == null) {
            jobScheduler.cancel(job.getJobId());
            Log.d("SyncJobService", "cancel Job %d", Integer.valueOf(job.getJobId()));
        } else if (jobScheduler.schedule(info) > 0) {
            Log.d("SyncJobService", "scheduleJob %d success", Integer.valueOf(job.getJobId()));
            return 1;
        }
        return 0;
    }
}
