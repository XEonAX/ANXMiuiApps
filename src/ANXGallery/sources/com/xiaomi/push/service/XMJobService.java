package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.reflect.JavaCalls;
import com.xiaomi.push.service.timers.Alarm;

public class XMJobService extends Service {
    static Service sServiceInstance = null;
    private IBinder mJobBinder = null;

    @TargetApi(21)
    static class JobServiceImpl extends JobService {
        Binder binder;
        private Handler mHandler;

        private static class JobHandler extends Handler {
            JobService service;

            JobHandler(JobService service) {
                super(service.getMainLooper());
                this.service = service;
            }

            public void handleMessage(Message msg) {
                switch (msg.what) {
                    case 1:
                        JobParameters jobParams = msg.obj;
                        MyLog.w("Job finished " + jobParams.getJobId());
                        this.service.jobFinished(jobParams, false);
                        if (jobParams.getJobId() == 1) {
                            Alarm.registerPing(false);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }

        JobServiceImpl(Service base) {
            this.binder = null;
            this.binder = (Binder) JavaCalls.callMethod(this, "onBind", new Intent());
            JavaCalls.callMethod(this, "attachBaseContext", base);
        }

        public boolean onStartJob(JobParameters params) {
            MyLog.w("Job started " + params.getJobId());
            Intent intent = new Intent(this, XMPushService.class);
            intent.setAction("com.xiaomi.push.timer");
            intent.setPackage(getPackageName());
            startService(intent);
            if (this.mHandler == null) {
                this.mHandler = new JobHandler(this);
            }
            this.mHandler.sendMessage(Message.obtain(this.mHandler, 1, params));
            return true;
        }

        public boolean onStopJob(JobParameters params) {
            MyLog.w("Job stop " + params.getJobId());
            return false;
        }
    }

    public void onCreate() {
        super.onCreate();
        if (VERSION.SDK_INT >= 21) {
            this.mJobBinder = new JobServiceImpl(this).binder;
        }
        sServiceInstance = this;
    }

    public void onDestroy() {
        super.onDestroy();
        sServiceInstance = null;
    }

    static Service getRunningService() {
        return sServiceInstance;
    }

    public IBinder onBind(Intent intent) {
        if (this.mJobBinder != null) {
            return this.mJobBinder;
        }
        return new Binder();
    }
}
