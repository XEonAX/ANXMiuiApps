package com.xiaomi.channel.commonutils.misc;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.SparseArray;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ScheduledJobManager {
    private static volatile ScheduledJobManager instance;
    private ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(1);
    private SparseArray<ScheduledFuture> jobFutureMap = new SparseArray();
    private Object mapLock = new Object();
    private SharedPreferences preferences;

    private static class JobWrapper implements Runnable {
        Job job;

        public JobWrapper(Job job) {
            this.job = job;
        }

        public void run() {
            onJobStart();
            this.job.run();
            onJobDone();
        }

        void onJobStart() {
        }

        void onJobDone() {
        }
    }

    public static abstract class Job implements Runnable {
        public abstract int getJobId();
    }

    public static ScheduledJobManager getInstance(Context context) {
        if (instance == null) {
            synchronized (ScheduledJobManager.class) {
                if (instance == null) {
                    instance = new ScheduledJobManager(context);
                }
            }
        }
        return instance;
    }

    private ScheduledJobManager(Context context) {
        this.preferences = context.getSharedPreferences("mipush_extra", 0);
    }

    public boolean addRepeatJob(Job job, int period) {
        return addRepeatJob(job, period, 0);
    }

    public boolean addRepeatJob(Job job, int period, int minDelay) {
        if (job == null || getFutureByJobId(job) != null) {
            return false;
        }
        final String key = getJobKey(job.getJobId());
        JobWrapper wrapper = new JobWrapper(job) {
            void onJobStart() {
                super.onJobStart();
            }

            void onJobDone() {
                ScheduledJobManager.this.preferences.edit().putLong(key, System.currentTimeMillis()).commit();
            }
        };
        long timePassed = Math.abs(System.currentTimeMillis() - this.preferences.getLong(key, 0)) / 1000;
        int delay = minDelay;
        if (timePassed < ((long) (period - minDelay))) {
            delay = (int) (((long) period) - timePassed);
        }
        ScheduledFuture future = this.executor.scheduleAtFixedRate(wrapper, (long) delay, (long) period, TimeUnit.SECONDS);
        synchronized (this.mapLock) {
            this.jobFutureMap.put(job.getJobId(), future);
        }
        return true;
    }

    public void addOneShootJob(Runnable runnable) {
        addOneShootJob(runnable, 0);
    }

    public void addOneShootJob(Runnable runnable, int delay) {
        this.executor.schedule(runnable, (long) delay, TimeUnit.SECONDS);
    }

    public boolean addOneShootJob(Job job, int delay) {
        if (job == null || getFutureByJobId(job) != null) {
            return false;
        }
        ScheduledFuture future = this.executor.schedule(new JobWrapper(job) {
            void onJobDone() {
                synchronized (ScheduledJobManager.this.mapLock) {
                    ScheduledJobManager.this.jobFutureMap.remove(this.job.getJobId());
                }
            }
        }, (long) delay, TimeUnit.SECONDS);
        synchronized (this.mapLock) {
            this.jobFutureMap.put(job.getJobId(), future);
        }
        return true;
    }

    private ScheduledFuture getFutureByJobId(Job job) {
        ScheduledFuture scheduledFuture;
        synchronized (this.mapLock) {
            scheduledFuture = (ScheduledFuture) this.jobFutureMap.get(job.getJobId());
        }
        return scheduledFuture;
    }

    public boolean cancelJob(int jobId) {
        synchronized (this.mapLock) {
            ScheduledFuture future = (ScheduledFuture) this.jobFutureMap.get(jobId);
            if (future == null) {
                return false;
            }
            this.jobFutureMap.remove(jobId);
            return future.cancel(false);
        }
    }

    private static String getJobKey(int jobId) {
        return "last_job_time" + jobId;
    }
}
