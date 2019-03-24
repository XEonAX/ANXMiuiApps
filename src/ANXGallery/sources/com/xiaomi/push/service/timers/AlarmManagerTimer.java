package com.xiaomi.push.service.timers;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.reflect.JavaCalls;
import com.xiaomi.push.service.PushConstants;
import com.xiaomi.smack.SmackConfiguration;
import miui.app.constants.ThemeManagerConstants;

class AlarmManagerTimer implements IAlarm {
    protected Context mContext = null;
    private volatile long mNextPingTs = 0;
    private PendingIntent mPi = null;

    public AlarmManagerTimer(Context context) {
        this.mContext = context;
    }

    public void register(Intent intent, long triggerTime) {
        AlarmManager mgr = (AlarmManager) this.mContext.getSystemService(ThemeManagerConstants.COMPONENT_CODE_ALARM);
        this.mPi = PendingIntent.getBroadcast(this.mContext, 0, intent, 0);
        if (VERSION.SDK_INT >= 23) {
            JavaCalls.callMethod(mgr, "setExactAndAllowWhileIdle", Integer.valueOf(0), Long.valueOf(triggerTime), this.mPi);
        } else if (VERSION.SDK_INT >= 19) {
            setExact(mgr, triggerTime, this.mPi);
        } else {
            mgr.set(0, triggerTime, this.mPi);
        }
        MyLog.v("register timer " + triggerTime);
    }

    private void setExact(AlarmManager mgr, long triggerAtMillis, PendingIntent operation) {
        try {
            AlarmManager.class.getMethod("setExact", new Class[]{Integer.TYPE, Long.TYPE, PendingIntent.class}).invoke(mgr, new Object[]{Integer.valueOf(0), Long.valueOf(triggerAtMillis), operation});
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }

    long getPingInteval() {
        return (long) SmackConfiguration.getPingInteval();
    }

    public void registerPing(boolean firstPing) {
        long interval = getPingInteval();
        if (firstPing || this.mNextPingTs != 0) {
            if (firstPing) {
                stop();
            }
            if (firstPing || this.mNextPingTs == 0) {
                this.mNextPingTs = System.currentTimeMillis() + (interval - (SystemClock.elapsedRealtime() % interval));
            } else {
                this.mNextPingTs += interval;
                if (this.mNextPingTs < System.currentTimeMillis()) {
                    this.mNextPingTs = System.currentTimeMillis() + interval;
                }
            }
            Intent intent = new Intent(PushConstants.ACTION_PING_TIMER);
            intent.setPackage(this.mContext.getPackageName());
            register(intent, this.mNextPingTs);
        }
    }

    public void stop() {
        if (this.mPi != null) {
            try {
                ((AlarmManager) this.mContext.getSystemService(ThemeManagerConstants.COMPONENT_CODE_ALARM)).cancel(this.mPi);
                this.mPi = null;
                MyLog.v("unregister timer");
            } catch (Exception e) {
                this.mPi = null;
                MyLog.v("unregister timer");
            } catch (Throwable th) {
                this.mPi = null;
                MyLog.v("unregister timer");
                this.mNextPingTs = 0;
            }
            this.mNextPingTs = 0;
        }
        this.mNextPingTs = 0;
    }

    public boolean isAlive() {
        return this.mNextPingTs != 0;
    }
}
