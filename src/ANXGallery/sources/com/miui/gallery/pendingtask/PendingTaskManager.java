package com.miui.gallery.pendingtask;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.app.job.JobParameters;
import android.content.ComponentName;
import android.os.PersistableBundle;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.EntityManager;
import com.miui.gallery.pendingtask.base.PendingTask;
import com.miui.gallery.pendingtask.base.PendingTask.Callback;
import com.miui.gallery.pendingtask.base.PendingTaskInfo;
import com.miui.gallery.pendingtask.base.PendingTaskService;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.internal.vip.VipConstants;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import miui.mipub.MipubStat;
import miui.provider.ExtraTelephony.FirewallLog;

public class PendingTaskManager {
    private static final int[] TIME_STAGE = new int[]{1, 2, 3, 6, 12, 24, 48, 72, 168};
    private static PendingTaskManager instance;

    private PendingTaskManager() {
    }

    public static synchronized PendingTaskManager getInstance() {
        PendingTaskManager pendingTaskManager;
        synchronized (PendingTaskManager.class) {
            if (instance == null) {
                instance = new PendingTaskManager();
            }
            pendingTaskManager = instance;
        }
        return pendingTaskManager;
    }

    public <T> void postTask(int taskType, T data) {
        postTask(taskType, data, null);
    }

    public <T> void postTask(int taskType, T data, String tag) {
        postTask(taskType, data, tag, 0);
    }

    public <T> void postTask(int taskType, T data, String tag, long expireTime) {
        if (!TextUtils.isEmpty(tag)) {
            cancel(taskType, tag);
        }
        Log.d("PendingTaskManager", "postTask type: %s tag: %s", Integer.valueOf(taskType), tag);
        PendingTask task = PendingTaskFactory.create(taskType);
        if (task == null) {
            throw new RuntimeException("Can't find PendingTask of this type");
        }
        PendingTaskInfo info = new PendingTaskInfo();
        info.setTaskType(taskType);
        info.setTaskTag(tag);
        info.setCreateTime(System.currentTimeMillis());
        info.setExpireTime(expireTime);
        info.setNetType(task.getNetworkType());
        info.setRequireCharging(task.requireCharging());
        info.setRequireDeviceIdle(task.requireDeviceIdle());
        info.setMinLatencyMillis(task.getMinLatency());
        try {
            info.setData(task.wrapData(data));
            GalleryEntityManager.getInstance().insert((Entity) info);
            scheduleTask(info);
        } catch (Exception e) {
            Log.e("PendingTaskManager", "postTask %s wrapData error.\n", Integer.valueOf(taskType), e);
        }
    }

    public void checkTaskList() {
        recordExpireCount();
        long startTime = System.currentTimeMillis() - MipubStat.STAT_EXPIRY_DATA;
        List<PendingTaskInfo> list = GalleryEntityManager.getInstance().query(PendingTaskInfo.class, String.format("%s > %s", new Object[]{"createTime", Long.valueOf(startTime)}), null);
        if (list != null && !list.isEmpty()) {
            int rescheduleCount = 0;
            List<JobInfo> jobs = PendingTaskService.getAllPendingJob(GalleryApp.sGetAndroidContext());
            for (PendingTaskInfo info : list) {
                int jobId = generateJobId(info.getId());
                if (jobs == null) {
                    scheduleTask(info);
                } else {
                    boolean found = false;
                    for (JobInfo jobInfo : jobs) {
                        if (jobInfo.getId() == jobId) {
                            found = true;
                            break;
                        }
                    }
                    if (!found) {
                        rescheduleCount++;
                        scheduleTask(info);
                    }
                }
            }
            recordRescheduleCount(rescheduleCount);
        }
    }

