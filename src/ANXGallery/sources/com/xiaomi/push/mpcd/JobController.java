package com.xiaomi.push.mpcd;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build.VERSION;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.push.mpcd.job.AccountCollectionJob;
import com.xiaomi.push.mpcd.job.AppActiveListCollectionJob;
import com.xiaomi.push.mpcd.job.AppListCollectionJob;
import com.xiaomi.push.mpcd.job.BatteryCollectionJob;
import com.xiaomi.push.mpcd.job.BluetoothCollectionJob;
import com.xiaomi.push.mpcd.job.BroadcastActionCollectionjob;
import com.xiaomi.push.mpcd.job.DeviceBaseInfoCollectionJob;
import com.xiaomi.push.mpcd.job.DeviceInfoCollectionJob;
import com.xiaomi.push.mpcd.job.StorageCollectionJob;
import com.xiaomi.push.mpcd.job.TopAppCollectionJob;
import com.xiaomi.push.mpcd.job.UploadJob;
import com.xiaomi.push.mpcd.job.WifiCollectionJob;
import com.xiaomi.push.mpcd.job.WifiDevicesMacCollectionJob;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.xmpush.thrift.ConfigKey;

public class JobController {
    private static volatile JobController instance;
    private Context context;

    public static JobController getInstance(Context context) {
        if (instance == null) {
            synchronized (JobController.class) {
                if (instance == null) {
                    instance = new JobController(context);
                }
            }
        }
        return instance;
    }

    private JobController(Context context) {
        this.context = context;
    }

    public void schedulerJob() {
        ScheduledJobManager.getInstance(this.context).addOneShootJob(new Runnable() {
            public void run() {
                JobController.this.trySchedulerCollectJob();
            }
        }, 30);
    }

