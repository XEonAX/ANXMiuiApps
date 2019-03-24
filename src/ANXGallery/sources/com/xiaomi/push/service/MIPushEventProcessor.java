package com.xiaomi.push.service;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.content.SystemIntent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.nexstreaming.nexeditorsdk.nexProject;
import com.xiaomi.channel.commonutils.android.AppInfoUtils;
import com.xiaomi.channel.commonutils.android.MIIDUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.clientreport.PerfMessageHelper;
import com.xiaomi.push.service.MIPushNotificationHelper.NotifyPushMessageInfo;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import com.xiaomi.push.service.XMPushService.Job;
import com.xiaomi.push.service.clientReport.PushClientReportManager;
import com.xiaomi.slim.Blob;
import com.xiaomi.smack.packet.CommonPacketExtension;
import com.xiaomi.smack.packet.Message;
import com.xiaomi.smack.packet.Packet;
import com.xiaomi.smack.util.TrafficUtils;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.PushMetaInfo;
import com.xiaomi.xmpush.thrift.XmPushActionAckMessage;
import com.xiaomi.xmpush.thrift.XmPushActionContainer;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import miui.provider.ExtraTelephony.FirewallLog;

public class MIPushEventProcessor {
    public void processChannelOpenResult(Context context, ClientLoginInfo loginInfo, boolean succeeded, int reason, String msg) {
        if (!succeeded) {
            MIPushAccount pushAccount = MIPushAccountUtils.getMIPushAccount(context);
            if (pushAccount != null && "token-expired".equals(msg)) {
                try {
                    MIPushAccountUtils.register(context, pushAccount.packageName, pushAccount.appId, pushAccount.appToken);
                } catch (Throwable e) {
                    MyLog.e(e);
                } catch (Throwable e2) {
                    MyLog.e(e2);
                }
            }
        }
    }

    public void processNewPacket(XMPushService pushService, Packet packet, ClientLoginInfo loginInfo) {
        if (packet instanceof Message) {
            Message miMessage = (Message) packet;
            CommonPacketExtension extension = miMessage.getExtension("s");
            if (extension != null) {
                try {
                    processMIPushMessage(pushService, RC4Cryption.decrypt(RC4Cryption.generateKeyForRC4(loginInfo.security, miMessage.getPacketID()), extension.getText()), (long) TrafficUtils.getTrafficFlow(packet.toXML()));
                    return;
                } catch (Throwable e) {
                    MyLog.e(e);
                    return;
                }
            }
            return;
        }
        MyLog.w("not a mipush message");
    }

