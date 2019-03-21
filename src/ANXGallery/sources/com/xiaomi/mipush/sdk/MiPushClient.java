package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.AppInfoUtils;
import com.xiaomi.channel.commonutils.android.DeviceInfo;
import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.android.PermissionUtils;
import com.xiaomi.channel.commonutils.android.PreferenceUtils;
import com.xiaomi.channel.commonutils.android.SharedPrefsCompat;
import com.xiaomi.channel.commonutils.android.SystemUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.clientreport.manager.ClientReportClient;
import com.xiaomi.mipush.sdk.MiTinyDataClient.MiTinyDataClientImp;
import com.xiaomi.push.mpcd.CDActionProviderHolder;
import com.xiaomi.push.mpcd.CDEntrance;
import com.xiaomi.push.service.GeoFenceUtils;
import com.xiaomi.push.service.MIIDManager;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.push.service.PacketHelper;
import com.xiaomi.push.service.clientReport.MIPushEventDataProcessor;
import com.xiaomi.push.service.clientReport.MIPushPerfDataProcessor;
import com.xiaomi.push.service.clientReport.PushClientReportHelper;
import com.xiaomi.push.service.clientReport.PushClientReportHelper.Uploader;
import com.xiaomi.push.service.receivers.NetworkStatusReceiver;
import com.xiaomi.push.service.xmpush.Command;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import com.xiaomi.xmpush.thrift.ConfigKey;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.PushMetaInfo;
import com.xiaomi.xmpush.thrift.RegistrationReason;
import com.xiaomi.xmpush.thrift.XmPushActionCommand;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushActionRegistration;
import com.xiaomi.xmpush.thrift.XmPushActionSubscription;
import com.xiaomi.xmpush.thrift.XmPushActionUnRegistration;
import com.xiaomi.xmpush.thrift.XmPushActionUnSubscription;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public abstract class MiPushClient {
    private static boolean isCrashHandlerSuggested = false;
    private static SyncMIIDHelper mSyncMIIDHelper;
    private static Context sContext;
    private static long sCurMsgId = System.currentTimeMillis();

    @Deprecated
    public static abstract class MiPushClientCallback {
        private String category;

        protected String getCategory() {
            return this.category;
        }

        public void onReceiveMessage(String content, String alias, String topic, boolean hasNotified) {
        }

        public void onReceiveMessage(MiPushMessage message) {
        }

        public void onInitializeResult(long resultCode, String reason, String regID) {
        }

        public void onSubscribeResult(long resultCode, String reason, String topic) {
        }

        public void onUnsubscribeResult(long resultCode, String reason, String topic) {
        }

        public void onCommandResult(String command, long resultCode, String reason, List<String> list) {
        }
    }

    public static boolean shouldUseMIUIPush(Context context) {
        return PushServiceClient.getInstance(context).shouldUseMIUIPush();
    }

    public static void registerPush(Context context, String appID, String appToken) {
        registerPush(context, appID, appToken, new PushConfiguration());
    }

    public static void registerPush(final Context context, final String appID, final String appToken, PushConfiguration pushConfiguration) {
        if (!NetworkStatusReceiver.isRegister()) {
            registerNetworkReceiver(context);
        }
        AssemblePushCollectionsManager.getInstance(context).setConfiguration(pushConfiguration);
        enableGeo(context, pushConfiguration.getGeoEnable());
        AggregationSDKMonitor.getRegisterPushCallStack();
        ScheduledJobManager.getInstance(context).addOneShootJob(new Runnable() {
            public void run() {
                if (MiPushClient.checkPermission(context)) {
                    MiPushClient.initialize(context, appID, appToken, null);
                    return;
                }
                MyLog.e("Because of lack of necessary information, mi push can't be initialized");
                ArrayList<String> permissions = new ArrayList();
                if (!PermissionUtils.checkSelfPermission(context, "android.permission.READ_PHONE_STATE")) {
                    permissions.add("android.permission.READ_PHONE_STATE");
                }
                if (!PermissionUtils.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                    permissions.add("android.permission.WRITE_EXTERNAL_STORAGE");
                }
                if (!permissions.isEmpty()) {
                    String[] array = new String[permissions.size()];
                    permissions.toArray(array);
                    Intent intent = new Intent();
                    intent.setAction("com.xiaomi.mipush.ERROR");
                    intent.setPackage(context.getPackageName());
                    intent.putExtra("message_type", 5);
                    intent.putExtra("error_type", "error_lack_of_permission");
                    intent.putExtra("error_message", array);
                    context.sendBroadcast(intent);
                }
            }
        });
    }

    private static boolean checkPermission(Context context) {
        if (context == null) {
            return false;
        }
        if (MIUIUtils.isMIUI() || "com.xiaomi.xmsf".equals(context.getPackageName())) {
            return true;
        }
        if (context.getApplicationInfo().targetSdkVersion < 23 || VERSION.SDK_INT < 23) {
            String imei = DeviceInfo.blockingGetIMEI(context);
            String sn = DeviceInfo.getSerialNum();
            if (TextUtils.isEmpty(imei) && TextUtils.isEmpty(sn)) {
                return false;
            }
            return true;
        } else if (PermissionUtils.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") || PermissionUtils.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            return true;
        } else {
            return false;
        }
    }

    private static void registerNetworkReceiver(Context context) {
        try {
            IntentFilter filter = new IntentFilter();
            filter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            filter.addCategory("android.intent.category.DEFAULT");
            context.getApplicationContext().registerReceiver(new NetworkStatusReceiver(null), filter);
        } catch (Throwable t) {
            MyLog.e(t);
        }
    }

    @Deprecated
    public static void initialize(Context context, String appID, String appToken, MiPushClientCallback callback) {
        checkNotNull(context, "context");
        checkNotNull(appID, "appID");
        checkNotNull(appToken, "appToken");
        sContext = context.getApplicationContext();
        if (sContext == null) {
            sContext = context;
        }
        if (callback != null) {
            PushMessageHandler.addPushCallbackClass(callback);
        }
        if (SystemUtils.isDebuggable(context)) {
            ManifestChecker.asynCheckManifest(context);
        }
        boolean isEnvChange = AppInfoHolder.getInstance(sContext).getEnvType() != Constants.getEnvType();
        if (isEnvChange || shouldSendRegRequest(sContext)) {
            String regResource;
            if (isEnvChange || !AppInfoHolder.getInstance(sContext).appRegistered(appID, appToken) || AppInfoHolder.getInstance(sContext).invalidated()) {
                regResource = XMStringUtils.generateRandomString(6);
                AppInfoHolder.getInstance(sContext).clear();
                AppInfoHolder.getInstance(sContext).setEnvType(Constants.getEnvType());
                AppInfoHolder.getInstance(sContext).putAppIDAndToken(appID, appToken, regResource);
                MiTinyDataClientImp.getInstance().processPendingList("com.xiaomi.xmpushsdk.tinydataPending.appId");
                clearExtras(sContext);
                XmPushActionRegistration regMessage = new XmPushActionRegistration();
                regMessage.setId(PacketHelper.generatePacketID());
                regMessage.setAppId(appID);
                regMessage.setToken(appToken);
                regMessage.setPackageName(context.getPackageName());
                regMessage.setDeviceId(regResource);
                regMessage.setAppVersion(AppInfoUtils.getVersionName(context, context.getPackageName()));
                regMessage.setAppVersionCode(AppInfoUtils.getVersionCode(context, context.getPackageName()));
                regMessage.setPushSdkVersionName("3_6_11");
                regMessage.setPushSdkVersionCode(30611);
                regMessage.setAndroidId(DeviceInfo.getAndroidId(sContext));
                regMessage.setReason(RegistrationReason.Init);
                if (!MIUIUtils.isGDPREnable()) {
                    String imei = DeviceInfo.quicklyGetIMEI(sContext);
                    String subImeis = DeviceInfo.quicklyGetSubIMEIS(sContext);
                    if (!TextUtils.isEmpty(imei)) {
                        if (MIUIUtils.isNotMIUI()) {
                            if (!TextUtils.isEmpty(subImeis)) {
                                imei = imei + "," + subImeis;
                            }
                            regMessage.setImei(imei);
                        }
                        regMessage.setImeiMd5(XMStringUtils.getMd5Digest(imei) + "," + DeviceInfo.quicklyGetSubIMEISMd5(sContext));
                    }
                }
                regMessage.setSerial(DeviceInfo.getSerialNum());
                int spaceId = DeviceInfo.getSpaceId();
                if (spaceId >= 0) {
                    regMessage.setSpaceId(spaceId);
                }
                PushServiceClient.getInstance(sContext).register(regMessage, isEnvChange);
                AggregationSDKMonitor.uploadCallStack(context);
                context.getSharedPreferences("mipush_extra", 4).getBoolean("mipush_registed", true);
            } else {
                XmPushActionNotification notification;
                if (1 == PushMessageHelper.getPushMode(context)) {
                    checkNotNull(callback, "callback");
                    callback.onInitializeResult(0, null, AppInfoHolder.getInstance(context).getRegID());
                } else {
                    List<String> cmdArgs = new ArrayList();
                    cmdArgs.add(AppInfoHolder.getInstance(context).getRegID());
                    PushMessageHelper.sendCommandMessageBroadcast(sContext, PushMessageHelper.generateCommandMessage(Command.COMMAND_REGISTER.value, cmdArgs, 0, null, null));
                }
                PushServiceClient.getInstance(context).awakePushService();
                if (AppInfoHolder.getInstance(sContext).checkVersionNameChanged()) {
                    notification = new XmPushActionNotification();
                    notification.setAppId(AppInfoHolder.getInstance(context).getAppID());
                    notification.setType("client_info_update");
                    notification.setId(PacketHelper.generatePacketID());
                    notification.extra = new HashMap();
                    notification.extra.put("app_version", AppInfoUtils.getVersionName(sContext, sContext.getPackageName()));
                    notification.extra.put("app_version_code", Integer.toString(AppInfoUtils.getVersionCode(sContext, sContext.getPackageName())));
                    notification.extra.put("push_sdk_vn", "3_6_11");
                    notification.extra.put("push_sdk_vc", Integer.toString(30611));
                    regResource = AppInfoHolder.getInstance(sContext).getRegResource();
                    if (!TextUtils.isEmpty(regResource)) {
                        notification.extra.put("deviceid", regResource);
                    }
                    PushServiceClient.getInstance(context).sendMessage(notification, ActionType.Notification, false, null);
                    AggregationSDKMonitor.uploadCallStack(context);
                }
                if (!PreferenceUtils.getSettingBoolean(sContext, "update_devId", false)) {
                    updateIMEI();
                    PreferenceUtils.setSettingBoolean(sContext, "update_devId", true);
                }
                String vdevid = DeviceInfo.checkVirtDevId(context);
                if (!TextUtils.isEmpty(vdevid)) {
                    XmPushActionCommand cmd = new XmPushActionCommand();
                    cmd.setId(PacketHelper.generatePacketID());
                    cmd.setAppId(appID);
                    cmd.setCmdName(Command.COMMAND_CHK_VDEVID.value);
                    List<String> args = new ArrayList();
                    args.add(DeviceInfo.getVirtDevId(context));
                    args.add(vdevid);
                    args.add(Build.MODEL != null ? Build.MODEL : "");
                    args.add(Build.BOARD != null ? Build.BOARD : "");
                    cmd.setCmdArgs(args);
                    PushServiceClient.getInstance(context).sendMessage(cmd, ActionType.Command, false, null);
                }
                if (shouldUseMIUIPush(sContext) && shouldPullNotification(sContext)) {
                    notification = new XmPushActionNotification();
                    notification.setAppId(AppInfoHolder.getInstance(sContext).getAppID());
                    notification.setType(NotificationType.PullOfflineMessage.value);
                    notification.setId(PacketHelper.generatePacketID());
                    notification.setRequireAck(false);
                    PushServiceClient.getInstance(sContext).sendMessage(notification, ActionType.Notification, false, null, false);
                    addPullNotificationTime(sContext);
                }
            }
            addRegRequestTime(sContext);
            scheduleOcVersionCheckJob();
            scheduleGeoFenceLocUploadJobs();
            scheduleDataCollectionJobs(context);
            initEventPerfLogic(context);
            SyncInfoHelper.tryToSyncInfo(sContext);
            forceHandleCrash();
            if (!sContext.getPackageName().equals("com.xiaomi.xmsf")) {
                Logger.setLogger(sContext, Logger.getUserLogger());
                MyLog.setLogLevel(2);
            }
            try {
                if (mSyncMIIDHelper == null) {
                    mSyncMIIDHelper = new SyncMIIDHelper(sContext);
                }
                mSyncMIIDHelper.keepToSyncMIID(sContext);
            } catch (Exception e) {
                MyLog.e(e.toString());
            } catch (Throwable e2) {
                MyLog.e(e2);
                return;
            }
            if ("syncing".equals(OperatePushHelper.getInstance(sContext).getSyncStatus(RetryType.DISABLE_PUSH))) {
                disablePush(sContext);
            }
            if ("syncing".equals(OperatePushHelper.getInstance(sContext).getSyncStatus(RetryType.ENABLE_PUSH))) {
                enablePush(sContext);
            }
            if ("syncing".equals(OperatePushHelper.getInstance(sContext).getSyncStatus(RetryType.UPLOAD_HUAWEI_TOKEN))) {
                syncAssemblePushToken(sContext);
            }
            if ("syncing".equals(OperatePushHelper.getInstance(sContext).getSyncStatus(RetryType.UPLOAD_FCM_TOKEN))) {
                syncAssembleFCMPushToken(sContext);
            }
            if ("syncing".equals(OperatePushHelper.getInstance(context).getSyncStatus(RetryType.UPLOAD_COS_TOKEN))) {
                syncAssembleCOSPushToken(context);
                return;
            }
            return;
        }
        PushServiceClient.getInstance(context).awakePushService();
        MyLog.w("Could not send  register message within 5s repeatly .");
    }

    private static void scheduleOcVersionCheckJob() {
        ScheduledJobManager.getInstance(sContext).addRepeatJob(new OcVersionCheckJob(sContext), OnlineConfig.getInstance(sContext).getIntValue(ConfigKey.OcVersionCheckFrequency.getValue(), 86400), 5);
    }

    private static void scheduleGeoFenceLocUploadJobs() {
        if (GeoFenceUtils.getGeoEnableSwitch(sContext) && !TextUtils.equals("com.xiaomi.xmsf", sContext.getPackageName()) && OnlineConfig.getInstance(sContext).getBooleanValue(ConfigKey.UploadGeoAppLocSwitch.getValue(), true) && !SystemUtils.isGlobalVersion()) {
            GeoFenceNetInfoUploadJob.reportLocInfo(sContext, true);
            int frequency = Math.max(60, OnlineConfig.getInstance(sContext).getIntValue(ConfigKey.UploadWIFIGeoLocFrequency.getValue(), 900));
            ScheduledJobManager.getInstance(sContext).addRepeatJob(new GeoFenceNetInfoUploadJob(sContext, frequency), frequency, frequency);
        }
    }

    private static void scheduleDataCollectionJobs(Context context) {
        if (OnlineConfig.getInstance(sContext).getBooleanValue(ConfigKey.DataCollectionSwitch.getValue(), getDefaultSwitch())) {
            CDActionProviderHolder.getInstance().setCDActionProvider(new CDActionProviderImpl(context));
            ScheduledJobManager.getInstance(sContext).addOneShootJob(new Runnable() {
                public void run() {
                    CDEntrance.start(MiPushClient.sContext);
                }
            }, 10);
        }
    }

    private static boolean getDefaultSwitch() {
        return MIUIUtils.isNotMIUI();
    }

    private static void updateIMEI() {
        new Thread(new Runnable() {
            public void run() {
                if (!MIUIUtils.isGDPREnable() && DeviceInfo.blockingGetIMEI(MiPushClient.sContext) != null) {
                    XmPushActionNotification notification = new XmPushActionNotification();
                    notification.setAppId(AppInfoHolder.getInstance(MiPushClient.sContext).getAppID());
                    notification.setType("client_info_update");
                    notification.setId(PacketHelper.generatePacketID());
                    notification.setExtra(new HashMap());
                    String imeiMd5 = "";
                    String imei = DeviceInfo.blockingGetIMEI(MiPushClient.sContext);
                    if (!TextUtils.isEmpty(imei)) {
                        imeiMd5 = imeiMd5 + XMStringUtils.getMd5Digest(imei);
                    }
                    String subImeisMd5 = DeviceInfo.blockingGetSubIMEISMd5(MiPushClient.sContext);
                    if (!(TextUtils.isEmpty(imeiMd5) || TextUtils.isEmpty(subImeisMd5))) {
                        imeiMd5 = imeiMd5 + "," + subImeisMd5;
                    }
                    if (!TextUtils.isEmpty(imeiMd5)) {
                        notification.getExtra().put("imei_md5", imeiMd5);
                    }
                    int spaceId = DeviceInfo.getSpaceId();
                    if (spaceId >= 0) {
                        notification.getExtra().put("space_id", Integer.toString(spaceId));
                    }
                    PushServiceClient.getInstance(MiPushClient.sContext).sendMessage(notification, ActionType.Notification, false, null);
                }
            }
        }).start();
    }

    public static List<String> getAllAlias(Context context) {
        List<String> aliasList = new ArrayList();
        for (String key : context.getSharedPreferences("mipush_extra", 0).getAll().keySet()) {
            if (key.startsWith("alias_")) {
                aliasList.add(key.substring("alias_".length()));
            }
        }
        return aliasList;
    }

    public static List<String> getAllTopic(Context context) {
        List<String> topicList = new ArrayList();
        for (String key : context.getSharedPreferences("mipush_extra", 0).getAll().keySet()) {
            if (key.startsWith("topic_") && !key.contains("**ALL**")) {
                topicList.add(key.substring("topic_".length()));
            }
        }
        return topicList;
    }

    public static List<String> getAllUserAccount(Context context) {
        List<String> accountList = new ArrayList();
        for (String key : context.getSharedPreferences("mipush_extra", 0).getAll().keySet()) {
            if (key.startsWith("account_")) {
                accountList.add(key.substring("account_".length()));
            }
        }
        return accountList;
    }

    protected static void clearExtras(Context context) {
        Editor editor = context.getSharedPreferences("mipush_extra", 0).edit();
        editor.clear();
        editor.commit();
    }

    static void reInitialize(Context context, RegistrationReason reason) {
        if (AppInfoHolder.getInstance(context).appRegistered()) {
            String regResource = XMStringUtils.generateRandomString(6);
            String appId = AppInfoHolder.getInstance(context).getAppID();
            String appToken = AppInfoHolder.getInstance(context).getAppToken();
            AppInfoHolder.getInstance(context).clear();
            AppInfoHolder.getInstance(context).setEnvType(Constants.getEnvType());
            AppInfoHolder.getInstance(context).putAppIDAndToken(appId, appToken, regResource);
            XmPushActionRegistration regMessage = new XmPushActionRegistration();
            regMessage.setId(PacketHelper.generatePacketID());
            regMessage.setAppId(appId);
            regMessage.setToken(appToken);
            regMessage.setDeviceId(regResource);
            regMessage.setPackageName(context.getPackageName());
            regMessage.setAppVersion(AppInfoUtils.getVersionName(context, context.getPackageName()));
            regMessage.setReason(reason);
            PushServiceClient.getInstance(context).register(regMessage, false);
        }
    }

    public static void reportMessageClicked(Context context, MiPushMessage message) {
        PushMetaInfo metaInfo = new PushMetaInfo();
        metaInfo.setId(message.getMessageId());
        metaInfo.setTopic(message.getTopic());
        metaInfo.setDescription(message.getDescription());
        metaInfo.setTitle(message.getTitle());
        metaInfo.setNotifyId(message.getNotifyId());
        metaInfo.setNotifyType(message.getNotifyType());
        metaInfo.setPassThrough(message.getPassThrough());
        metaInfo.setExtra(message.getExtra());
        reportMessageClicked(context, message.getMessageId(), metaInfo, null);
    }

    static void reportMessageClicked(Context context, String msgid, PushMetaInfo metaInfo, String appId) {
        XmPushActionNotification notification = new XmPushActionNotification();
        if (!TextUtils.isEmpty(appId)) {
            notification.setAppId(appId);
        } else if (AppInfoHolder.getInstance(context).checkAppInfo()) {
            notification.setAppId(AppInfoHolder.getInstance(context).getAppID());
        } else {
            MyLog.e("do not report clicked message");
            return;
        }
        notification.setType("bar:click");
        notification.setId(msgid);
        notification.setRequireAck(false);
        PushServiceClient.getInstance(context).sendMessage(notification, ActionType.Notification, false, metaInfo);
    }

    static void reportIgnoreRegMessageClicked(Context context, String msgid, PushMetaInfo metaInfo, String packageName, String appId) {
        XmPushActionNotification notification = new XmPushActionNotification();
        if (TextUtils.isEmpty(appId)) {
            MyLog.e("do not report clicked message");
            return;
        }
        notification.setAppId(appId);
        notification.setType("bar:click");
        notification.setId(msgid);
        notification.setRequireAck(false);
        PushServiceClient.getInstance(context).sendMessage(notification, ActionType.Notification, false, true, metaInfo, true, packageName, appId);
    }

    public static void clearLocalNotificationType(Context context) {
        PushServiceClient.getInstance(context).clearLocalNotificationType();
    }

    public static void unregisterPush(Context context) {
        AssemblePushHelper.unregisterAssemblePush(context);
        if (AppInfoHolder.getInstance(context).checkAppInfo()) {
            XmPushActionUnRegistration unregMessage = new XmPushActionUnRegistration();
            unregMessage.setId(PacketHelper.generatePacketID());
            unregMessage.setAppId(AppInfoHolder.getInstance(context).getAppID());
            unregMessage.setRegId(AppInfoHolder.getInstance(context).getRegID());
            unregMessage.setToken(AppInfoHolder.getInstance(context).getAppToken());
            unregMessage.setPackageName(context.getPackageName());
            PushServiceClient.getInstance(context).unregister(unregMessage);
            PushMessageHandler.removeAllPushCallbackClass();
            AppInfoHolder.getInstance(context).invalidate();
            clearLocalNotificationType(context);
            clearNotification(context);
            if (mSyncMIIDHelper != null) {
                MIIDManager.getInstance(context).removeMIIDUpdateCallback(mSyncMIIDHelper);
            }
            clearExtras(context);
        }
    }

    public static void disablePush(Context context) {
        PushServiceClient.getInstance(context).sendPushEnableDisableMessage(true);
    }

    public static void enablePush(Context context) {
        PushServiceClient.getInstance(context).sendPushEnableDisableMessage(false);
    }

    public static void syncAssemblePushToken(Context context) {
        PushServiceClient.getInstance(context).sendAssemblePushTokenCommon(null, RetryType.UPLOAD_HUAWEI_TOKEN, AssemblePush.ASSEMBLE_PUSH_HUAWEI);
    }

    public static void syncAssembleFCMPushToken(Context context) {
        PushServiceClient.getInstance(context).sendAssemblePushTokenCommon(null, RetryType.UPLOAD_FCM_TOKEN, AssemblePush.ASSEMBLE_PUSH_FCM);
    }

    public static void syncAssembleCOSPushToken(Context context) {
        PushServiceClient.getInstance(context).sendAssemblePushTokenCommon(null, RetryType.UPLOAD_COS_TOKEN, AssemblePush.ASSEMBLE_PUSH_COS);
    }

    public static void setAlias(Context context, String alias, String category) {
        if (!TextUtils.isEmpty(alias)) {
            setCommand(context, Command.COMMAND_SET_ALIAS.value, alias, category);
        }
    }

    public static void setUserAccount(Context context, String userAccount, String category) {
        if (!TextUtils.isEmpty(userAccount)) {
            setCommand(context, Command.COMMAND_SET_ACCOUNT.value, userAccount, category);
        }
    }

    public static void unsetUserAccount(Context context, String userAccount, String category) {
        setCommand(context, Command.COMMAND_UNSET_ACCOUNT.value, userAccount, category);
    }

    public static void subscribe(Context context, String topic, String category) {
        if (!TextUtils.isEmpty(AppInfoHolder.getInstance(context).getAppID()) && !TextUtils.isEmpty(topic)) {
            if (Math.abs(System.currentTimeMillis() - topicSubscribedTime(context, topic)) > 86400000) {
                XmPushActionSubscription subscribeMessage = new XmPushActionSubscription();
                subscribeMessage.setId(PacketHelper.generatePacketID());
                subscribeMessage.setAppId(AppInfoHolder.getInstance(context).getAppID());
                subscribeMessage.setTopic(topic);
                subscribeMessage.setPackageName(context.getPackageName());
                subscribeMessage.setCategory(category);
                PushServiceClient.getInstance(context).sendMessage(subscribeMessage, ActionType.Subscription, null);
            } else if (1 == PushMessageHelper.getPushMode(context)) {
                PushMessageHandler.onSubscribeResult(context, category, 0, null, topic);
            } else {
                List<String> cmdArgs = new ArrayList();
                cmdArgs.add(topic);
                PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(Command.COMMAND_SUBSCRIBE_TOPIC.value, cmdArgs, 0, null, null));
            }
        }
    }

    public static void unsubscribe(Context context, String topic, String category) {
        if (!AppInfoHolder.getInstance(context).checkAppInfo()) {
            return;
        }
        if (topicSubscribedTime(context, topic) < 0) {
            MyLog.w("Don't cancel subscribe for " + topic + " is unsubscribed");
            return;
        }
        XmPushActionUnSubscription unsubscribeMessage = new XmPushActionUnSubscription();
        unsubscribeMessage.setId(PacketHelper.generatePacketID());
        unsubscribeMessage.setAppId(AppInfoHolder.getInstance(context).getAppID());
        unsubscribeMessage.setTopic(topic);
        unsubscribeMessage.setPackageName(context.getPackageName());
        unsubscribeMessage.setCategory(category);
        PushServiceClient.getInstance(context).sendMessage(unsubscribeMessage, ActionType.UnSubscription, null);
    }

    public static void clearNotification(Context context, int notifyId) {
        PushServiceClient.getInstance(context).clearNotification(notifyId);
    }

    public static void clearNotification(Context context, String title, String description) {
        PushServiceClient.getInstance(context).clearNotification(title, description);
    }

    public static void clearNotification(Context context) {
        PushServiceClient.getInstance(context).clearNotification(-1);
    }

    public static String getRegId(Context context) {
        if (AppInfoHolder.getInstance(context).appRegistered()) {
            return AppInfoHolder.getInstance(context).getRegID();
        }
        return null;
    }

    protected static void setCommand(Context context, String command, String argument, String category) {
        ArrayList arguments = new ArrayList();
        if (!TextUtils.isEmpty(argument)) {
            arguments.add(argument);
        }
        if (!Command.COMMAND_SET_ALIAS.value.equalsIgnoreCase(command) || Math.abs(System.currentTimeMillis() - aliasSetTime(context, argument)) >= 3600000) {
            if (Command.COMMAND_UNSET_ALIAS.value.equalsIgnoreCase(command) && aliasSetTime(context, argument) < 0) {
                MyLog.w("Don't cancel alias for " + XMStringUtils.obfuscateString(arguments.toString(), 3) + " is unseted");
            } else if (!Command.COMMAND_SET_ACCOUNT.value.equalsIgnoreCase(command) || Math.abs(System.currentTimeMillis() - accountSetTime(context, argument)) >= 3600000) {
                if (!Command.COMMAND_UNSET_ACCOUNT.value.equalsIgnoreCase(command) || accountSetTime(context, argument) >= 0) {
                    setCommand(context, command, arguments, category);
                } else {
                    MyLog.w("Don't cancel account for " + XMStringUtils.obfuscateString(arguments.toString(), 3) + " is unseted");
                }
            } else if (1 == PushMessageHelper.getPushMode(context)) {
                PushMessageHandler.onCommandResult(context, category, command, 0, null, arguments);
            } else {
                PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(Command.COMMAND_SET_ACCOUNT.value, arguments, 0, null, category));
            }
        } else if (1 == PushMessageHelper.getPushMode(context)) {
            PushMessageHandler.onCommandResult(context, category, command, 0, null, arguments);
        } else {
            PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(Command.COMMAND_SET_ALIAS.value, arguments, 0, null, category));
        }
    }

    protected static void setCommand(Context context, String command, ArrayList<String> arguments, String category) {
        if (!TextUtils.isEmpty(AppInfoHolder.getInstance(context).getAppID())) {
            XmPushActionCommand setConfigMessage = new XmPushActionCommand();
            setConfigMessage.setId(PacketHelper.generatePacketID());
            setConfigMessage.setAppId(AppInfoHolder.getInstance(context).getAppID());
            setConfigMessage.setCmdName(command);
            Iterator it = arguments.iterator();
            while (it.hasNext()) {
                setConfigMessage.addToCmdArgs((String) it.next());
            }
            setConfigMessage.setCategory(category);
            setConfigMessage.setPackageName(context.getPackageName());
            PushServiceClient.getInstance(context).sendMessage(setConfigMessage, ActionType.Command, null);
        }
    }

    protected static boolean getOpenHmsPush() {
        return AssemblePushCollectionsManager.getInstance(sContext).getUserSwitch(AssemblePush.ASSEMBLE_PUSH_HUAWEI);
    }

    protected static boolean getOpenFCMPush() {
        return AssemblePushCollectionsManager.getInstance(sContext).getUserSwitch(AssemblePush.ASSEMBLE_PUSH_FCM);
    }

    protected static boolean getOpenOPPOPush() {
        return AssemblePushCollectionsManager.getInstance(sContext).getUserSwitch(AssemblePush.ASSEMBLE_PUSH_COS);
    }

    private static void checkNotNull(Object obj, String paramName) {
        if (obj == null) {
            throw new IllegalArgumentException("param " + paramName + " is not nullable");
        }
    }

    static synchronized void addAlias(Context context, String alias) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences("mipush_extra", 0).edit().putLong("alias_" + alias, System.currentTimeMillis()).commit();
        }
    }

    static synchronized void removeAlias(Context context, String alias) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences("mipush_extra", 0).edit().remove("alias_" + alias).commit();
        }
    }

    static synchronized void removeAllAliases(Context context) {
        synchronized (MiPushClient.class) {
            for (String alias : getAllAlias(context)) {
                removeAlias(context, alias);
            }
        }
    }

    static synchronized void addAccount(Context context, String account) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences("mipush_extra", 0).edit().putLong("account_" + account, System.currentTimeMillis()).commit();
        }
    }

    static synchronized void removeAccount(Context context, String account) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences("mipush_extra", 0).edit().remove("account_" + account).commit();
        }
    }

    static synchronized void removeAllAccounts(Context context) {
        synchronized (MiPushClient.class) {
            for (String account : getAllUserAccount(context)) {
                removeAccount(context, account);
            }
        }
    }

    static synchronized void addTopic(Context context, String topic) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences("mipush_extra", 0).edit().putLong("topic_" + topic, System.currentTimeMillis()).commit();
        }
    }

    static synchronized void removeTopic(Context context, String topic) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences("mipush_extra", 0).edit().remove("topic_" + topic).commit();
        }
    }

    static synchronized void removeAllTopics(Context context) {
        synchronized (MiPushClient.class) {
            for (String topic : getAllTopic(context)) {
                removeTopic(context, topic);
            }
        }
    }

    static synchronized void addAcceptTime(Context context, String startTime, String endTime) {
        synchronized (MiPushClient.class) {
            Editor editor = context.getSharedPreferences("mipush_extra", 0).edit();
            editor.putString("accept_time", startTime + "," + endTime);
            SharedPrefsCompat.apply(editor);
        }
    }

    static synchronized void removeAcceptTime(Context context) {
        synchronized (MiPushClient.class) {
            Editor editor = context.getSharedPreferences("mipush_extra", 0).edit();
            editor.remove("accept_time");
            SharedPrefsCompat.apply(editor);
        }
    }

    public static long topicSubscribedTime(Context context, String topic) {
        return context.getSharedPreferences("mipush_extra", 0).getLong("topic_" + topic, -1);
    }

    public static long accountSetTime(Context context, String account) {
        return context.getSharedPreferences("mipush_extra", 0).getLong("account_" + account, -1);
    }

    public static long aliasSetTime(Context context, String alias) {
        return context.getSharedPreferences("mipush_extra", 0).getLong("alias_" + alias, -1);
    }

    protected static String getAcceptTime(Context context) {
        return context.getSharedPreferences("mipush_extra", 0).getString("accept_time", "00:00-23:59");
    }

    private static void addPullNotificationTime(Context context) {
        Editor editor = context.getSharedPreferences("mipush_extra", 0).edit();
        editor.putLong("last_pull_notification", System.currentTimeMillis());
        SharedPrefsCompat.apply(editor);
    }

    private static boolean shouldPullNotification(Context context) {
        if (Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_pull_notification", -1)) > 300000) {
            return true;
        }
        return false;
    }

    private static void addRegRequestTime(Context context) {
        Editor editor = context.getSharedPreferences("mipush_extra", 0).edit();
        editor.putLong("last_reg_request", System.currentTimeMillis());
        SharedPrefsCompat.apply(editor);
    }

    private static boolean shouldSendRegRequest(Context context) {
        if (Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_reg_request", -1)) > 5000) {
            return true;
        }
        return false;
    }

    static synchronized void setGeoEnableTime(Context context, String geoEnable) {
        synchronized (MiPushClient.class) {
            Editor editor = context.getSharedPreferences("mipush_extra", 0).edit();
            editor.putLong("geo_" + geoEnable, System.currentTimeMillis());
            SharedPrefsCompat.apply(editor);
        }
    }

    private static long getGeoEnableTime(Context context, String geoEnable) {
        return context.getSharedPreferences("mipush_extra", 0).getLong("geo_" + geoEnable, -1);
    }

    private static void enableGeo(Context context, boolean isEnable) {
        if (Math.abs(System.currentTimeMillis() - getGeoEnableTime(context, String.valueOf(isEnable))) > 60000) {
            GeoFenceUtils.setGeoEnableSwitch(context, isEnable);
            GeoFenceRegMessageProcessor.reportGeoAuthorizationNotificaion(context, isEnable);
            setGeoEnableTime(context, String.valueOf(isEnable));
        }
    }

    private static void initEventPerfLogic(Context context) {
        PushClientReportHelper.setUploader(new Uploader() {
            public void uploader(Context context, ClientUploadDataItem item) {
                MiTinyDataClient.upload(context, item);
            }
        });
        Config config = PushClientReportHelper.getConfig(context);
        ClientReportClient.init(context, config, new MIPushEventDataProcessor(context), new MIPushPerfDataProcessor(context));
        ActivityLifecycleCallbacksForCR.forceAttachApplication(context);
        ClientReportHelper.sendConfigInfo(context, config);
    }

    private static void forceHandleCrash() {
        boolean forceHandleCrashSwitch = OnlineConfig.getInstance(sContext).getBooleanValue(ConfigKey.ForceHandleCrashSwitch.getValue(), false);
        if (!isCrashHandlerSuggested && forceHandleCrashSwitch) {
            Thread.setDefaultUncaughtExceptionHandler(new MIPushCrashHandler(sContext));
        }
    }
}