    private void trySchedulerCollectJob() {
        ScheduledJobManager jobManager = ScheduledJobManager.getInstance(this.context);
        OnlineConfig onlineConfig = OnlineConfig.getInstance(this.context);
        SharedPreferences sp = this.context.getSharedPreferences("mipush_extra", 0);
        long currTs = System.currentTimeMillis();
        long firstTryTs = sp.getLong("first_try_ts", currTs);
        if (firstTryTs == currTs) {
            sp.edit().putLong("first_try_ts", currTs).commit();
        }
        if (Math.abs(currTs - firstTryTs) >= 172800000) {
            int period;
            boolean screenSizeSwitch = onlineConfig.getBooleanValue(ConfigKey.ScreenSizeCollectionSwitch.getValue(), true);
            boolean androidVnSwitch = onlineConfig.getBooleanValue(ConfigKey.AndroidVnCollectionSwitch.getValue(), true);
            boolean androidVcSwitch = onlineConfig.getBooleanValue(ConfigKey.AndroidVcCollectionSwitch.getValue(), true);
            boolean androidIdSwitch = onlineConfig.getBooleanValue(ConfigKey.AndroidIdCollectionSwitch.getValue(), true);
            boolean operatorSwitch = onlineConfig.getBooleanValue(ConfigKey.OperatorSwitch.getValue(), true);
            if (screenSizeSwitch || androidVnSwitch || androidVcSwitch || androidIdSwitch || operatorSwitch) {
                period = makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.DeviceInfoCollectionFrequency.getValue(), 1209600));
                jobManager.addRepeatJob(new DeviceInfoCollectionJob(this.context, period, screenSizeSwitch, androidVnSwitch, androidVcSwitch, androidIdSwitch, operatorSwitch), period, 30);
            }
            boolean macSwitch = onlineConfig.getBooleanValue(ConfigKey.MacCollectionSwitch.getValue(), true);
            boolean imsiSwitch = onlineConfig.getBooleanValue(ConfigKey.IMSICollectionSwitch.getValue(), true);
            boolean iccidSwitch = onlineConfig.getBooleanValue(ConfigKey.IccidCollectionSwitch.getValue(), true);
            boolean deviceIdSwtich = onlineConfig.getBooleanValue(ConfigKey.DeviceIdSwitch.getValue(), true);
            if (macSwitch || imsiSwitch || iccidSwitch || deviceIdSwtich) {
                period = makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.DeviceBaseInfoCollectionFrequency.getValue(), 1209600));
                jobManager.addRepeatJob(new DeviceBaseInfoCollectionJob(this.context, period, macSwitch, imsiSwitch, iccidSwitch, deviceIdSwtich), period, 30);
            }
            if (onlineConfig.getBooleanValue(ConfigKey.AppInstallListCollectionSwitch.getValue(), true)) {
                period = makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.AppInstallListCollectionFrequency.getValue(), 86400));
                jobManager.addRepeatJob(new AppListCollectionJob(this.context, period), period, 30);
            }
            if (VERSION.SDK_INT < 21) {
                if (onlineConfig.getBooleanValue(ConfigKey.AppActiveListCollectionSwitch.getValue(), true)) {
                    period = makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.AppActiveListCollectionFrequency.getValue(), 900));
                    jobManager.addRepeatJob(new AppActiveListCollectionJob(this.context, period), period, 30);
                }
            }
            if (onlineConfig.getBooleanValue(ConfigKey.StorageCollectionSwitch.getValue(), true)) {
                period = makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.StorageCollectionFrequency.getValue(), 86400));
                jobManager.addRepeatJob(new StorageCollectionJob(this.context, period), period, 30);
            }
            if (onlineConfig.getBooleanValue(ConfigKey.BluetoothCollectionSwitch.getValue(), true)) {
                period = makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.BluetoothCollectionFrequency.getValue(), 10800));
                jobManager.addRepeatJob(new BluetoothCollectionJob(this.context, period), period, 30);
            }
            if (onlineConfig.getBooleanValue(ConfigKey.AccountCollectionSwitch.getValue(), true)) {
                period = makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.AccountCollectionFrequency.getValue(), 604800));
                jobManager.addRepeatJob(new AccountCollectionJob(this.context, period), period, 30);
            }
            if (onlineConfig.getBooleanValue(ConfigKey.WifiCollectionSwitch.getValue(), true)) {
                period = makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.WifiCollectionFrequency.getValue(), 900));
                jobManager.addRepeatJob(new WifiCollectionJob(this.context, period), period, 30);
            }
            if (onlineConfig.getBooleanValue(ConfigKey.TopAppCollectionSwitch.getValue(), true)) {
                period = makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.TopAppCollectionFrequency.getValue(), 300));
                jobManager.addRepeatJob(new TopAppCollectionJob(this.context, period), period, 30);
            }
            if (onlineConfig.getBooleanValue(ConfigKey.BroadcastActionCollectionSwitch.getValue(), true)) {
                period = makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.BroadcastActionCollectionFrequency.getValue(), 900));
                jobManager.addRepeatJob(new BroadcastActionCollectionjob(this.context, period), period, 30);
            }
            if (onlineConfig.getBooleanValue(ConfigKey.WifiDevicesMacCollectionSwitch.getValue(), false)) {
                period = makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.WifiDevicesMacCollectionFrequency.getValue(), 900));
                jobManager.addRepeatJob(new WifiDevicesMacCollectionJob(this.context, period), period, 30);
            }
            if (onlineConfig.getBooleanValue(ConfigKey.ActivityTSSwitch.getValue(), false)) {
                scheduleActivityTSJob();
            }
            if (onlineConfig.getBooleanValue(ConfigKey.UploadSwitch.getValue(), true)) {
                ScheduledJobManager scheduledJobManager = jobManager;
                scheduledJobManager.addRepeatJob(new UploadJob(this.context), makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.UploadFrequency.getValue(), 86400)), 60);
            }
            if (onlineConfig.getBooleanValue(ConfigKey.BatteryCollectionSwitch.getValue(), false)) {
                period = makeSurePeriodNotTooSmall(onlineConfig.getIntValue(ConfigKey.BatteryCollectionFrequency.getValue(), 3600));
                jobManager.addRepeatJob(new BatteryCollectionJob(this.context, period), period, 30);
            }
        }
    }

    private int makeSurePeriodNotTooSmall(int period) {
        return Math.max(60, period);
    }

    private boolean scheduleActivityTSJob() {
        if (VERSION.SDK_INT < 14) {
            return false;
        }
        try {
            Application application;
            if (this.context instanceof Application) {
                application = this.context;
            } else {
                application = (Application) this.context.getApplicationContext();
            }
            application.registerActivityLifecycleCallbacks(new ActivityLifecycleCallbacksImpl(this.context, String.valueOf(System.currentTimeMillis() / 1000)));
            return true;
        } catch (Throwable e) {
            MyLog.e(e);
            return false;
        }
    }
}
