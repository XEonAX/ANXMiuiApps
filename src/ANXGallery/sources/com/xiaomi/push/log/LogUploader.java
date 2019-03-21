package com.xiaomi.push.log;

import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.channel.commonutils.file.SDCardUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.SerializedAsyncTaskProcessor.SerializedAsyncTask;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.push.service.ServiceConfig;
import com.xiaomi.smack.util.TaskExecutor;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONException;
import org.json.JSONObject;

public class LogUploader {
    private static volatile LogUploader sInstance = null;
    private Context mContext;
    private final ConcurrentLinkedQueue<Task> mTasks = new ConcurrentLinkedQueue();

    class Task extends SerializedAsyncTask {
        long timestamp = System.currentTimeMillis();

        Task() {
        }

        public boolean canExcuteNow() {
            return true;
        }

        public void process() {
        }

        final boolean isExpired() {
            return System.currentTimeMillis() - this.timestamp > 172800000;
        }
    }

    class CleanUpTask extends Task {
        CleanUpTask() {
            super();
        }

        public void process() {
            LogUploader.this.cleanUp();
        }
    }

    class UploadTask extends Task {
        File file;
        boolean force;
        int retryNum;
        String token;
        boolean uploaded;
        String url;

        UploadTask(String url, String token, File file, boolean force) {
            super();
            this.url = url;
            this.token = token;
            this.file = file;
            this.force = force;
        }

        public boolean canExcuteNow() {
            return Network.isWIFIConnected(LogUploader.this.mContext) || (this.force && Network.hasNetwork(LogUploader.this.mContext));
        }

        private boolean checkLimit() {
            JSONObject obj;
            SharedPreferences sp = LogUploader.this.mContext.getSharedPreferences("log.timestamp", 0);
            String val = sp.getString("log.requst", "");
            long time = System.currentTimeMillis();
            int times = 0;
            try {
                obj = new JSONObject(val);
                time = obj.getLong("time");
                times = obj.getInt("times");
            } catch (JSONException e) {
            }
            if (System.currentTimeMillis() - time >= 86400000) {
                time = System.currentTimeMillis();
                times = 0;
            } else if (times > 10) {
                return false;
            }
            obj = new JSONObject();
            try {
                obj.put("time", time);
                obj.put("times", times + 1);
                sp.edit().putString("log.requst", obj.toString()).commit();
            } catch (JSONException e2) {
                MyLog.v("JSONException on put " + e2.getMessage());
            }
            return true;
        }

        public void process() {
            try {
                if (checkLimit()) {
                    HashMap<String, String> headers = new HashMap();
                    headers.put("uid", ServiceConfig.getDeviceUUID());
                    headers.put("token", this.token);
                    headers.put("net", Network.getActiveConnPoint(LogUploader.this.mContext));
                    Network.uploadFile(this.url, headers, this.file, "file");
                }
                this.uploaded = true;
            } catch (IOException e) {
            }
        }

        public void postProcess() {
            if (!this.uploaded) {
                this.retryNum++;
                if (this.retryNum < 3) {
                    LogUploader.this.mTasks.add(this);
                }
            }
            if (this.uploaded || this.retryNum >= 3) {
                this.file.delete();
            }
            LogUploader.this.uploadIfNeed((long) ((1 << this.retryNum) * 1000));
        }
    }

    private LogUploader(Context context) {
        this.mContext = context;
        this.mTasks.add(new CleanUpTask());
        executeTask(0);
    }

    public static LogUploader getInstance(Context context) {
        if (sInstance == null) {
            synchronized (LogUploader.class) {
                if (sInstance == null) {
                    sInstance = new LogUploader(context);
                }
            }
        }
        sInstance.mContext = context;
        return sInstance;
    }

    public void upload(String url, String token, Date from, Date to, int maxlen, boolean force) {
        final int i = maxlen;
        final Date date = from;
        final Date date2 = to;
        final String str = url;
        final String str2 = token;
        final boolean z = force;
        this.mTasks.add(new Task() {
            File file;

            public void process() {
                if (SDCardUtils.isSDCardUseful()) {
                    try {
                        File dir = new File(LogUploader.this.mContext.getExternalFilesDir(null) + "/.logcache");
                        dir.mkdirs();
                        if (dir.isDirectory()) {
                            LogFilter filter = new LogFilter();
                            filter.setMaxLen(i);
                            this.file = filter.filter(LogUploader.this.mContext, date, date2, dir);
                        }
                    } catch (NullPointerException e) {
                    }
                }
            }

            public void postProcess() {
                if (this.file != null && this.file.exists()) {
                    LogUploader.this.mTasks.add(new UploadTask(str, str2, this.file, z));
                }
                LogUploader.this.uploadIfNeed(0);
            }
        });
        executeTask(0);
    }

    public void checkUpload() {
        cleanExpiredTask();
        uploadIfNeed(0);
    }

    private void cleanUp() {
        if (!SDCardUtils.isSDCardBusy() && !SDCardUtils.isSDCardUnavailable()) {
            try {
                File dir = new File(this.mContext.getExternalFilesDir(null) + "/.logcache");
                if (dir.exists() && dir.isDirectory()) {
                    for (File f : dir.listFiles()) {
                        f.delete();
                    }
                }
            } catch (NullPointerException e) {
            }
        }
    }

    private void uploadIfNeed(long delay) {
        Task task = (Task) this.mTasks.peek();
        if (task != null && task.canExcuteNow()) {
            executeTask(delay);
        }
    }

    private void executeTask(long delay) {
        if (!this.mTasks.isEmpty()) {
            TaskExecutor.execute(new SerializedAsyncTask() {
                SerializedAsyncTask current;

                public void process() {
                    Task task = (Task) LogUploader.this.mTasks.peek();
                    if (task != null && task.canExcuteNow()) {
                        if (LogUploader.this.mTasks.remove(task)) {
                            this.current = task;
                        }
                        if (this.current != null) {
                            this.current.process();
                        }
                    }
                }

                public void postProcess() {
                    if (this.current != null) {
                        this.current.postProcess();
                    }
                }
            }, delay);
        }
    }

    private void cleanExpiredTask() {
        while (!this.mTasks.isEmpty()) {
            Task task = (Task) this.mTasks.peek();
            if (task != null) {
                if (task.isExpired() || this.mTasks.size() > 6) {
                    MyLog.v("remove Expired task");
                    this.mTasks.remove(task);
                } else {
                    return;
                }
            }
        }
    }
}
