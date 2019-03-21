package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.PacketHelper;
import com.xiaomi.push.service.awake.AwakeDataHelper;
import com.xiaomi.push.service.awake.module.AwakeManager;
import com.xiaomi.push.service.awake.module.IProcessData;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import java.util.HashMap;

public class AppLayerProcessDataIml implements IProcessData {
    public void sendDirectly(Context context, HashMap<String, String> extra) {
        XmPushActionNotification notification = new XmPushActionNotification();
        notification.setAppId(AwakeManager.getInstance(context).getAppId());
        notification.setPackageName(AwakeManager.getInstance(context).getPackageName());
        notification.setType(NotificationType.AwakeAppResponse.value);
        notification.setId(PacketHelper.generatePacketID());
        notification.extra = extra;
        PushServiceClient.getInstance(context).sendMessage(notification, ActionType.Notification, true, null, true);
        MyLog.w("MoleInfo：　send data in app layer");
    }

    public void sendByTinyData(Context context, HashMap<String, String> extra) {
        MiTinyDataClient.upload("category_awake_app", "wake_up_app", 1, AwakeDataHelper.getString(extra));
        MyLog.w("MoleInfo：　send data in app layer");
    }

    public void shouldDoLast(Context context, HashMap<String, String> extra) {
        MyLog.w("MoleInfo：　" + AwakeDataHelper.obfuscateLogContent(extra));
        String awakeInfo = (String) extra.get("awake_info");
        if (String.valueOf(1007).equals((String) extra.get("event_type"))) {
            AwakeHelper.sendPingByWakeUpApp(context, awakeInfo);
        }
    }
}
