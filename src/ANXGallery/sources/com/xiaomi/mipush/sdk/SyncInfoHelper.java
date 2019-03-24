package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.AppInfoUtils;
import com.xiaomi.channel.commonutils.android.DeviceInfo;
import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.android.PreferenceUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.CollectionUtils;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.push.service.PacketHelper;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.ConfigKey;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import miui.content.ExtraIntent;

public class SyncInfoHelper {
    public static void tryToSyncInfo(Context context) {
        SharedPreferences sp = context.getSharedPreferences("mipush_extra", 0);
        long lastSyncInfo = sp.getLong("last_sync_info", -1);
        long currentInSecond = System.currentTimeMillis() / 1000;
        long periodInSecond = (long) OnlineConfig.getInstance(context).getIntValue(ConfigKey.SyncInfoFrequency.getValue(), 1209600);
        if (lastSyncInfo == -1) {
            sp.edit().putLong("last_sync_info", currentInSecond).commit();
        } else if (Math.abs(currentInSecond - lastSyncInfo) > periodInSecond) {
            doSyncInfoAsync(context, true);
            sp.edit().putLong("last_sync_info", currentInSecond).commit();
        }
    }

    public static void doSyncInfoAsync(final Context context, final boolean md5Info) {
        ScheduledJobManager.getInstance(context).addOneShootJob(new Runnable() {
            public void run() {
                MyLog.w("do sync info");
                XmPushActionNotification syncMessage = new XmPushActionNotification(PacketHelper.generatePacketID(), false);
                AppInfoHolder appInfoHolder = AppInfoHolder.getInstance(context);
                syncMessage.setType(NotificationType.SyncInfo.value);
                syncMessage.setAppId(appInfoHolder.getAppID());
                syncMessage.setPackageName(context.getPackageName());
                syncMessage.extra = new HashMap();
                PreferenceUtils.putNotNullExtra(syncMessage.extra, "app_version", AppInfoUtils.getVersionName(context, context.getPackageName()));
                PreferenceUtils.putNotNullExtra(syncMessage.extra, "app_version_code", Integer.toString(AppInfoUtils.getVersionCode(context, context.getPackageName())));
                PreferenceUtils.putNotNullExtra(syncMessage.extra, "push_sdk_vn", "3_6_11");
                PreferenceUtils.putNotNullExtra(syncMessage.extra, "push_sdk_vc", Integer.toString(30611));
                PreferenceUtils.putNotNullExtra(syncMessage.extra, ExtraIntent.XIAOMI_KEY_AUTHTOKEN, appInfoHolder.getAppToken());
                if (!MIUIUtils.isGDPREnable()) {
                    String imeiMd5 = XMStringUtils.getMd5Digest(DeviceInfo.blockingGetIMEI(context));
                    String subImeisMd5 = DeviceInfo.blockingGetSubIMEISMd5(context);
                    if (!TextUtils.isEmpty(subImeisMd5)) {
                        imeiMd5 = imeiMd5 + "," + subImeisMd5;
                    }
                    if (!TextUtils.isEmpty(imeiMd5)) {
                        PreferenceUtils.putNotNullExtra(syncMessage.extra, "imei_md5", imeiMd5);
                    }
                }
                PreferenceUtils.putNotNullExtra(syncMessage.extra, "reg_id", appInfoHolder.getRegID());
                PreferenceUtils.putNotNullExtra(syncMessage.extra, "reg_secret", appInfoHolder.getRegSecret());
                PreferenceUtils.putNotNullExtra(syncMessage.extra, "accept_time", MiPushClient.getAcceptTime(context).replace(",", "-"));
                if (md5Info) {
                    PreferenceUtils.putNotNullExtra(syncMessage.extra, "aliases_md5", SyncInfoHelper.getMd5Summary(MiPushClient.getAllAlias(context)));
                    PreferenceUtils.putNotNullExtra(syncMessage.extra, "topics_md5", SyncInfoHelper.getMd5Summary(MiPushClient.getAllTopic(context)));
                    PreferenceUtils.putNotNullExtra(syncMessage.extra, "accounts_md5", SyncInfoHelper.getMd5Summary(MiPushClient.getAllUserAccount(context)));
                } else {
                    PreferenceUtils.putNotNullExtra(syncMessage.extra, "aliases", SyncInfoHelper.formatList(MiPushClient.getAllAlias(context)));
                    PreferenceUtils.putNotNullExtra(syncMessage.extra, "topics", SyncInfoHelper.formatList(MiPushClient.getAllTopic(context)));
                    PreferenceUtils.putNotNullExtra(syncMessage.extra, "user_accounts", SyncInfoHelper.formatList(MiPushClient.getAllUserAccount(context)));
                }
                PushServiceClient.getInstance(context).sendMessage(syncMessage, ActionType.Notification, false, null);
            }
        });
    }

    public static void saveInfo(Context context, XmPushActionNotification notification) {
        MyLog.w("need to update local info with: " + notification.getExtra());
        String acceptTime = (String) notification.getExtra().get("accept_time");
        if (acceptTime != null) {
            MiPushClient.removeAcceptTime(context);
            String[] acceptTimes = acceptTime.split("-");
            if (acceptTimes.length == 2) {
                MiPushClient.addAcceptTime(context, acceptTimes[0], acceptTimes[1]);
                if ("00:00".equals(acceptTimes[0]) && "00:00".equals(acceptTimes[1])) {
                    AppInfoHolder.getInstance(context).setPaused(true);
                } else {
                    AppInfoHolder.getInstance(context).setPaused(false);
                }
            }
        }
        String allAliases = (String) notification.getExtra().get("aliases");
        if (allAliases != null) {
            MiPushClient.removeAllAliases(context);
            if (!"".equals(allAliases)) {
                for (String alias : allAliases.split(",")) {
                    MiPushClient.addAlias(context, alias);
                }
            }
        }
        String allTopics = (String) notification.getExtra().get("topics");
        if (allTopics != null) {
            MiPushClient.removeAllTopics(context);
            if (!"".equals(allTopics)) {
                for (String topic : allTopics.split(",")) {
                    MiPushClient.addTopic(context, topic);
                }
            }
        }
        String allAccounts = (String) notification.getExtra().get("user_accounts");
        if (allAccounts != null) {
            MiPushClient.removeAllAccounts(context);
            if (!"".equals(allAccounts)) {
                for (String account : allAccounts.split(",")) {
                    MiPushClient.addAccount(context, account);
                }
            }
        }
    }

    private static String getMd5Summary(List<String> list) {
        String listStrMd5 = XMStringUtils.getMd5Digest(formatList(list));
        if (TextUtils.isEmpty(listStrMd5) || listStrMd5.length() <= 4) {
            return "";
        }
        return listStrMd5.substring(0, 4).toLowerCase();
    }

    private static String formatList(List<String> list) {
        if (CollectionUtils.isEmpty(list)) {
            return "";
        }
        List<String> listLocal = new ArrayList(list);
        Collections.sort(listLocal, Collator.getInstance(Locale.CHINA));
        String listStr = "";
        for (String str : listLocal) {
            if (!TextUtils.isEmpty(listStr)) {
                listStr = listStr + ",";
            }
            listStr = listStr + str;
        }
        return listStr;
    }
}
