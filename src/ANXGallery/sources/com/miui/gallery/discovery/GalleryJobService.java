package com.miui.gallery.discovery;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import com.miui.gallery.cloudcontrol.FetchCloudControlDataJob;
import com.miui.gallery.provider.peoplecover.PeopleCoverJob;
import com.miui.gallery.search.statistics.SearchStatReportJob;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import miui.util.async.Task;
import miui.util.async.TaskManager;

public class GalleryJobService extends JobService {
    private static Map<Integer, Class> sJobs = new HashMap();

    private class JobTask extends Task {
        private AbstractJob mJob;
        private JobParameters mJobParams;

        public JobTask(JobParameters jobParams) {
            this.mJobParams = jobParams;
        }

        public Object doLoad() throws Exception {
            Class jobClass = (Class) GalleryJobService.sJobs.get(Integer.valueOf(this.mJobParams.getJobId()));
            if (jobClass == null) {
                return null;
            }
            this.mJob = (AbstractJob) jobClass.newInstance();
            this.mJob.setJobId(this.mJobParams.getJobId());
            Log.d("GalleryJobService", "Exec job %d", Integer.valueOf(this.mJobParams.getJobId()));
            BaseSamplingStatHelper.recordCountEvent("JobServiceStarted", jobClass.getName(), BaseSamplingStatHelper.generatorCommonParams());
            return this.mJob.execJob();
        }

        public void onResult(TaskManager tm, Object result) {
            boolean needsReschedule = false;
            Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
            if (result == null || !(result instanceof Boolean) || ((Boolean) result).booleanValue()) {
                GalleryJobService.this.jobFinished(this.mJobParams, false);
                Log.d("GalleryJobService", "Job %d done", Integer.valueOf(this.mJobParams.getJobId()));
                BaseSamplingStatHelper.recordCountEvent("JobServiceDone", this.mJob != null ? this.mJob.getClass().getName() : "jobId: " + this.mJobParams.getJobId(), params);
                return;
            }
            String name;
            if (this.mJob != null && this.mJob.needsReschedule()) {
                needsReschedule = true;
            }
            GalleryJobService.this.jobFinished(this.mJobParams, needsReschedule);
            Log.d("GalleryJobService", "Job %d failed, rescheduled: %b.", Integer.valueOf(this.mJobParams.getJobId()), Boolean.valueOf(needsReschedule));
            String str = "JobServiceFailed";
            if (this.mJob != null) {
                name = this.mJob.getClass().getName();
            } else {
                name = "jobId: " + this.mJobParams.getJobId();
            }
            BaseSamplingStatHelper.recordErrorEvent(str, name, params);
            if (needsReschedule) {
                BaseSamplingStatHelper.recordErrorEvent("JobServiceRescheduled", this.mJob.getClass().getName(), params);
            }
        }
    }

    static {
        sJobs.put(Integer.valueOf(0), ScanMediaJob.class);
        sJobs.put(Integer.valueOf(3), RecentMediaCleanupJob.class);
        sJobs.put(Integer.valueOf(4), CollectLocationJob.class);
        sJobs.put(Integer.valueOf(5), FetchCloudControlDataJob.class);
        sJobs.put(Integer.valueOf(6), StatisticsJob.class);
        sJobs.put(Integer.valueOf(7), SearchStatReportJob.class);
        sJobs.put(Integer.valueOf(8), RequestSyncJob.class);
        sJobs.put(Integer.valueOf(10), DailyCheckJob.class);
        sJobs.put(Integer.valueOf(11), FileHandleServiceCheckJob.class);
        sJobs.put(Integer.valueOf(12), PersistentResponseCleanupJob.class);
        sJobs.put(Integer.valueOf(13), PeopleCoverJob.class);
        sJobs.put(Integer.valueOf(15), DeleteRecordCleanJob.class);
        sJobs.put(Integer.valueOf(16), CardScenarioJob.class);
    }

    public static void scheduleJobs(Context context) {
        if (sJobs != null && sJobs.size() != 0) {
            for (Entry<Integer, Class> entry : sJobs.entrySet()) {
                try {
                    AbstractJob job = (AbstractJob) ((Class) entry.getValue()).newInstance();
                    job.setJobId(((Integer) entry.getKey()).intValue());
                    scheduleJob(context, job);
                } catch (InstantiationException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static void scheduleJob(Context context, AbstractJob job) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> jobInfos = jobScheduler.getAllPendingJobs();
        boolean isPendingJob = false;
        JobInfo info = job.getJobInfo(context, new ComponentName(context, GalleryJobService.class));
        if (BaseMiscUtil.isValid(jobInfos)) {
            for (JobInfo jobInfo : jobInfos) {
                if (job.equals(info, jobInfo)) {
                    isPendingJob = true;
                    break;
                }
            }
        }
        if (isPendingJob) {
            Log.d("GalleryJobService", "scheduledJob %d", Integer.valueOf(job.getJobId()));
            return;
        }
        Log.d("GalleryJobService", "to scheduleJob %d", Integer.valueOf(job.getJobId()));
        if (info == null) {
            jobScheduler.cancel(job.getJobId());
            Log.d("GalleryJobService", "cancel Job %d", Integer.valueOf(job.getJobId()));
        } else if (jobScheduler.schedule(info) > 0) {
            Log.d("GalleryJobService", "scheduleJob %d success", Integer.valueOf(job.getJobId()));
            BaseSamplingStatHelper.recordCountEvent("JobServiceScheduled", job.getClass().getName(), BaseSamplingStatHelper.generatorCommonParams());
        }
    }

    public boolean onStartJob(JobParameters params) {
        TaskManager.getDefault().add(new JobTask(params));
        return true;
    }

    public boolean onStopJob(JobParameters params) {
        return false;
    }
}
