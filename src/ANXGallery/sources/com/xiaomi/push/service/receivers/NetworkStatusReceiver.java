package com.xiaomi.push.service.receivers;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.mipush.sdk.AppInfoHolder;
import com.xiaomi.mipush.sdk.COSPushHelper;
import com.xiaomi.mipush.sdk.HWPushHelper;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.mipush.sdk.OperatePushHelper;
import com.xiaomi.mipush.sdk.PushServiceClient;
import com.xiaomi.mipush.sdk.RetryType;
import com.xiaomi.push.service.ServiceClient;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class NetworkStatusReceiver extends BroadcastReceiver {
    private static boolean isRegister = false;
    private static BlockingQueue<Runnable> queue = new LinkedBlockingQueue();
    private static int sCorePoolSize = 1;
    private static int sKeepAliveTime = 2;
    private static int sMaximumPoolSize = 1;
    private static ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(sCorePoolSize, sMaximumPoolSize, (long) sKeepAliveTime, TimeUnit.SECONDS, queue);
    private boolean isXmlRegister;

    public NetworkStatusReceiver() {
        this.isXmlRegister = false;
        this.isXmlRegister = true;
    }

    public NetworkStatusReceiver(Object dynamicRegister) {
        this.isXmlRegister = false;
        isRegister = true;
    }

    public static boolean isRegister() {
        return isRegister;
    }

    public void onReceive(final Context context, Intent intent) {
        if (!this.isXmlRegister) {
            threadPoolExecutor.execute(new Runnable() {
                public void run() {
                    NetworkStatusReceiver.this.notifyNetworkChanged(context);
                }
            });
        }
    }

    private void notifyNetworkChanged(Context context) {
        if (!(PushServiceClient.getInstance(context).shouldUseMIUIPush() || !AppInfoHolder.getInstance(context).appRegistered() || AppInfoHolder.getInstance(context).invalidated())) {
            try {
                Intent serviceIntent = new Intent();
                serviceIntent.setComponent(new ComponentName(context, "com.xiaomi.push.service.XMPushService"));
                serviceIntent.setAction("com.xiaomi.push.network_status_changed");
                ServiceClient.getInstance(context).startServiceSafely(serviceIntent);
            } catch (Throwable e) {
                MyLog.e(e);
            }
        }
        if (Network.hasNetwork(context) && PushServiceClient.getInstance(context).isProvisioned()) {
            PushServiceClient.getInstance(context).processRegisterTask();
        }
        if (Network.hasNetwork(context)) {
            if ("syncing".equals(OperatePushHelper.getInstance(context).getSyncStatus(RetryType.DISABLE_PUSH))) {
                MiPushClient.disablePush(context);
            }
            if ("syncing".equals(OperatePushHelper.getInstance(context).getSyncStatus(RetryType.ENABLE_PUSH))) {
                MiPushClient.enablePush(context);
            }
            if ("syncing".equals(OperatePushHelper.getInstance(context).getSyncStatus(RetryType.UPLOAD_HUAWEI_TOKEN))) {
                MiPushClient.syncAssemblePushToken(context);
            }
            if ("syncing".equals(OperatePushHelper.getInstance(context).getSyncStatus(RetryType.UPLOAD_FCM_TOKEN))) {
                MiPushClient.syncAssembleFCMPushToken(context);
            }
            if ("syncing".equals(OperatePushHelper.getInstance(context).getSyncStatus(RetryType.UPLOAD_COS_TOKEN))) {
                MiPushClient.syncAssembleCOSPushToken(context);
            }
            if (HWPushHelper.needConnect() && HWPushHelper.shouldTryConnect(context)) {
                HWPushHelper.setConnectTime(context);
                HWPushHelper.registerHuaWeiAssemblePush(context);
            }
            COSPushHelper.doInNetworkChange(context);
        }
    }
}