    public void processNewPacket(XMPushService pushService, Blob blob, ClientLoginInfo loginInfo) {
        try {
            processMIPushMessage(pushService, blob.getDecryptedPayload(loginInfo.security), (long) blob.getSerializedSize());
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }

    /* JADX WARNING: Missing block: B:63:0x021b, code:
            if (android.text.TextUtils.equals(r19, r18.name) == false) goto L_0x021d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void processMIPushMessage(XMPushService pushService, byte[] decryptedContent, long packetBytesLen) {
        XmPushActionContainer container = buildContainer(decryptedContent);
        if (container != null) {
            if (TextUtils.isEmpty(container.packageName)) {
                MyLog.w("receive a mipush message without package name");
                return;
            }
            Long receiveTime = Long.valueOf(System.currentTimeMillis());
            Intent intent = buildIntent(decryptedContent, receiveTime.longValue());
            String realTargetPackage = MIPushNotificationHelper.getTargetPackage(container);
            TrafficUtils.distributionTraffic(pushService, realTargetPackage, packetBytesLen, true, true, System.currentTimeMillis());
            PushMetaInfo metaInfo = container.getMetaInfo();
            if (metaInfo != null) {
                metaInfo.putToExtra("mrt", Long.toString(receiveTime.longValue()));
            }
            String msgId;
            if (ActionType.SendMessage == container.getAction() && MIPushAppInfo.getInstance(pushService).isUnRegistered(container.packageName) && !MIPushNotificationHelper.isBusinessMessage(container)) {
                msgId = "";
                if (metaInfo != null) {
                    msgId = metaInfo.getId();
                    if (MIPushNotificationHelper.isNPBMessage(container)) {
                        PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4NeedDrop(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), msgId, "Drop a message for unregistered");
                    }
                }
                MyLog.w("Drop a message for unregistered, msgid=" + msgId);
                sendAppAbsentAck(pushService, container, container.packageName);
            } else if (ActionType.SendMessage == container.getAction() && MIPushAppInfo.getInstance(pushService).isPushDisabled4User(container.packageName) && !MIPushNotificationHelper.isBusinessMessage(container)) {
                msgId = "";
                if (metaInfo != null) {
                    msgId = metaInfo.getId();
                    if (MIPushNotificationHelper.isNPBMessage(container)) {
                        PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4NeedDrop(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), msgId, "Drop a message for push closed");
                    }
                }
                MyLog.w("Drop a message for push closed, msgid=" + msgId);
                sendAppAbsentAck(pushService, container, container.packageName);
            } else if (ActionType.SendMessage != container.getAction() || TextUtils.equals(pushService.getPackageName(), SystemIntent.ACTIVATE_SERVICE_HOST_PACKAGE) || TextUtils.equals(pushService.getPackageName(), container.packageName)) {
                if (!(metaInfo == null || metaInfo.getId() == null)) {
                    MyLog.w(String.format("receive a message, appid=%1$s, msgid= %2$s", new Object[]{container.getAppid(), metaInfo.getId()}));
                }
                if (metaInfo != null) {
                    Map<String, String> extra = metaInfo.getExtra();
                    if (extra != null && extra.containsKey("hide") && "true".equalsIgnoreCase((String) extra.get("hide"))) {
                        sendAckMessage(pushService, container);
                        return;
                    }
                }
                if (!(metaInfo == null || metaInfo.getExtra() == null || !metaInfo.getExtra().containsKey("__miid"))) {
                    String miid = (String) metaInfo.getExtra().get("__miid");
                    Account miAccount = MIIDUtils.getXiaomiAccount(pushService);
                    if (miAccount != null) {
                    }
                    if (MIPushNotificationHelper.isNPBMessage(container)) {
                        PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4NeedDrop(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), "miid already logout or anther already login");
                    }
                    MyLog.w(new StringBuilder().append(miid).append(" should be login, but got ").append(miAccount).toString() == null ? "nothing" : miAccount.name);
                    sendErrorAck(pushService, container, "miid already logout or anther already login", new StringBuilder().append(miid).append(" should be login, but got ").append(miAccount).toString() == null ? "nothing" : miAccount.name);
                    return;
                }
                boolean relatedToGeo = metaInfo != null && verifyGeoMessage(metaInfo.getExtra());
                if (relatedToGeo) {
                    if (GeoFenceUtils.getGeoEnableSwitch(pushService)) {
                        boolean showNow;
                        boolean localCheck = shouldGeoLocalCheck(metaInfo) && GeoFenceUtils.canLocalCheck(pushService);
                        if (!localCheck) {
                            showNow = true;
                        } else if (geoMessageIsValidated(pushService, container)) {
                            showNow = processGeoMessage(pushService, metaInfo, decryptedContent);
                        } else {
                            return;
                        }
                        sendGeoAck(pushService, container, true, false, false);
                        if (!showNow) {
                            return;
                        }
                    }
                    sendGeoAck(pushService, container, false, false, false, true);
                    return;
                }
                postProcessMIPushMessage(pushService, realTargetPackage, decryptedContent, intent, relatedToGeo);
            } else {
                MyLog.w("Receive a message with wrong package name, expect " + pushService.getPackageName() + ", received " + container.packageName);
                sendErrorAck(pushService, container, "unmatched_package", "package should be " + pushService.getPackageName() + ", but got " + container.packageName);
                if (metaInfo != null && MIPushNotificationHelper.isNPBMessage(container)) {
                    PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4NeedDrop(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), "Receive a message with wrong package name");
                }
            }
        }
    }

    private static boolean processGeoMessage(XMPushService pushService, PushMetaInfo metaInfo, byte[] decryptedContent) {
        Map<String, String> extra = metaInfo.getExtra();
        String[] ids = ((String) extra.get("__geo_ids")).split(",");
        ArrayList<ContentValues> geoMessages = new ArrayList();
        for (String id : ids) {
            if (GeoFenceDao.getInstance(pushService).findGeoFencingById(id) != null) {
                ContentValues geoMessage = new ContentValues();
                geoMessage.put("geo_id", id);
                geoMessage.put("message_id", metaInfo.getId());
                int action = Integer.parseInt((String) extra.get("__geo_action"));
                geoMessage.put("action", Integer.valueOf(action));
                geoMessage.put("content", decryptedContent);
                geoMessage.put("deadline", Long.valueOf(Long.parseLong((String) extra.get("__geo_deadline"))));
                if (TextUtils.equals(GeoFenceDao.getInstance(pushService).findGeoStatueByGeoId(id), "Enter") && action == 1) {
                    return true;
                }
                geoMessages.add(geoMessage);
            }
        }
        if (!GeoFenceMessageDao.getInstance(pushService).insertGeoMessages(geoMessages)) {
            MyLog.v("geofence added some new geofence message failed messagi_id:" + metaInfo.getId());
        }
        return false;
    }

    public static Intent buildIntent(byte[] decryptedContent, long receiveTime) {
        XmPushActionContainer container = buildContainer(decryptedContent);
        if (container == null) {
            return null;
        }
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.putExtra("mipush_payload", decryptedContent);
        intent.putExtra("mrt", Long.toString(receiveTime));
        intent.setPackage(container.packageName);
        return intent;
    }

    public static XmPushActionContainer buildContainer(byte[] decryptedContent) {
        XmPushActionContainer container = new XmPushActionContainer();
        try {
            XmPushThriftSerializeUtils.convertByteArrayToThriftObject(container, decryptedContent);
            return container;
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:130:? A:{SYNTHETIC, RETURN, SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0207  */
    /* JADX WARNING: Missing block: B:24:0x0093, code:
            if (com.xiaomi.channel.commonutils.android.AppInfoUtils.isPkgInstalled(r26, r13.packageName) == false) goto L_0x0095;
     */
    /* JADX WARNING: Missing block: B:55:0x01ba, code:
            if (com.xiaomi.push.service.MIPushNotificationHelper.isApplicationForeground(r26, r13.packageName) != false) goto L_0x01bc;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void postProcessMIPushMessage(XMPushService pushService, String realTargetPackage, byte[] decryptedContent, Intent intent, boolean relateToGeo) {
        XmPushActionContainer container = buildContainer(decryptedContent);
        PushMetaInfo metaInfo = container.getMetaInfo();
        if (decryptedContent != null) {
            PerfMessageHelper.collectPerfData(container.getPackageName(), pushService.getApplicationContext(), null, container.getAction(), decryptedContent.length);
        }
        if (isMIUIOldAdsSDKMessage(container) && isMIUIPushSupported(pushService, realTargetPackage)) {
            if (MIPushNotificationHelper.isNPBMessage(container)) {
                PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4NeedDrop(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), "old message received by new SDK.");
            }
            sendMIUIOldAdsAckMessage(pushService, container);
        } else if (!isMIUIPushMessage(container) || isMIUIPushSupported(pushService, realTargetPackage) || predefinedNotification(container)) {
            if (MIPushNotificationHelper.isBusinessMessage(container)) {
            }
            if (!isIntentAvailable(pushService, intent)) {
                if (AppInfoUtils.isPkgInstalled(pushService, container.packageName)) {
                    MyLog.w("receive a mipush message, we can see the app, but we can't see the receiver.");
                    if (MIPushNotificationHelper.isNPBMessage(container)) {
                        PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4ERROR(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), "receive a mipush message, we can see the app, but we can't see the receiver.");
                        return;
                    }
                    return;
                }
                if (MIPushNotificationHelper.isNPBMessage(container)) {
                    PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4ERROR(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), "receive a message, but the package is removed.");
                }
                sendAppNotInstallNotification(pushService, container);
                return;
            }
            if (ActionType.Registration == container.getAction()) {
                String pkgName = container.getPackageName();
                Editor editor = pushService.getSharedPreferences("pref_registered_pkg_names", 0).edit();
                editor.putString(pkgName, container.appid);
                editor.commit();
            }
            if (MIPushNotificationHelper.isNormalNotificationMessage(container)) {
                PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), 1001, System.currentTimeMillis(), "receive notification message ");
                if (!TextUtils.isEmpty(metaInfo.getId())) {
                    intent.putExtra("messageId", metaInfo.getId());
                    intent.putExtra("eventMessageType", 1000);
                }
            }
            if (MIPushNotificationHelper.isPassThoughMessage(container)) {
                PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), 2001, System.currentTimeMillis(), "receive passThrough message");
                if (!TextUtils.isEmpty(metaInfo.getId())) {
                    intent.putExtra("messageId", metaInfo.getId());
                    intent.putExtra("eventMessageType", nexProject.kAutoThemeTransitionDuration);
                }
            }
            if (MIPushNotificationHelper.isBusinessMessage(container)) {
                PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), 3001, System.currentTimeMillis(), "receive business message");
                if (!TextUtils.isEmpty(metaInfo.getId())) {
                    intent.putExtra("messageId", metaInfo.getId());
                    intent.putExtra("eventMessageType", 3000);
                }
            }
            if (!(metaInfo == null || TextUtils.isEmpty(metaInfo.getTitle()) || TextUtils.isEmpty(metaInfo.getDescription()) || metaInfo.passThrough == 1)) {
                if (!MIPushNotificationHelper.isNotifyForeground(metaInfo.getExtra())) {
                }
                boolean isDupMessage = false;
                String key = null;
                if (metaInfo != null) {
                    if (metaInfo.extra != null) {
                        key = (String) metaInfo.extra.get("jobkey");
                    }
                    if (TextUtils.isEmpty(key)) {
                        key = metaInfo.getId();
                    }
                    isDupMessage = MiPushMessageDuplicate.isDuplicateMessage(pushService, container.packageName, key);
                }
                if (isDupMessage) {
                    PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4DUPMD(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), "drop a duplicate message");
                    MyLog.w("drop a duplicate message, key=" + key);
                } else {
                    NotifyPushMessageInfo info = MIPushNotificationHelper.notifyPushMessage(pushService, container, decryptedContent);
                    if (info.traffic > 0 && !TextUtils.isEmpty(info.targetPkgName)) {
                        TrafficUtils.distributionTraffic(pushService, info.targetPkgName, info.traffic, true, false, System.currentTimeMillis());
                    }
                    if (!MIPushNotificationHelper.isBusinessMessage(container)) {
                        Intent intent2 = new Intent("com.xiaomi.mipush.MESSAGE_ARRIVED");
                        intent2.putExtra("mipush_payload", decryptedContent);
                        intent2.setPackage(container.packageName);
                        try {
                            List<ResolveInfo> receiverList = pushService.getPackageManager().queryBroadcastReceivers(intent2, 0);
                            if (!(receiverList == null || receiverList.isEmpty())) {
                                pushService.sendBroadcast(intent2, MIPushHelper.getReceiverPermission(container.packageName));
                            }
                        } catch (Exception e) {
                            pushService.sendBroadcast(intent2, MIPushHelper.getReceiverPermission(container.packageName));
                            if (e != null) {
                                PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4ERROR(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), e.getMessage());
                            }
                        }
                    }
                }
                if (relateToGeo) {
                    sendGeoAck(pushService, container, false, true, false);
                } else {
                    sendAckMessage(pushService, container);
                }
                if (container.getAction() != ActionType.UnRegistration && !SystemIntent.ACTIVATE_SERVICE_HOST_PACKAGE.equals(pushService.getPackageName())) {
                    pushService.stopSelf();
                    return;
                }
                return;
            }
            if (!SystemIntent.ACTIVATE_SERVICE_HOST_PACKAGE.contains(container.packageName) || container.isEncryptAction() || metaInfo == null || metaInfo.getExtra() == null || !metaInfo.getExtra().containsKey("ab")) {
                if (shouldSendBroadcast(pushService, realTargetPackage, container, metaInfo)) {
                    if (!(metaInfo == null || TextUtils.isEmpty(metaInfo.getId()))) {
                        if (MIPushNotificationHelper.isPassThoughMessage(container)) {
                            PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), 2002, "try send passThrough message Broadcast");
                        } else if (MIPushNotificationHelper.isBusinessMessage(container)) {
                            PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4NeedDrop(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), "try show awake message , but it don't show in foreground");
                        } else if (MIPushNotificationHelper.isNormalNotificationMessage(container)) {
                            PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4NeedDrop(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), "try show notification message , but it don't show in foreground");
                        }
                    }
                    pushService.sendBroadcast(intent, MIPushHelper.getReceiverPermission(container.packageName));
                } else {
                    PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4NeedDrop(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), "passThough message: not permit to send broadcast ");
                }
                if (container.getAction() != ActionType.UnRegistration) {
                    return;
                }
                return;
            }
            sendAckMessage(pushService, container);
            MyLog.v("receive abtest message. ack it." + metaInfo.getId());
            if (container.getAction() != ActionType.UnRegistration) {
            }
        } else {
            if (MIPushNotificationHelper.isNPBMessage(container)) {
                PushClientReportManager.getInstance(pushService.getApplicationContext()).reportEvent4NeedDrop(container.getPackageName(), MIPushNotificationHelper.getInterfaceId(container), metaInfo.getId(), "new message received by old SDK.");
            }
            sendMIUINewAdsAckMessage(pushService, container);
        }
    }

    private static boolean shouldSendBroadcast(XMPushService pushService, String realTargetPackage, XmPushActionContainer container, PushMetaInfo metaInfo) {
        boolean sendBroadcast = true;
        if (metaInfo != null && metaInfo.getExtra() != null && metaInfo.getExtra().containsKey("__check_alive") && metaInfo.getExtra().containsKey("__awake")) {
            XmPushActionNotification notification = new XmPushActionNotification();
            notification.setAppId(container.getAppid());
            notification.setPackageName(realTargetPackage);
            notification.setType(NotificationType.AwakeSystemApp.value);
            notification.setId(metaInfo.getId());
            notification.extra = new HashMap();
            boolean appRunning = AppInfoUtils.isAppRunning(pushService.getApplicationContext(), realTargetPackage);
            notification.extra.put("app_running", Boolean.toString(appRunning));
            if (!appRunning) {
                boolean awake = Boolean.parseBoolean((String) metaInfo.getExtra().get("__awake"));
                notification.extra.put("awaked", Boolean.toString(awake));
                if (!awake) {
                    sendBroadcast = false;
                }
            }
            try {
                MIPushHelper.sendPacket(pushService, MIPushHelper.generateRequestContainer(container.getPackageName(), container.getAppid(), notification, ActionType.Notification));
            } catch (Throwable e) {
                MyLog.e(e);
            }
        }
        return sendBroadcast;
    }

    private static void sendAppNotInstallNotification(final XMPushService pushService, final XmPushActionContainer container) {
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    MIPushHelper.sendPacket(pushService, MIPushHelper.contructAppAbsentMessage(container.getPackageName(), container.getAppid()));
                } catch (Throwable e) {
                    MyLog.e(e);
                    pushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send app absent message.";
            }
        });
    }

    private static boolean verifyGeoMessage(Map<String, String> extra) {
        if (extra != null && extra.containsKey("__geo_ids")) {
            return true;
        }
        return false;
    }

    private static boolean geoMessageIsValidated(XMPushService pushService, XmPushActionContainer container) {
        if (!GeoFenceUtils.checkMetoknlpVersionAbove(pushService)) {
            return false;
        }
        if (!GeoFenceUtils.verifyGeoChannel(pushService)) {
            return false;
        }
        if (AppInfoUtils.isPkgInstalled(pushService, container.packageName)) {
            Map<String, String> extra = container.getMetaInfo().getExtra();
            if (extra == null) {
                return false;
            }
            if (!"12".contains((CharSequence) extra.get("__geo_action"))) {
                return false;
            }
            if (TextUtils.isEmpty((CharSequence) extra.get("__geo_ids"))) {
                return false;
            }
            return true;
        }
        sendAppNotInstallNotification(pushService, container);
        return false;
    }

    private static boolean isMIUIPushMessage(XmPushActionContainer container) {
        return SystemIntent.ACTIVATE_SERVICE_HOST_PACKAGE.equals(container.packageName) && container.getMetaInfo() != null && container.getMetaInfo().getExtra() != null && container.getMetaInfo().getExtra().containsKey("miui_package_name");
    }

    private static boolean predefinedNotification(XmPushActionContainer container) {
        Map<String, String> extra = container.getMetaInfo().getExtra();
        return extra != null && extra.containsKey("notify_effect");
    }

    private static boolean isMIUIPushSupported(Context context, String packageName) {
        Intent notiIntent = new Intent("com.xiaomi.mipush.miui.CLICK_MESSAGE");
        notiIntent.setPackage(packageName);
        Intent passThroughIntent = new Intent("com.xiaomi.mipush.miui.RECEIVE_MESSAGE");
        passThroughIntent.setPackage(packageName);
        PackageManager pmgr = context.getPackageManager();
        try {
            List<ResolveInfo> brInfos = pmgr.queryBroadcastReceivers(passThroughIntent, 32);
            List<ResolveInfo> srInfos = pmgr.queryIntentServices(notiIntent, 32);
            if (brInfos.isEmpty() && srInfos.isEmpty()) {
                return false;
            }
            return true;
        } catch (Throwable e) {
            MyLog.e(e);
            return false;
        }
    }

    private static boolean isMIUIOldAdsSDKMessage(XmPushActionContainer container) {
        if (container.getMetaInfo() == null || container.getMetaInfo().getExtra() == null) {
            return false;
        }
        return "1".equals(container.getMetaInfo().getExtra().get("obslete_ads_message"));
    }

    private static void sendAckMessage(final XMPushService pushService, final XmPushActionContainer container) {
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    MIPushHelper.sendPacket(pushService, MIPushEventProcessor.constructAckMessage(pushService, container));
                } catch (Throwable e) {
                    MyLog.e(e);
                    pushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send ack message for message.";
            }
        });
    }

    private static void sendMIUIOldAdsAckMessage(final XMPushService pushService, final XmPushActionContainer container) {
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    XmPushActionContainer ackContainer = MIPushEventProcessor.constructAckMessage(pushService, container);
                    ackContainer.getMetaInfo().putToExtra("message_obsleted", "1");
                    MIPushHelper.sendPacket(pushService, ackContainer);
                } catch (Throwable e) {
                    MyLog.e(e);
                    pushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send ack message for obsleted message.";
            }
        });
    }

    private static void sendMIUINewAdsAckMessage(final XMPushService pushService, final XmPushActionContainer container) {
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    XmPushActionContainer ackContainer = MIPushEventProcessor.constructAckMessage(pushService, container);
                    ackContainer.getMetaInfo().putToExtra("miui_message_unrecognized", "1");
                    MIPushHelper.sendPacket(pushService, ackContainer);
                } catch (Throwable e) {
                    MyLog.e(e);
                    pushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send ack message for unrecognized new miui message.";
            }
        });
    }

    private static void sendAppAbsentAck(final XMPushService pushService, final XmPushActionContainer container, final String realTargetPackage) {
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    XmPushActionContainer ackContainer = MIPushEventProcessor.constructAckMessage(pushService, container);
                    ackContainer.getMetaInfo().putToExtra("absent_target_package", realTargetPackage);
                    MIPushHelper.sendPacket(pushService, ackContainer);
                } catch (Throwable e) {
                    MyLog.e(e);
                    pushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send app absent ack message for message.";
            }
        });
    }

    private static void sendErrorAck(XMPushService pushService, XmPushActionContainer container, String error, String reason) {
        final XMPushService xMPushService = pushService;
        final XmPushActionContainer xmPushActionContainer = container;
        final String str = error;
        final String str2 = reason;
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    XmPushActionContainer ackContainer = MIPushEventProcessor.constructAckMessage(xMPushService, xmPushActionContainer);
                    ackContainer.metaInfo.putToExtra("error", str);
                    ackContainer.metaInfo.putToExtra(FirewallLog.REASON, str2);
                    MIPushHelper.sendPacket(xMPushService, ackContainer);
                } catch (Throwable e) {
                    MyLog.e(e);
                    xMPushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send wrong message ack for message.";
            }
        });
    }

    public static void sendGeoAck(XMPushService pushService, XmPushActionContainer container, boolean isGeoReceived, boolean isGeoShowed, boolean isGeoPassed) {
        sendGeoAck(pushService, container, isGeoReceived, isGeoShowed, isGeoPassed, false);
    }

    public static void sendGeoAck(XMPushService pushService, XmPushActionContainer container, boolean isGeoReceived, boolean isGeoShowed, boolean isGeoPassed, boolean isGeoUnauthorized) {
        final XMPushService xMPushService = pushService;
        final XmPushActionContainer xmPushActionContainer = container;
        final boolean z = isGeoReceived;
        final boolean z2 = isGeoShowed;
        final boolean z3 = isGeoPassed;
        final boolean z4 = isGeoUnauthorized;
        pushService.executeJob(new Job(4) {
            public void process() {
                try {
                    XmPushActionContainer ackContainer = MIPushEventProcessor.constructAckMessage(xMPushService, xmPushActionContainer, z, z2, z3);
                    if (z4) {
                        ackContainer.getMetaInfo().putToExtra("permission_to_location", PushServiceConstants.GEO_VALUE_AUTHORIZATION_NOT_GRANT);
                    }
                    MIPushHelper.sendPacket(xMPushService, ackContainer);
                } catch (Throwable e) {
                    MyLog.e(e);
                    xMPushService.disconnect(10, e);
                }
            }

            public String getDesc() {
                return "send wrong message ack for message.";
            }
        });
    }

    public static XmPushActionContainer constructAckMessage(Context context, XmPushActionContainer container) {
        return constructAckMessage(context, container, false, false, false);
    }

    public static XmPushActionContainer constructAckMessage(Context context, XmPushActionContainer container, boolean isGeoReceived, boolean isGeoShowed, boolean isGeoPassed) {
        XmPushActionAckMessage ackMessage = new XmPushActionAckMessage();
        ackMessage.setAppId(container.getAppid());
        PushMetaInfo metaInfo = container.getMetaInfo();
        if (metaInfo != null) {
            ackMessage.setId(metaInfo.getId());
            ackMessage.setMessageTs(metaInfo.getMessageTs());
            if (!TextUtils.isEmpty(metaInfo.getTopic())) {
                ackMessage.setTopic(metaInfo.getTopic());
            }
        }
        ackMessage.setDeviceStatus(XmPushThriftSerializeUtils.getDeviceStatus(context, container));
        ackMessage.setGeoMsgStatus(XmPushThriftSerializeUtils.getGeoMsgStatus(isGeoReceived, isGeoShowed, isGeoPassed));
        XmPushActionContainer actionContainer = MIPushHelper.generateRequestContainer(container.getPackageName(), container.getAppid(), ackMessage, ActionType.AckMessage);
        PushMetaInfo actionMetaInfo = container.getMetaInfo().deepCopy();
        actionMetaInfo.putToExtra("mat", Long.toString(System.currentTimeMillis()));
        actionContainer.setMetaInfo(actionMetaInfo);
        return actionContainer;
    }

    private static boolean isIntentAvailable(Context context, Intent intent) {
        try {
            List<ResolveInfo> resolveInfos = context.getPackageManager().queryBroadcastReceivers(intent, 32);
            if (resolveInfos == null || resolveInfos.isEmpty()) {
                return false;
            }
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    public static boolean shouldGeoLocalCheck(PushMetaInfo metaInfo) {
        if (metaInfo == null) {
            return false;
        }
        Map<String, String> extra = metaInfo.getExtra();
        if (extra != null) {
            return TextUtils.equals("1", (CharSequence) extra.get("__geo_local_check"));
        }
        return false;
    }
}