    public void cancel(int taskType, String tag) {
        Log.d("PendingTaskManager", "cancel task. type: %s tag: %s", Integer.valueOf(taskType), tag);
        if (!TextUtils.isEmpty(tag)) {
            EntityManager em = GalleryEntityManager.getInstance();
            PendingTaskInfo info = (PendingTaskInfo) em.find(PendingTaskInfo.class, String.format("%s=%s and %s='%s'", new Object[]{"taskType", Integer.valueOf(taskType), "taskTag", tag}), null);
            em.delete(info);
            if (info != null) {
                cancelJob(info.getId());
            }
        }
    }

    public void cancelAll(int taskType) {
        Log.d("PendingTaskManager", "cancel all. type: %s", Integer.valueOf(taskType));
        EntityManager em = GalleryEntityManager.getInstance();
        String selection = String.format("%s=%s", new Object[]{"taskType", Integer.valueOf(taskType)});
        List<PendingTaskInfo> list = em.query(PendingTaskInfo.class, selection, null);
        if (list != null && !list.isEmpty()) {
            for (PendingTaskInfo info : list) {
                cancelJob(info.getId());
            }
            em.delete(PendingTaskInfo.class, selection, null);
        }
    }

    private void cancelJob(long taskId) {
        PendingTaskService.cancelJob(GalleryApp.sGetAndroidContext(), generateJobId(taskId));
    }

    public void executeTask(JobParameters params, Callback callback) {
        Log.d("PendingTaskManager", "executeTask jobId: %s", Integer.valueOf(params.getJobId()));
        PersistableBundle bundle = params.getExtras();
        if (bundle != null) {
            long taskId = bundle.getLong("taskId", 0);
            if (taskId != 0) {
                executeTask(taskId, callback);
            }
        }
    }

    public void executeTask(long taskId, Callback callback) {
        Log.d("PendingTaskManager", "executeTask taskId: %s", Long.valueOf(taskId));
        EntityManager em = GalleryEntityManager.getInstance();
        PendingTaskInfo info = (PendingTaskInfo) em.find(PendingTaskInfo.class, taskId);
        if (info == null) {
            Log.e("PendingTaskManager", "can't find taskInfo %s", Long.valueOf(taskId));
            return;
        }
        int taskType = info.getTaskType();
        long expireTime = info.getExpireTime();
        long currentTime = System.currentTimeMillis();
        if (expireTime <= 0 || expireTime >= currentTime) {
            PendingTask task = PendingTaskFactory.create(taskType);
            if (task == null) {
                Log.e("PendingTaskManager", "can't find PendingTask of this type %s", Integer.valueOf(taskType));
                em.delete(info);
                recordDropReason(taskType, "create_task");
                return;
            }
            task.setCallback(callback);
            Object data = null;
            try {
                data = task.parseData(info.getData());
            } catch (Exception e) {
                Log.e("PendingTaskManager", "task %s parseData error.\n", Integer.valueOf(taskType), e);
            }
            if (data == null) {
                em.delete(info);
                recordDropReason(taskType, "data_parse");
                return;
            }
            boolean retry = false;
            long start = System.currentTimeMillis();
            try {
                Log.d("PendingTaskManager", "task %s begin process.\n", Integer.valueOf(info.getTaskType()));
                retry = task.process(data);
            } catch (Exception e2) {
                Log.e("PendingTaskManager", "task %s process error.\n", Integer.valueOf(info.getTaskType()), e2);
            }
            long cost = System.currentTimeMillis() - start;
            recordProcessDuration(taskType, cost);
            if (retry) {
                info.increaseRetryTime();
                if (info.getRetryTime() >= 3) {
                    Log.w("PendingTaskManager", "task %s retry %s times, drop it!", Integer.valueOf(taskType), Integer.valueOf(info.getRetryTime()));
                    em.delete(info);
                    recordDropReason(taskType, "over_time");
                } else {
                    em.update(info);
                    scheduleTask(info);
                }
            } else {
                recordFinishDuration(System.currentTimeMillis() - info.getCreateTime());
                em.delete(info);
            }
            Log.d("PendingTaskManager", "execute taskId %s done, cost %s ms, need retry %s", Long.valueOf(taskId), Long.valueOf(cost), Boolean.valueOf(retry));
            return;
        }
        Log.w("PendingTaskManager", "task %s is out of date", Integer.valueOf(taskType));
        em.delete(info);
        recordDropReason(taskType, "out_date");
    }

