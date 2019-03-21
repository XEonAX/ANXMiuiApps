package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.android.PreferenceUtils;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.push.service.MIIDManager;
import com.xiaomi.push.service.PacketHelper;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import java.util.HashMap;

public class SyncMIIDJob extends Job {
    private Context mContext;

    public SyncMIIDJob(Context context) {
        this.mContext = context;
    }

    public int getJobId() {
        return 10;
    }

    public void run() {
        XmPushActionNotification syncMessage = new XmPushActionNotification(PacketHelper.generatePacketID(), false);
        AppInfoHolder appInfoHolder = AppInfoHolder.getInstance(this.mContext);
        syncMessage.setType(NotificationType.SyncMIID.value);
        syncMessage.setAppId(appInfoHolder.getAppID());
        syncMessage.setPackageName(this.mContext.getPackageName());
        HashMap<String, String> extra = new HashMap();
        PreferenceUtils.putNotNullExtra(extra, "miid", MIIDManager.getInstance(this.mContext).getMIID());
        syncMessage.extra = extra;
        PushServiceClient.getInstance(this.mContext).sendMessage(syncMessage, ActionType.Notification, true, null);
    }
}
