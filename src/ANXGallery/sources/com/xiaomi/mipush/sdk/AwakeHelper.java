package com.xiaomi.mipush.sdk;

import android.app.Activity;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.push.service.PacketHelper;
import com.xiaomi.push.service.awake.module.AwakeManager;
import com.xiaomi.push.service.awake.module.HelpType;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.ConfigKey;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.util.HashMap;
import org.apache.thrift.TBase;

public class AwakeHelper {
    public static void sendPingByWakeUpApp(Context context, String awakeInfo) {
        MyLog.w("aw_ping : send aw_ping cmd and content to push service from 3rd app");
        HashMap<String, String> extra = new HashMap();
        extra.put("awake_info", awakeInfo);
        extra.put("event_type", String.valueOf(9999));
        extra.put("description", "ping message");
        XmPushActionNotification notification = new XmPushActionNotification();
        notification.setAppId(AppInfoHolder.getInstance(context).getAppID());
        notification.setPackageName(context.getPackageName());
        notification.setType(NotificationType.AwakeAppResponse.value);
        notification.setId(PacketHelper.generatePacketID());
        notification.extra = extra;
        doSendPingByWakedUpApp(context, notification);
    }

    private static void doSendPingByWakedUpApp(final Context context, final XmPushActionNotification notification) {
        boolean pingSwitch = OnlineConfig.getInstance(context).getBooleanValue(ConfigKey.AwakeAppPingSwitch.getValue(), false);
        int frequency = OnlineConfig.getInstance(context).getIntValue(ConfigKey.AwakeAppPingFrequency.getValue(), 0);
        if (frequency >= 0 && frequency < 30) {
            MyLog.v("aw_ping: frquency need > 30s.");
            frequency = 30;
        }
        if (frequency < 0) {
            pingSwitch = false;
        }
        if (!MIUIUtils.isMIUI()) {
            sendAwakeAppPingMessage(context, notification, pingSwitch, frequency);
        } else if (pingSwitch) {
            ScheduledJobManager.getInstance(context.getApplicationContext()).addRepeatJob(new Job() {
                public int getJobId() {
                    return 22;
                }

                public void run() {
                    if (notification != null) {
                        notification.setId(PacketHelper.generatePacketID());
                        PushServiceClient.getInstance(context.getApplicationContext()).sendMessage(notification, ActionType.Notification, true, null, true);
                    }
                }
            }, frequency);
        }
    }

    public static void doAWork(Context context, Intent intent, Uri uri) {
        if (context != null) {
            PushServiceClient.getInstance(context).awakePushService();
            if (AwakeManager.getInstance(context.getApplicationContext()).getSendDataIml() == null) {
                AwakeManager.getInstance(context.getApplicationContext()).setPackageInfo(AppInfoHolder.getInstance(context.getApplicationContext()).getAppID(), context.getPackageName(), OnlineConfig.getInstance(context.getApplicationContext()).getIntValue(ConfigKey.AwakeInfoUploadWaySwitch.getValue(), 0), new AppLayerProcessDataIml());
            }
            if ((context instanceof Activity) && intent != null) {
                AwakeManager.getInstance(context.getApplicationContext()).sendResult(HelpType.ACTIVITY, context, intent, null);
            } else if (!(context instanceof Service) || intent == null) {
                if (uri != null && !TextUtils.isEmpty(uri.toString())) {
                    AwakeManager.getInstance(context.getApplicationContext()).sendResult(HelpType.PROVIDER, context, null, uri.toString());
                }
            } else if ("com.xiaomi.mipush.sdk.WAKEUP".equals(intent.getAction())) {
                AwakeManager.getInstance(context.getApplicationContext()).sendResult(HelpType.SERVICE_COMPONENT, context, intent, null);
            } else {
                AwakeManager.getInstance(context.getApplicationContext()).sendResult(HelpType.SERVICE_ACTION, context, intent, null);
            }
        }
    }

    public static final <T extends TBase<T, ?>> void sendAwakeAppPingMessage(Context context, T packet, boolean pingSwitch, int frequency) {
        byte[] msgBytes = XmPushThriftSerializeUtils.convertThriftObjectToBytes(packet);
        if (msgBytes == null) {
            MyLog.w("send message fail, because msgBytes is null.");
            return;
        }
        Intent intent = new Intent();
        intent.setAction("action_help_ping");
        intent.putExtra("extra_help_ping_switch", pingSwitch);
        intent.putExtra("extra_help_ping_frequency", frequency);
        intent.putExtra("mipush_payload", msgBytes);
        intent.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
        PushServiceClient.getInstance(context).sendDataCommon(intent);
    }

    public static void doAwAppLogic(Context context, String appId, int cmd, String awkInfo) {
        XmPushActionNotification notification = new XmPushActionNotification();
        notification.setAppId(appId);
        notification.setExtra(new HashMap());
        notification.getExtra().put("extra_aw_app_online_cmd", String.valueOf(cmd));
        notification.getExtra().put("extra_help_aw_info", awkInfo);
        notification.setId(PacketHelper.generatePacketID());
        byte[] msgBytes = XmPushThriftSerializeUtils.convertThriftObjectToBytes(notification);
        if (msgBytes == null) {
            MyLog.w("send message fail, because msgBytes is null.");
            return;
        }
        Intent intent = new Intent();
        intent.setAction("action_aw_app_logic");
        intent.putExtra("mipush_payload", msgBytes);
        PushServiceClient.getInstance(context).sendDataCommon(intent);
    }
}
