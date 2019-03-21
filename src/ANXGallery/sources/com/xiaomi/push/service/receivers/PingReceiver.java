package com.xiaomi.push.service.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.PushConstants;
import com.xiaomi.push.service.ServiceClient;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.timers.Alarm;

public class PingReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        MyLog.v(intent.getPackage() + " is the package name");
        if (!PushConstants.ACTION_PING_TIMER.equals(intent.getAction())) {
            MyLog.w("cancel the old ping timer");
            Alarm.stop();
        } else if (TextUtils.equals(context.getPackageName(), intent.getPackage())) {
            MyLog.v("Ping XMChannelService on timer");
            try {
                Intent serviceIntent = new Intent(context, XMPushService.class);
                serviceIntent.putExtra("time_stamp", System.currentTimeMillis());
                serviceIntent.setAction("com.xiaomi.push.timer");
                ServiceClient.getInstance(context).startServiceSafely(serviceIntent);
            } catch (Throwable e) {
                MyLog.e(e);
            }
        }
    }
}