    private void scheduleTask(PendingTaskInfo info) {
        int netType;
        Log.d("PendingTaskManager", "scheduleTask type: %s taskId: %s", Integer.valueOf(info.getTaskType()), Long.valueOf(info.getId()));
        ComponentName component = new ComponentName(GalleryApp.sGetAndroidContext(), PendingTaskService.class);
        PersistableBundle bundle = new PersistableBundle();
        bundle.putLong("taskId", info.getId());
        long minLatency = info.getMinLatencyMillis() - (System.currentTimeMillis() - info.getCreateTime());
        switch (info.getNetType()) {
            case 0:
                netType = 0;
                break;
            case 1:
                netType = 2;
                break;
            case 2:
                netType = 1;
                break;
            default:
                netType = 2;
                break;
        }
        Builder requiredNetworkType = new Builder(generateJobId(info.getId()), component).setExtras(bundle).setRequiresCharging(info.isRequireCharging()).setRequiresDeviceIdle(info.isRequireDeviceIdle()).setRequiredNetworkType(netType);
        if (minLatency <= 0) {
            minLatency = 0;
        }
        PendingTaskService.scheduleJob(GalleryApp.sGetAndroidContext(), requiredNetworkType.setMinimumLatency(minLatency).build());
    }

    private int generateJobId(long taskId) {
        return (int) ((taskId % 1000) + 1000);
    }

    private static void recordExpireCount() {
        long startTime = (System.currentTimeMillis() - MipubStat.STAT_EXPIRY_DATA) - VipConstants.DAY;
        List<PendingTaskInfo> list = GalleryEntityManager.getInstance().query(PendingTaskInfo.class, String.format("%s > %s AND %s < %s", new Object[]{"createTime", Long.valueOf(startTime), "createTime", Long.valueOf(System.currentTimeMillis() - MipubStat.STAT_EXPIRY_DATA)}), null);
        if (list != null && list.size() > 0) {
            HashMap<String, String> params = new HashMap();
            params.put("count", String.valueOf(list.size()));
            BaseSamplingStatHelper.recordCountEvent("pending_task", "pending_task_expire_count", params);
            Log.w("PendingTaskManager", "%s tasks expire.", Integer.valueOf(list.size()));
        }
    }

    private static void recordRescheduleCount(int count) {
        HashMap<String, String> params = new HashMap();
        params.put("count", String.valueOf(count));
        BaseSamplingStatHelper.recordCountEvent("pending_task", "pending_task_reschedule", params);
    }

    private static void recordProcessDuration(int taskType, long cost) {
        if (cost >= 600000) {
            HashMap<String, String> params = new HashMap();
            params.put("type", String.valueOf(taskType));
            params.put("cost", String.valueOf(cost));
            BaseSamplingStatHelper.recordCountEvent("pending_task", "pending_task_process_cost", params);
        }
    }

    private static void recordFinishDuration(long cost) {
        float hour = (1.0f * ((float) cost)) / 3600000.0f;
        int stage = BaseSamplingStatHelper.generatorValueStage(hour, TIME_STAGE);
        HashMap<String, String> params = new HashMap();
        params.put("stage", String.valueOf(stage));
        BaseSamplingStatHelper.recordCountEvent("pending_task", "pending_task_finish_duration", params);
        Log.d("PendingTaskManager", "task spend %s hour since post, record stage %s.", new DecimalFormat("#.00").format((double) hour), Integer.valueOf(stage));
    }

    private static void recordDropReason(int taskType, String reason) {
        HashMap<String, String> params = new HashMap();
        params.put("type", String.valueOf(taskType));
        params.put(FirewallLog.REASON, reason);
        BaseSamplingStatHelper.recordCountEvent("pending_task", "pending_task_drop_reason", params);
    }
}
