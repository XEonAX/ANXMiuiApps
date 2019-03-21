package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.awake.AwakeDataHelper;
import com.xiaomi.push.service.awake.module.AwakeManager;
import com.xiaomi.push.service.awake.module.IProcessData;
import com.xiaomi.tinyData.TinyDataManager;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.util.HashMap;

public class PushLayerProcessIml implements IProcessData {
    public void sendDirectly(Context context, HashMap<String, String> extra) {
        XmPushActionNotification notification = new XmPushActionNotification();
        notification.setAppId(AwakeManager.getInstance(context).getAppId());
        notification.setPackageName(AwakeManager.getInstance(context).getPackageName());
        notification.setType(NotificationType.AwakeAppResponse.value);
        notification.setId(PacketHelper.generatePacketID());
        notification.extra = extra;
        byte[] newPayload = XmPushThriftSerializeUtils.convertThriftObjectToBytes(MIPushHelper.generateRequestContainer(notification.getPackageName(), notification.getAppId(), notification, ActionType.Notification));
        if (context instanceof XMPushService) {
            MyLog.w("MoleInfo : send data directly in pushLayer " + notification.getId());
            ((XMPushService) context).sendMessage(context.getPackageName(), newPayload, true);
            return;
        }
        MyLog.w("MoleInfo : context is not correct in pushLayer " + notification.getId());
    }

    public void sendByTinyData(Context context, HashMap<String, String> extra) {
        TinyDataManager manager = TinyDataManager.getInstance(context);
        if (manager != null) {
            manager.upload("category_awake_app", "wake_up_app", 1, AwakeDataHelper.getString(extra));
        }
    }

    public void shouldDoLast(Context context, HashMap<String, String> extra) {
        MyLog.w("MoleInfo：　" + AwakeDataHelper.obfuscateLogContent(extra));
    }
}
