package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.push.service.OnlineConfigHelper;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.ConfigListType;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.XmPushActionCheckClientInfo;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;

public class OcVersionCheckJob extends Job {
    private Context context;

    public OcVersionCheckJob(Context context) {
        this.context = context;
    }

    public int getJobId() {
        return 2;
    }

    public void run() {
        OnlineConfig config = OnlineConfig.getInstance(this.context);
        XmPushActionCheckClientInfo checkMessage = new XmPushActionCheckClientInfo();
        checkMessage.setMiscConfigVersion(OnlineConfigHelper.getVersion(config, ConfigListType.MISC_CONFIG));
        checkMessage.setPluginConfigVersion(OnlineConfigHelper.getVersion(config, ConfigListType.PLUGIN_CONFIG));
        XmPushActionNotification notification = new XmPushActionNotification("-1", false);
        notification.setType(NotificationType.DailyCheckClientConfig.value);
        notification.setBinaryExtra(XmPushThriftSerializeUtils.convertThriftObjectToBytes(checkMessage));
        PushServiceClient.getInstance(this.context).sendMessage(notification, ActionType.Notification, null);
    }
}
