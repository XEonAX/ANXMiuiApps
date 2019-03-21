package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.channel.commonutils.android.DeviceInfo;
import com.xiaomi.channel.commonutils.android.PreferenceUtils;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.push.service.MIIDManager;
import com.xiaomi.push.service.MIIDManager.MIIDUpdatedCallback;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.push.service.PacketHelper;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.ConfigKey;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import java.util.HashMap;

public class SyncMIIDHelper implements MIIDUpdatedCallback {
    public SyncMIIDHelper(Context mContext) {
        MIIDManager.getInstance(mContext).addMIIDUpdateCallback(this);
    }

    public void keepToSyncMIID(Context context) {
        SharedPreferences sp = context.getSharedPreferences("mipush_extra", 0);
        long lastSyncMIIDTimeStamp = sp.getLong("last_sync_miid_time", -1);
        long currentInSecond = System.currentTimeMillis() / 1000;
        int periodInSecond = OnlineConfig.getInstance(context).getIntValue(ConfigKey.SyncMIIDFrequency.getValue(), 21600);
        if (lastSyncMIIDTimeStamp == -1) {
            sp.edit().putLong("last_sync_miid_time", currentInSecond).commit();
        } else if (Math.abs(currentInSecond - lastSyncMIIDTimeStamp) > ((long) periodInSecond)) {
            ScheduledJobManager.getInstance(context).addRepeatJob(new SyncMIIDJob(context), periodInSecond);
            sp.edit().putLong("last_sync_miid_time", currentInSecond).commit();
        }
    }

    private void sendUpdateMIIDNotification(String miid, Context context) {
        XmPushActionNotification notification = new XmPushActionNotification();
        notification.setType(NotificationType.ClientMIIDUpdate.value);
        notification.setAppId(AppInfoHolder.getInstance(context).getAppID());
        notification.setId(PacketHelper.generatePacketID());
        HashMap<String, String> extras = new HashMap();
        PreferenceUtils.putNotNullExtra(extras, "miid", miid);
        notification.setExtra(extras);
        int spaceId = DeviceInfo.getSpaceId();
        if (spaceId >= 0) {
            notification.getExtra().put("space_id", Integer.toString(spaceId));
        }
        PushServiceClient.getInstance(context).sendMessage(notification, ActionType.Notification, true, null);
    }

    public void onMIIDUpdate(String miid, Context context) {
        sendUpdateMIIDNotification(miid, context);
    }
}
