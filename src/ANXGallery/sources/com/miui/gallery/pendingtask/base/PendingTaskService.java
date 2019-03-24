package com.miui.gallery.pendingtask.base;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.Context;
import com.miui.gallery.pendingtask.PendingTaskManager;
import com.miui.gallery.pendingtask.base.PendingTask.Callback;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadPool;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import miui.extension.target.ActivityTarget;

public class PendingTaskService extends JobService {
    private ConcurrentHashMap<Integer, Future> mRunningQueue = null;
    private ThreadPool mThreadPool;

    private class PendingTaskJob implements Job<Void> {
        private JobParameters mParams;

        public PendingTaskJob(JobParameters params) {
            this.mParams = params;
        }

        public Void run(final JobContext jc) {
            PendingTaskManager.getInstance().executeTask(this.mParams, new Callback() {
                public boolean isCancelled() {
                    return jc.isCancelled();
                }
            });
            PendingTaskService.this.jobFinished(this.mParams, false);
            PendingTaskService.this.mRunningQueue.remove(Integer.valueOf(this.mParams.getJobId()));
            return null;
        }
    }

    public static void scheduleJob(Context context, JobInfo jobInfo) {
        Log.i("PendingTaskService", "scheduleJob jobId: %s", Integer.valueOf(jobInfo.getId()));
        ((JobScheduler) context.getSystemService("jobscheduler")).schedule(jobInfo);
    }

    public static List<JobInfo> getAllPendingJob(Context context) {
        return ((JobScheduler) context.getSystemService("jobscheduler")).getAllPendingJobs();
    }

    public static void cancelJob(Context context, int jobId) {
        ((JobScheduler) context.getSystemService("jobscheduler")).cancel(jobId);
    }

    public void onCreate() {
        super.onCreate();
        Log.d("PendingTaskService", ActivityTarget.ACTION_ON_CREATE);
        this.mThreadPool = new ThreadPool(2, 4);
        this.mRunningQueue = new ConcurrentHashMap();
    }

    public boolean onStartJob(JobParameters params) {
        Log.d("PendingTaskService", "onStartJob jobId: %s", Integer.valueOf(params.getJobId()));
        this.mRunningQueue.put(Integer.valueOf(params.getJobId()), this.mThreadPool.submit(new PendingTaskJob(params)));
        return true;
    }

    public boolean onStopJob(JobParameters params) {
        Log.d("PendingTaskService", "onStopJob jobId: %s", Integer.valueOf(params.getJobId()));
        Future future = (Future) this.mRunningQueue.remove(Integer.valueOf(params.getJobId()));
        if (future != null) {
            future.cancel();
        }
        return false;
    }

    public void onDestroy() {
        super.onDestroy();
        Log.d("PendingTaskService", "onDestroy");
        this.mThreadPool.shutdown();
    }
}
