package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.DeviceInfo;
import com.xiaomi.channel.commonutils.android.SharedPrefsCompat;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.push.clientreport.PerfMessageHelper;
import com.xiaomi.push.service.MIPushNotificationHelper;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.push.service.OnlineConfigHelper;
import com.xiaomi.push.service.PushConstants;
import com.xiaomi.push.service.awake.module.AwakeManager;
import com.xiaomi.push.service.clientReport.PushClientReportHelper;
import com.xiaomi.push.service.clientReport.PushClientReportManager;
import com.xiaomi.push.service.xmpush.Command;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.ConfigKey;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.PushMessage;
import com.xiaomi.xmpush.thrift.PushMetaInfo;
import com.xiaomi.xmpush.thrift.RegistrationReason;
import com.xiaomi.xmpush.thrift.XmPushActionAckMessage;
import com.xiaomi.xmpush.thrift.XmPushActionAckNotification;
import com.xiaomi.xmpush.thrift.XmPushActionCommandResult;
import com.xiaomi.xmpush.thrift.XmPushActionContainer;
import com.xiaomi.xmpush.thrift.XmPushActionCustomConfig;
import com.xiaomi.xmpush.thrift.XmPushActionNormalConfig;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushActionRegistrationResult;
import com.xiaomi.xmpush.thrift.XmPushActionSendMessage;
import com.xiaomi.xmpush.thrift.XmPushActionSubscriptionResult;
import com.xiaomi.xmpush.thrift.XmPushActionUnRegistrationResult;
import com.xiaomi.xmpush.thrift.XmPushActionUnSubscriptionResult;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.TimeZone;
import org.apache.thrift.TBase;
import org.apache.thrift.TException;

public class PushMessageProcessor {
    private static Object lock = new Object();
    private static Queue<String> mCachedMsgIds;
    private static PushMessageProcessor sInstance = null;
    private Context sAppContext;

    public static PushMessageProcessor getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new PushMessageProcessor(context);
        }
        return sInstance;
    }

    private PushMessageProcessor(Context context) {
        this.sAppContext = context.getApplicationContext();
        if (this.sAppContext == null) {
            this.sAppContext = context;
        }
    }

    public PushMessageInterface processIntent(Intent intent) {
        String action = intent.getAction();
        MyLog.w("receive an intent from server, action=" + action);
        String receiveTime = intent.getStringExtra("mrt");
        if (receiveTime == null) {
            receiveTime = Long.toString(System.currentTimeMillis());
        }
        byte[] msgBytes;
        XmPushActionContainer message;
        AppInfoHolder infoHolder;
        if ("com.xiaomi.mipush.RECEIVE_MESSAGE".equals(action)) {
            msgBytes = intent.getByteArrayExtra("mipush_payload");
            boolean hasNotified = intent.getBooleanExtra("mipush_notified", false);
            String msgId = intent.getStringExtra("messageId");
            int msgType = intent.getIntExtra("eventMessageType", -1);
            if (msgBytes == null) {
                MyLog.e("receiving an empty message, drop");
                PushClientReportManager.getInstance(this.sAppContext).reportEvent4ERROR(this.sAppContext.getPackageName(), intent, "receiving an empty message, drop");
                return null;
            }
            message = new XmPushActionContainer();
            try {
                XmPushThriftSerializeUtils.convertByteArrayToThriftObject(message, msgBytes);
                infoHolder = AppInfoHolder.getInstance(this.sAppContext);
                PushMetaInfo metaInfo = message.getMetaInfo();
                if (!(message.getAction() != ActionType.SendMessage || metaInfo == null || infoHolder.isPaused() || hasNotified)) {
                    metaInfo.putToExtra("mrt", receiveTime);
                    metaInfo.putToExtra("mat", Long.toString(System.currentTimeMillis()));
                    if (isHybridMsg(message)) {
                        MyLog.i("this is a mina's message, ack later");
                        metaInfo.putToExtra("__hybrid_message_ts", String.valueOf(metaInfo.getMessageTs()));
                        metaInfo.putToExtra("__hybrid_device_status", String.valueOf(XmPushThriftSerializeUtils.getDeviceStatus(this.sAppContext, message)));
                    } else {
                        ackMessage(message);
                    }
                }
                if (message.getAction() == ActionType.SendMessage && !message.isEncryptAction()) {
                    PushClientReportManager instance;
                    String packageName;
                    String str;
                    Object[] objArr;
                    if (!MIPushNotificationHelper.isBusinessMessage(message)) {
                        String str2 = "drop an un-encrypted messages. %1$s, %2$s";
                        Object[] objArr2 = new Object[2];
                        objArr2[0] = message.getPackageName();
                        objArr2[1] = metaInfo != null ? metaInfo.getId() : "";
                        MyLog.w(String.format(str2, objArr2));
                        instance = PushClientReportManager.getInstance(this.sAppContext);
                        packageName = this.sAppContext.getPackageName();
                        str = "drop an un-encrypted messages. %1$s, %2$s";
                        objArr = new Object[2];
                        objArr[0] = message.getPackageName();
                        objArr[1] = metaInfo != null ? metaInfo.getId() : "";
                        instance.reportEvent4ERROR(packageName, intent, String.format(str, objArr));
                        return null;
                    } else if (!(hasNotified && metaInfo.getExtra() != null && metaInfo.getExtra().containsKey("notify_effect"))) {
                        MyLog.w(String.format("drop an un-encrypted messages. %1$s, %2$s", new Object[]{message.getPackageName(), metaInfo.getId()}));
                        instance = PushClientReportManager.getInstance(this.sAppContext);
                        packageName = this.sAppContext.getPackageName();
                        str = "drop an un-encrypted messages. %1$s, %2$s";
                        objArr = new Object[2];
                        objArr[0] = message.getPackageName();
                        objArr[1] = metaInfo != null ? metaInfo.getId() : "";
                        instance.reportEvent4ERROR(packageName, intent, String.format(str, objArr));
                        return null;
                    }
                }
                if (infoHolder.appRegistered() || message.action == ActionType.Registration) {
                    if (!infoHolder.appRegistered() || !infoHolder.invalidated()) {
                        return processMessage(message, hasNotified, msgBytes, msgId, msgType);
                    }
                    if (message.action == ActionType.UnRegistration) {
                        infoHolder.clear();
                        MiPushClient.clearExtras(this.sAppContext);
                        PushMessageHandler.removeAllPushCallbackClass();
                    } else {
                        MiPushClient.unregisterPush(this.sAppContext);
                    }
                } else if (MIPushNotificationHelper.isBusinessMessage(message)) {
                    return processMessage(message, hasNotified, msgBytes, msgId, msgType);
                } else {
                    MyLog.e("receive message without registration. need re-register!");
                    PushClientReportManager.getInstance(this.sAppContext).reportEvent4ERROR(this.sAppContext.getPackageName(), intent, "receive message without registration. need re-register!");
                    tryToReinitialize();
                }
            } catch (Throwable e) {
                PushClientReportManager.getInstance(this.sAppContext).reportEvent4ERROR(this.sAppContext.getPackageName(), intent, e);
                MyLog.e(e);
            } catch (Throwable e2) {
                PushClientReportManager.getInstance(this.sAppContext).reportEvent4ERROR(this.sAppContext.getPackageName(), intent, e2);
                MyLog.e(e2);
            }
        } else if ("com.xiaomi.mipush.ERROR".equals(action)) {
            PushMessageInterface command = new MiPushCommandMessage();
            message = new XmPushActionContainer();
            try {
                msgBytes = intent.getByteArrayExtra("mipush_payload");
                if (msgBytes != null) {
                    XmPushThriftSerializeUtils.convertByteArrayToThriftObject(message, msgBytes);
                }
            } catch (TException e3) {
            }
            command.setCommand(String.valueOf(message.getAction()));
            command.setResultCode((long) intent.getIntExtra("mipush_error_code", 0));
            command.setReason(intent.getStringExtra("mipush_error_msg"));
            MyLog.e("receive a error message. code = " + intent.getIntExtra("mipush_error_code", 0) + ", msg= " + intent.getStringExtra("mipush_error_msg"));
            return command;
        } else if ("com.xiaomi.mipush.MESSAGE_ARRIVED".equals(action)) {
            msgBytes = intent.getByteArrayExtra("mipush_payload");
            if (msgBytes == null) {
                MyLog.e("message arrived: receiving an empty message, drop");
                return null;
            }
            message = new XmPushActionContainer();
            try {
                XmPushThriftSerializeUtils.convertByteArrayToThriftObject(message, msgBytes);
                infoHolder = AppInfoHolder.getInstance(this.sAppContext);
                if (MIPushNotificationHelper.isBusinessMessage(message)) {
                    MyLog.e("message arrived: receive ignore reg message, ignore!");
                } else if (!infoHolder.appRegistered()) {
                    MyLog.e("message arrived: receive message without registration. need unregister or re-register!");
                } else if (!infoHolder.appRegistered() || !infoHolder.invalidated()) {
                    return processMessage(message, msgBytes);
                } else {
                    MyLog.e("message arrived: app info is invalidated");
                }
            } catch (Throwable e22) {
                MyLog.e(e22);
            } catch (Throwable e222) {
                MyLog.e(e222);
            }
        }
        return null;
    }

    private PushMessageInterface processMessage(XmPushActionContainer container, byte[] decryptedContent) {
        try {
            TBase message = PushContainerHelper.getResponseMessageBodyFromContainer(this.sAppContext, container);
            if (message == null) {
                MyLog.e("message arrived: receiving an un-recognized message. " + container.action);
                return null;
            }
            ActionType action = container.getAction();
            MyLog.w("message arrived: processing an arrived message, action=" + action);
            switch (action) {
                case SendMessage:
                    XmPushActionSendMessage sendMsg = (XmPushActionSendMessage) message;
                    PushMessage actualMsg = sendMsg.getMessage();
                    if (actualMsg == null) {
                        MyLog.e("message arrived: receive an empty message without push content, drop it");
                        return null;
                    }
                    String key = null;
                    if (!(container.metaInfo == null || container.metaInfo.getExtra() == null)) {
                        key = (String) container.metaInfo.extra.get("jobkey");
                    }
                    PushMessageInterface pushMessage = PushMessageHelper.generateMessage(sendMsg, container.getMetaInfo(), false);
                    pushMessage.setArrivedMessage(true);
                    MyLog.w("message arrived: receive a message, msgid=" + actualMsg.getId() + ", jobkey=" + key);
                    return pushMessage;
                default:
                    return null;
            }
        } catch (Throwable e) {
            MyLog.e(e);
            MyLog.e("message arrived: receive a message but decrypt failed. report when click.");
            return null;
        } catch (Throwable e2) {
            MyLog.e(e2);
            MyLog.e("message arrived: receive a message which action string is not valid. is the reg expired?");
            return null;
        }
    }

    private PushMessageInterface processMessage(XmPushActionContainer container, boolean hasNotified, byte[] decryptedContent, String msgId, int msgType) {
        try {
            TBase message = PushContainerHelper.getResponseMessageBodyFromContainer(this.sAppContext, container);
            if (message == null) {
                MyLog.e("receiving an un-recognized message. " + container.action);
                PushClientReportManager.getInstance(this.sAppContext).reportEvent4ERROR(this.sAppContext.getPackageName(), PushClientReportHelper.getInterfaceIdByType(msgType), msgId, "receiving an un-recognized message.");
                return null;
            }
            ActionType action = container.getAction();
            MyLog.w("processing a message, action=" + action);
            XmPushActionRegistrationResult regResult;
            List<String> cmdArgs;
            switch (action) {
                case SendMessage:
                    if (!AppInfoHolder.getInstance(this.sAppContext).isPaused() || hasNotified) {
                        XmPushActionSendMessage sendMsg = (XmPushActionSendMessage) message;
                        PushMessage actualMsg = sendMsg.getMessage();
                        if (actualMsg == null) {
                            MyLog.e("receive an empty message without push content, drop it");
                            PushClientReportManager.getInstance(this.sAppContext).reportEvent4ERROR(this.sAppContext.getPackageName(), PushClientReportHelper.getInterfaceIdByType(msgType), msgId, "receive an empty message without push content, drop it");
                            return null;
                        }
                        if (hasNotified) {
                            if (MIPushNotificationHelper.isBusinessMessage(container)) {
                                MiPushClient.reportIgnoreRegMessageClicked(this.sAppContext, actualMsg.getId(), container.getMetaInfo(), container.packageName, actualMsg.getAppId());
                            } else {
                                MiPushClient.reportMessageClicked(this.sAppContext, actualMsg.getId(), container.getMetaInfo(), actualMsg.getAppId());
                            }
                        }
                        if (!hasNotified) {
                            if (!TextUtils.isEmpty(sendMsg.getAliasName()) && MiPushClient.aliasSetTime(this.sAppContext, sendMsg.getAliasName()) < 0) {
                                MiPushClient.addAlias(this.sAppContext, sendMsg.getAliasName());
                            } else if (!TextUtils.isEmpty(sendMsg.getTopic()) && MiPushClient.topicSubscribedTime(this.sAppContext, sendMsg.getTopic()) < 0) {
                                MiPushClient.addTopic(this.sAppContext, sendMsg.getTopic());
                            }
                        }
                        MiPushMessage pushMessage = null;
                        String key = null;
                        if (!(container.metaInfo == null || container.metaInfo.getExtra() == null)) {
                            key = (String) container.metaInfo.extra.get("jobkey");
                        }
                        if (TextUtils.isEmpty(key)) {
                            key = actualMsg.getId();
                        }
                        if (hasNotified || !isDuplicateMessage(this.sAppContext, key)) {
                            pushMessage = PushMessageHelper.generateMessage(sendMsg, container.getMetaInfo(), hasNotified);
                            if (pushMessage.getPassThrough() == 0 && !hasNotified && MIPushNotificationHelper.isNotifyForeground(pushMessage.getExtra())) {
                                MIPushNotificationHelper.notifyPushMessage(this.sAppContext, container, decryptedContent);
                                return null;
                            }
                            MyLog.w("receive a message, msgid=" + actualMsg.getId() + ", jobkey=" + key);
                            if (hasNotified && pushMessage.getExtra() != null && pushMessage.getExtra().containsKey("notify_effect")) {
                                Map<String, String> extra = pushMessage.getExtra();
                                String typeId = (String) extra.get("notify_effect");
                                Intent intent;
                                if (MIPushNotificationHelper.isBusinessMessage(container)) {
                                    intent = getNotificationMessageIntent(this.sAppContext, container.packageName, extra);
                                    intent.putExtra("eventMessageType", msgType);
                                    intent.putExtra("messageId", msgId);
                                    if (intent == null) {
                                        MyLog.w("Getting Intent fail from ignore reg message. ");
                                        PushClientReportManager.getInstance(this.sAppContext).reportEvent4ERROR(this.sAppContext.getPackageName(), PushClientReportHelper.getInterfaceIdByType(msgType), msgId, "Getting Intent fail from ignore reg message.");
                                        return null;
                                    }
                                    String payload = actualMsg.getPayload();
                                    if (!TextUtils.isEmpty(payload)) {
                                        intent.putExtra("payload", payload);
                                    }
                                    this.sAppContext.startActivity(intent);
                                    PushClientReportManager.getInstance(this.sAppContext).reportEvent(this.sAppContext.getPackageName(), PushClientReportHelper.getInterfaceIdByType(msgType), msgId, 3006, "business message is clicked typeId " + typeId);
                                } else {
                                    intent = getNotificationMessageIntent(this.sAppContext, this.sAppContext.getPackageName(), extra);
                                    if (intent != null) {
                                        if (!typeId.equals(PushConstants.NOTIFICATION_CLICK_WEB_PAGE)) {
                                            intent.putExtra("key_message", pushMessage);
                                            intent.putExtra("eventMessageType", msgType);
                                            intent.putExtra("messageId", msgId);
                                        }
                                        this.sAppContext.startActivity(intent);
                                        PushClientReportManager.getInstance(this.sAppContext).reportEvent(this.sAppContext.getPackageName(), PushClientReportHelper.getInterfaceIdByType(msgType), msgId, 1006, "notification message is clicked typeId " + typeId);
                                        if (typeId.equals(PushConstants.NOTIFICATION_CLICK_WEB_PAGE)) {
                                            PushClientReportManager.getInstance(this.sAppContext).reportEvent4NeedDrop(this.sAppContext.getPackageName(), PushClientReportHelper.getInterfaceIdByType(msgType), msgId, "try open web page typeId " + typeId);
                                        }
                                    }
                                }
                                return null;
                            }
                        }
                        MyLog.w("drop a duplicate message, key=" + key);
                        PushClientReportManager.getInstance(this.sAppContext).reportEvent4DUPMD(this.sAppContext.getPackageName(), PushClientReportHelper.getInterfaceIdByType(msgType), msgId, "drop a duplicate message, key=" + key);
                        if (container.getMetaInfo() == null && !hasNotified) {
                            ackMessage(sendMsg, container);
                        }
                        return pushMessage;
                    }
                    MyLog.w("receive a message in pause state. drop it");
                    PushClientReportManager.getInstance(this.sAppContext).reportEvent4NeedDrop(this.sAppContext.getPackageName(), PushClientReportHelper.getInterfaceIdByType(msgType), msgId, "receive a message in pause state. drop it");
                    return null;
                case Registration:
                    regResult = (XmPushActionRegistrationResult) message;
                    String requestId = AppInfoHolder.getInstance(this.sAppContext).appRegRequestId;
                    if (!TextUtils.isEmpty(requestId)) {
                        if (TextUtils.equals(requestId, regResult.getId())) {
                            AppInfoHolder.getInstance(this.sAppContext).appRegRequestId = null;
                            if (regResult.errorCode == 0) {
                                AppInfoHolder.getInstance(this.sAppContext).putRegIDAndSecret(regResult.regId, regResult.regSecret, regResult.region);
                            }
                            cmdArgs = null;
                            if (!TextUtils.isEmpty(regResult.regId)) {
                                cmdArgs = new ArrayList();
                                cmdArgs.add(regResult.regId);
                            }
                            PushMessageInterface commandMessage = PushMessageHelper.generateCommandMessage(Command.COMMAND_REGISTER.value, cmdArgs, regResult.errorCode, regResult.reason, null);
                            PushServiceClient.getInstance(this.sAppContext).processPendRequest();
                            return commandMessage;
                        }
                    }
                    MyLog.w("bad Registration result:");
                    return null;
                case UnRegistration:
                    if (((XmPushActionUnRegistrationResult) message).errorCode == 0) {
                        AppInfoHolder.getInstance(this.sAppContext).clear();
                        MiPushClient.clearExtras(this.sAppContext);
                    }
                    PushMessageHandler.removeAllPushCallbackClass();
                    break;
                case Subscription:
                    XmPushActionSubscriptionResult subResult = (XmPushActionSubscriptionResult) message;
                    if (subResult.errorCode == 0) {
                        MiPushClient.addTopic(this.sAppContext, subResult.getTopic());
                    }
                    cmdArgs = null;
                    if (!TextUtils.isEmpty(subResult.getTopic())) {
                        cmdArgs = new ArrayList();
                        cmdArgs.add(subResult.getTopic());
                    }
                    return PushMessageHelper.generateCommandMessage(Command.COMMAND_SUBSCRIBE_TOPIC.value, cmdArgs, subResult.errorCode, subResult.reason, subResult.getCategory());
                case UnSubscription:
                    XmPushActionUnSubscriptionResult unsubResult = (XmPushActionUnSubscriptionResult) message;
                    if (unsubResult.errorCode == 0) {
                        MiPushClient.removeTopic(this.sAppContext, unsubResult.getTopic());
                    }
                    cmdArgs = null;
                    if (!TextUtils.isEmpty(unsubResult.getTopic())) {
                        cmdArgs = new ArrayList();
                        cmdArgs.add(unsubResult.getTopic());
                    }
                    return PushMessageHelper.generateCommandMessage(Command.COMMAND_UNSUBSCRIBE_TOPIC.value, cmdArgs, unsubResult.errorCode, unsubResult.reason, unsubResult.getCategory());
                case Command:
                    PerfMessageHelper.collectPerfData(this.sAppContext.getPackageName(), this.sAppContext, message, ActionType.Command, decryptedContent.length);
                    XmPushActionCommandResult commandResult = (XmPushActionCommandResult) message;
                    String configName = commandResult.getCmdName();
                    cmdArgs = commandResult.getCmdArgs();
                    if (commandResult.errorCode == 0) {
                        if (TextUtils.equals(configName, Command.COMMAND_SET_ACCEPT_TIME.value) && cmdArgs != null && cmdArgs.size() > 1) {
                            MiPushClient.addAcceptTime(this.sAppContext, (String) cmdArgs.get(0), (String) cmdArgs.get(1));
                            if ("00:00".equals(cmdArgs.get(0)) && "00:00".equals(cmdArgs.get(1))) {
                                AppInfoHolder.getInstance(this.sAppContext).setPaused(true);
                            } else {
                                AppInfoHolder.getInstance(this.sAppContext).setPaused(false);
                            }
                            cmdArgs = getTimeForTimeZone(TimeZone.getTimeZone("GMT+08"), TimeZone.getDefault(), cmdArgs);
                        } else if (TextUtils.equals(configName, Command.COMMAND_SET_ALIAS.value) && cmdArgs != null && cmdArgs.size() > 0) {
                            MiPushClient.addAlias(this.sAppContext, (String) cmdArgs.get(0));
                        } else if (TextUtils.equals(configName, Command.COMMAND_UNSET_ALIAS.value) && cmdArgs != null && cmdArgs.size() > 0) {
                            MiPushClient.removeAlias(this.sAppContext, (String) cmdArgs.get(0));
                        } else if (TextUtils.equals(configName, Command.COMMAND_SET_ACCOUNT.value) && cmdArgs != null && cmdArgs.size() > 0) {
                            MiPushClient.addAccount(this.sAppContext, (String) cmdArgs.get(0));
                        } else if (TextUtils.equals(configName, Command.COMMAND_UNSET_ACCOUNT.value) && cmdArgs != null && cmdArgs.size() > 0) {
                            MiPushClient.removeAccount(this.sAppContext, (String) cmdArgs.get(0));
                        } else if (TextUtils.equals(configName, Command.COMMAND_CHK_VDEVID.value)) {
                            if (cmdArgs != null && cmdArgs.size() > 0) {
                                DeviceInfo.updateVirtDevId(this.sAppContext, (String) cmdArgs.get(0));
                            }
                            return null;
                        }
                    }
                    return PushMessageHelper.generateCommandMessage(configName, cmdArgs, commandResult.errorCode, commandResult.reason, commandResult.getCategory());
                case Notification:
                    PerfMessageHelper.collectPerfData(this.sAppContext.getPackageName(), this.sAppContext, message, ActionType.Notification, decryptedContent.length);
                    if (!(message instanceof XmPushActionAckNotification)) {
                        if (message instanceof XmPushActionNotification) {
                            XmPushActionNotification notification = (XmPushActionNotification) message;
                            if (!"registration id expired".equalsIgnoreCase(notification.type)) {
                                if (!"client_info_update_ok".equalsIgnoreCase(notification.type)) {
                                    if (!NotificationType.AwakeApp.value.equalsIgnoreCase(notification.type)) {
                                        if (!NotificationType.NormalClientConfigUpdate.value.equalsIgnoreCase(notification.type)) {
                                            if (!NotificationType.CustomClientConfigUpdate.value.equalsIgnoreCase(notification.type)) {
                                                if (!NotificationType.SyncInfoResult.value.equalsIgnoreCase(notification.type)) {
                                                    if (!NotificationType.ForceSync.value.equalsIgnoreCase(notification.type)) {
                                                        if (!NotificationType.GeoRegsiter.value.equalsIgnoreCase(notification.type)) {
                                                            if (!NotificationType.GeoUnregsiter.value.equalsIgnoreCase(notification.type)) {
                                                                if (!NotificationType.GeoSync.value.equalsIgnoreCase(notification.type)) {
                                                                    if (!NotificationType.CancelPushMessage.value.equals(notification.type)) {
                                                                        if (!NotificationType.HybridRegisterResult.value.equals(notification.type)) {
                                                                            if (!NotificationType.HybridUnregisterResult.value.equals(notification.type)) {
                                                                                if (NotificationType.PushLogUpload.value.equals(notification.type) && notification.getExtra() != null && notification.getExtra().containsKey("packages")) {
                                                                                    String[] packageNames = ((String) notification.getExtra().get("packages")).split(",");
                                                                                    if (!TextUtils.equals(this.sAppContext.getPackageName(), "com.xiaomi.xmsf")) {
                                                                                        Logger.uploadLogFile(this.sAppContext, false);
                                                                                        break;
                                                                                    }
                                                                                    Logger.uploadLogFile(this.sAppContext, true);
                                                                                    uploadAppLog(this.sAppContext, packageNames);
                                                                                    break;
                                                                                }
                                                                            }
                                                                            try {
                                                                                XmPushActionUnRegistrationResult unRegResult = new XmPushActionUnRegistrationResult();
                                                                                XmPushThriftSerializeUtils.convertByteArrayToThriftObject(unRegResult, notification.getBinaryExtra());
                                                                                MiPushClient4Hybrid.onReceiveUnregisterResult(this.sAppContext, unRegResult);
                                                                                break;
                                                                            } catch (Throwable e) {
                                                                                MyLog.e(e);
                                                                                break;
                                                                            }
                                                                        }
                                                                        try {
                                                                            regResult = new XmPushActionRegistrationResult();
                                                                            XmPushThriftSerializeUtils.convertByteArrayToThriftObject(regResult, notification.getBinaryExtra());
                                                                            MiPushClient4Hybrid.onReceiveRegisterResult(this.sAppContext, regResult);
                                                                            break;
                                                                        } catch (Throwable e2) {
                                                                            MyLog.e(e2);
                                                                            break;
                                                                        }
                                                                    }
                                                                    String notifyIdStr = "";
                                                                    int notifyId = -2;
                                                                    if (notification.getExtra() != null) {
                                                                        if (notification.getExtra().containsKey(PushConstants.PUSH_NOTIFY_ID)) {
                                                                            notifyIdStr = (String) notification.getExtra().get(PushConstants.PUSH_NOTIFY_ID);
                                                                            if (!TextUtils.isEmpty(notifyIdStr)) {
                                                                                try {
                                                                                    notifyId = Integer.parseInt(notifyIdStr);
                                                                                } catch (NumberFormatException e3) {
                                                                                    e3.printStackTrace();
                                                                                    notifyId = -2;
                                                                                }
                                                                            }
                                                                        }
                                                                        if (notifyId < -1) {
                                                                            String title = "";
                                                                            String description = "";
                                                                            if (notification.getExtra().containsKey(PushConstants.PUSH_TITLE)) {
                                                                                title = (String) notification.getExtra().get(PushConstants.PUSH_TITLE);
                                                                            }
                                                                            if (notification.getExtra().containsKey(PushConstants.PUSH_DESCRIPTION)) {
                                                                                description = (String) notification.getExtra().get(PushConstants.PUSH_DESCRIPTION);
                                                                            }
                                                                            MiPushClient.clearNotification(this.sAppContext, title, description);
                                                                            break;
                                                                        }
                                                                        MiPushClient.clearNotification(this.sAppContext, notifyId);
                                                                        break;
                                                                    }
                                                                }
                                                                GeoFenceRegMessageProcessor.getInstance(this.sAppContext).syncGeoFencing(notification);
                                                                break;
                                                            }
                                                            GeoFenceRegMessageProcessor.getInstance(this.sAppContext).processGeoFenceUnregistration(notification);
                                                            break;
                                                        }
                                                        GeoFenceRegMessageProcessor.getInstance(this.sAppContext).processGeoFenceRegistration(notification);
                                                        break;
                                                    }
                                                    MyLog.w("receive force sync notification");
                                                    SyncInfoHelper.doSyncInfoAsync(this.sAppContext, false);
                                                    break;
                                                }
                                                SyncInfoHelper.saveInfo(this.sAppContext, notification);
                                                break;
                                            }
                                            XmPushActionCustomConfig configMessage = new XmPushActionCustomConfig();
                                            try {
                                                XmPushThriftSerializeUtils.convertByteArrayToThriftObject(configMessage, notification.getBinaryExtra());
                                                OnlineConfigHelper.updateCustomConfigs(OnlineConfig.getInstance(this.sAppContext), configMessage);
                                                AssemblePushHelper.registerAssemblePush(this.sAppContext);
                                                AwakeManager.getInstance(this.sAppContext).setOnLineCmd(OnlineConfig.getInstance(this.sAppContext).getIntValue(ConfigKey.AwakeInfoUploadWaySwitch.getValue(), 0));
                                                PushClientReportHelper.checkConfigChange(this.sAppContext);
                                                break;
                                            } catch (Throwable e22) {
                                                MyLog.e(e22);
                                                break;
                                            }
                                        }
                                        XmPushActionNormalConfig configMessage2 = new XmPushActionNormalConfig();
                                        try {
                                            XmPushThriftSerializeUtils.convertByteArrayToThriftObject(configMessage2, notification.getBinaryExtra());
                                            OnlineConfigHelper.updateNormalConfigs(OnlineConfig.getInstance(this.sAppContext), configMessage2);
                                            AssemblePushHelper.registerAssemblePush(this.sAppContext);
                                            AwakeManager.getInstance(this.sAppContext).setOnLineCmd(OnlineConfig.getInstance(this.sAppContext).getIntValue(ConfigKey.AwakeInfoUploadWaySwitch.getValue(), 0));
                                            PushClientReportHelper.checkConfigChange(this.sAppContext);
                                            break;
                                        } catch (Throwable e222) {
                                            MyLog.e(e222);
                                            break;
                                        }
                                    } else if (container.isEncryptAction() && notification.getExtra() != null && notification.getExtra().containsKey("awake_info")) {
                                        AwakeHelper.doAwAppLogic(this.sAppContext, AppInfoHolder.getInstance(this.sAppContext).getAppID(), OnlineConfig.getInstance(this.sAppContext).getIntValue(ConfigKey.AwakeInfoUploadWaySwitch.getValue(), 0), (String) notification.getExtra().get("awake_info"));
                                        break;
                                    }
                                } else if (notification.getExtra() != null && notification.getExtra().containsKey("app_version")) {
                                    AppInfoHolder.getInstance(this.sAppContext).updateVersionName((String) notification.getExtra().get("app_version"));
                                    break;
                                }
                            }
                            List<String> allAlias = MiPushClient.getAllAlias(this.sAppContext);
                            List<String> allTopic = MiPushClient.getAllTopic(this.sAppContext);
                            List<String> allUserAccount = MiPushClient.getAllUserAccount(this.sAppContext);
                            String acceptTime = MiPushClient.getAcceptTime(this.sAppContext);
                            MiPushClient.reInitialize(this.sAppContext, RegistrationReason.RegIdExpired);
                            for (String alias : allAlias) {
                                MiPushClient.removeAlias(this.sAppContext, alias);
                                MiPushClient.setAlias(this.sAppContext, alias, null);
                            }
                            for (String topic : allTopic) {
                                MiPushClient.removeTopic(this.sAppContext, topic);
                                MiPushClient.subscribe(this.sAppContext, topic, null);
                            }
                            for (String userAccount : allUserAccount) {
                                MiPushClient.removeAccount(this.sAppContext, userAccount);
                                MiPushClient.setUserAccount(this.sAppContext, userAccount, null);
                            }
                            String[] splitAcceptTime = acceptTime.split(",");
                            if (splitAcceptTime.length == 2) {
                                MiPushClient.removeAcceptTime(this.sAppContext);
                                MiPushClient.addAcceptTime(this.sAppContext, splitAcceptTime[0], splitAcceptTime[1]);
                                break;
                            }
                        }
                    }
                    XmPushActionAckNotification ackNotification = (XmPushActionAckNotification) message;
                    String messageId = ackNotification.getId();
                    if (!NotificationType.DisablePushMessage.value.equalsIgnoreCase(ackNotification.type)) {
                        if (!NotificationType.EnablePushMessage.value.equalsIgnoreCase(ackNotification.type)) {
                            if (NotificationType.ThirdPartyRegUpdate.value.equalsIgnoreCase(ackNotification.type)) {
                                processSendTokenAckNotification(ackNotification);
                                break;
                            }
                        } else if (ackNotification.errorCode != 0) {
                            if (!"syncing".equals(OperatePushHelper.getInstance(this.sAppContext).getSyncStatus(RetryType.ENABLE_PUSH))) {
                                OperatePushHelper.getInstance(this.sAppContext).removeOperateMessage(messageId);
                                break;
                            }
                            synchronized (OperatePushHelper.class) {
                                if (OperatePushHelper.getInstance(this.sAppContext).isMessageOperating(messageId)) {
                                    if (OperatePushHelper.getInstance(this.sAppContext).getRetryCount(messageId) < 10) {
                                        OperatePushHelper.getInstance(this.sAppContext).increaseRetryCount(messageId);
                                        PushServiceClient.getInstance(this.sAppContext).sendPushEnableDisableMessage(false, messageId);
                                    } else {
                                        OperatePushHelper.getInstance(this.sAppContext).removeOperateMessage(messageId);
                                    }
                                }
                            }
                        } else {
                            synchronized (OperatePushHelper.class) {
                                if (OperatePushHelper.getInstance(this.sAppContext).isMessageOperating(messageId)) {
                                    OperatePushHelper.getInstance(this.sAppContext).removeOperateMessage(messageId);
                                    if ("syncing".equals(OperatePushHelper.getInstance(this.sAppContext).getSyncStatus(RetryType.ENABLE_PUSH))) {
                                        OperatePushHelper.getInstance(this.sAppContext).putSyncStatus(RetryType.ENABLE_PUSH, "synced");
                                    }
                                }
                            }
                        }
                    } else if (ackNotification.errorCode != 0) {
                        if (!"syncing".equals(OperatePushHelper.getInstance(this.sAppContext).getSyncStatus(RetryType.DISABLE_PUSH))) {
                            OperatePushHelper.getInstance(this.sAppContext).removeOperateMessage(messageId);
                            break;
                        }
                        synchronized (OperatePushHelper.class) {
                            if (OperatePushHelper.getInstance(this.sAppContext).isMessageOperating(messageId)) {
                                if (OperatePushHelper.getInstance(this.sAppContext).getRetryCount(messageId) < 10) {
                                    OperatePushHelper.getInstance(this.sAppContext).increaseRetryCount(messageId);
                                    PushServiceClient.getInstance(this.sAppContext).sendPushEnableDisableMessage(true, messageId);
                                } else {
                                    OperatePushHelper.getInstance(this.sAppContext).removeOperateMessage(messageId);
                                }
                            }
                        }
                    } else {
                        synchronized (OperatePushHelper.class) {
                            if (OperatePushHelper.getInstance(this.sAppContext).isMessageOperating(messageId)) {
                                OperatePushHelper.getInstance(this.sAppContext).removeOperateMessage(messageId);
                                if ("syncing".equals(OperatePushHelper.getInstance(this.sAppContext).getSyncStatus(RetryType.DISABLE_PUSH))) {
                                    OperatePushHelper.getInstance(this.sAppContext).putSyncStatus(RetryType.DISABLE_PUSH, "synced");
                                    MiPushClient.clearNotification(this.sAppContext);
                                    MiPushClient.clearLocalNotificationType(this.sAppContext);
                                    PushMessageHandler.removeAllPushCallbackClass();
                                    PushServiceClient.getInstance(this.sAppContext).closePush();
                                }
                            }
                        }
                    }
                    break;
            }
            return null;
        } catch (Throwable e2222) {
            MyLog.e(e2222);
            reportDecryptFail(container);
            PushClientReportManager.getInstance(this.sAppContext).reportEvent4ERROR(this.sAppContext.getPackageName(), PushClientReportHelper.getInterfaceIdByType(msgType), msgId, e2222);
            return null;
        } catch (Throwable e22222) {
            MyLog.e(e22222);
            MyLog.e("receive a message which action string is not valid. is the reg expired?");
            PushClientReportManager.getInstance(this.sAppContext).reportEvent4ERROR(this.sAppContext.getPackageName(), PushClientReportHelper.getInterfaceIdByType(msgType), msgId, e22222);
            return null;
        }
    }

    private void processSingleTokenACK(String messageId, long errorCode, AssemblePush type) {
        RetryType retryType = AssemblePushInfoHelper.getRetryType(type);
        if (retryType != null) {
            if (errorCode == 0) {
                synchronized (OperatePushHelper.class) {
                    if (OperatePushHelper.getInstance(this.sAppContext).isMessageOperating(messageId)) {
                        OperatePushHelper.getInstance(this.sAppContext).removeOperateMessage(messageId);
                        if ("syncing".equals(OperatePushHelper.getInstance(this.sAppContext).getSyncStatus(retryType))) {
                            OperatePushHelper.getInstance(this.sAppContext).putSyncStatus(retryType, "synced");
                        }
                    }
                }
            } else if ("syncing".equals(OperatePushHelper.getInstance(this.sAppContext).getSyncStatus(retryType))) {
                synchronized (OperatePushHelper.class) {
                    if (OperatePushHelper.getInstance(this.sAppContext).isMessageOperating(messageId)) {
                        if (OperatePushHelper.getInstance(this.sAppContext).getRetryCount(messageId) < 10) {
                            OperatePushHelper.getInstance(this.sAppContext).increaseRetryCount(messageId);
                            PushServiceClient.getInstance(this.sAppContext).sendAssemblePushTokenCommon(messageId, retryType, type);
                        } else {
                            OperatePushHelper.getInstance(this.sAppContext).removeOperateMessage(messageId);
                        }
                    }
                }
            } else {
                OperatePushHelper.getInstance(this.sAppContext).removeOperateMessage(messageId);
            }
        }
    }

    private void processSendTokenAckNotification(XmPushActionAckNotification ackNotification) {
        MyLog.v("ASSEMBLE_PUSH : " + ackNotification.toString());
        String messageId = ackNotification.getId();
        Map<String, String> extra = ackNotification.getExtra();
        if (extra != null) {
            String regInfo = (String) extra.get("RegInfo");
            if (!TextUtils.isEmpty(regInfo)) {
                if (regInfo.contains("brand:" + PhoneBrand.FCM.name())) {
                    MyLog.w("ASSEMBLE_PUSH : receive fcm token sync ack");
                    AssemblePushHelper.saveAssemblePushTokenAfterAck(this.sAppContext, AssemblePush.ASSEMBLE_PUSH_FCM, regInfo);
                    processSingleTokenACK(messageId, ackNotification.errorCode, AssemblePush.ASSEMBLE_PUSH_FCM);
                } else if (regInfo.contains("brand:" + PhoneBrand.HUAWEI.name())) {
                    MyLog.w("ASSEMBLE_PUSH : receive hw token sync ack");
                    AssemblePushHelper.saveAssemblePushTokenAfterAck(this.sAppContext, AssemblePush.ASSEMBLE_PUSH_HUAWEI, regInfo);
                    processSingleTokenACK(messageId, ackNotification.errorCode, AssemblePush.ASSEMBLE_PUSH_HUAWEI);
                } else if (regInfo.contains("brand:" + PhoneBrand.OPPO.name())) {
                    MyLog.w("ASSEMBLE_PUSH : receive COS token sync ack");
                    AssemblePushHelper.saveAssemblePushTokenAfterAck(this.sAppContext, AssemblePush.ASSEMBLE_PUSH_COS, regInfo);
                    processSingleTokenACK(messageId, ackNotification.errorCode, AssemblePush.ASSEMBLE_PUSH_COS);
                }
            }
        }
    }

    public List<String> getTimeForTimeZone(TimeZone standTimeZone, TimeZone currentTimeZone, List<String> cmdArgs) {
        if (standTimeZone.equals(currentTimeZone)) {
            return cmdArgs;
        }
        long standDiff = (long) (((standTimeZone.getRawOffset() - currentTimeZone.getRawOffset()) / 1000) / 60);
        long startHour = Long.parseLong(((String) cmdArgs.get(0)).split(":")[0]);
        long startMin = Long.parseLong(((String) cmdArgs.get(0)).split(":")[1]);
        long startTime = ((((60 * startHour) + startMin) - standDiff) + 1440) % 1440;
        long endTime = ((((60 * Long.parseLong(((String) cmdArgs.get(1)).split(":")[0])) + Long.parseLong(((String) cmdArgs.get(1)).split(":")[1])) - standDiff) + 1440) % 1440;
        ArrayList<String> arguments = new ArrayList();
        arguments.add(String.format("%1$02d:%2$02d", new Object[]{Long.valueOf(startTime / 60), Long.valueOf(startTime % 60)}));
        arguments.add(String.format("%1$02d:%2$02d", new Object[]{Long.valueOf(endTime / 60), Long.valueOf(endTime % 60)}));
        return arguments;
    }

    private void tryToReinitialize() {
        SharedPreferences sp = this.sAppContext.getSharedPreferences("mipush_extra", 0);
        long current = System.currentTimeMillis();
        if (Math.abs(current - sp.getLong("last_reinitialize", 0)) > 1800000) {
            MiPushClient.reInitialize(this.sAppContext, RegistrationReason.PackageUnregistered);
            sp.edit().putLong("last_reinitialize", current).commit();
        }
    }

    private void reportDecryptFail(XmPushActionContainer container) {
        MyLog.w("receive a message but decrypt failed. report now.");
        XmPushActionNotification reportMessage = new XmPushActionNotification(container.getMetaInfo().id, false);
        reportMessage.setType(NotificationType.DecryptMessageFail.value);
        reportMessage.setAppId(container.getAppid());
        reportMessage.setPackageName(container.packageName);
        reportMessage.extra = new HashMap();
        reportMessage.extra.put("regid", MiPushClient.getRegId(this.sAppContext));
        PushServiceClient.getInstance(this.sAppContext).sendMessage(reportMessage, ActionType.Notification, false, null);
    }

    private void ackMessage(XmPushActionContainer container) {
        PushMetaInfo metaInfo = container.getMetaInfo();
        XmPushActionAckMessage ackMessage = new XmPushActionAckMessage();
        ackMessage.setAppId(container.getAppid());
        ackMessage.setId(metaInfo.getId());
        ackMessage.setMessageTs(metaInfo.getMessageTs());
        if (!TextUtils.isEmpty(metaInfo.getTopic())) {
            ackMessage.setTopic(metaInfo.getTopic());
        }
        ackMessage.setDeviceStatus(XmPushThriftSerializeUtils.getDeviceStatus(this.sAppContext, container));
        PushServiceClient.getInstance(this.sAppContext).sendMessage(ackMessage, ActionType.AckMessage, false, container.getMetaInfo());
    }

    private void ackMessage(XmPushActionSendMessage sendMsg, XmPushActionContainer container) {
        PushMetaInfo metaInfo = container.getMetaInfo();
        XmPushActionAckMessage ackMessage = new XmPushActionAckMessage();
        ackMessage.setAppId(sendMsg.getAppId());
        ackMessage.setId(sendMsg.getId());
        ackMessage.setMessageTs(sendMsg.getMessage().getCreateAt());
        if (!TextUtils.isEmpty(sendMsg.getTopic())) {
            ackMessage.setTopic(sendMsg.getTopic());
        }
        if (!TextUtils.isEmpty(sendMsg.getAliasName())) {
            ackMessage.setAliasName(sendMsg.getAliasName());
        }
        ackMessage.setDeviceStatus(XmPushThriftSerializeUtils.getDeviceStatus(this.sAppContext, container));
        PushServiceClient.getInstance(this.sAppContext).sendMessage(ackMessage, ActionType.AckMessage, metaInfo);
    }

    private static boolean isDuplicateMessage(Context context, String dupKey) {
        boolean z = false;
        synchronized (lock) {
            AppInfoHolder.getInstance(context);
            SharedPreferences sp = AppInfoHolder.getSharedPreferences(context);
            if (mCachedMsgIds == null) {
                String[] keys = sp.getString("pref_msg_ids", "").split(",");
                mCachedMsgIds = new LinkedList();
                for (String key : keys) {
                    mCachedMsgIds.add(key);
                }
            }
            if (mCachedMsgIds.contains(dupKey)) {
                z = true;
            } else {
                mCachedMsgIds.add(dupKey);
                if (mCachedMsgIds.size() > 25) {
                    mCachedMsgIds.poll();
                }
                String newDupKeys = XMStringUtils.join(mCachedMsgIds, ",");
                Editor ed = sp.edit();
                ed.putString("pref_msg_ids", newDupKeys);
                SharedPrefsCompat.apply(ed);
            }
        }
        return z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0042  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0042  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Intent getNotificationMessageIntent(Context context, String pkgName, Map<String, String> extra) {
        MalformedURLException e;
        if (extra != null) {
            if (extra.containsKey("notify_effect")) {
                String typeId = (String) extra.get("notify_effect");
                int intentFlag = -1;
                String intentFlagStr = (String) extra.get("intent_flag");
                try {
                    if (!TextUtils.isEmpty(intentFlagStr)) {
                        intentFlag = Integer.parseInt(intentFlagStr);
                    }
                } catch (NumberFormatException e2) {
                    MyLog.e("Cause by intent_flag: " + e2.getMessage());
                }
                Intent intent = null;
                if (PushConstants.NOTIFICATION_CLICK_DEFAULT.equals(typeId)) {
                    try {
                        intent = context.getPackageManager().getLaunchIntentForPackage(pkgName);
                    } catch (Exception e3) {
                        MyLog.e("Cause: " + e3.getMessage());
                    }
                } else if (PushConstants.NOTIFICATION_CLICK_INTENT.equals(typeId)) {
                    if (extra.containsKey("intent_uri")) {
                        String intentStr = (String) extra.get("intent_uri");
                        if (intentStr != null) {
                            try {
                                intent = Intent.parseUri(intentStr, 1);
                                intent.setPackage(pkgName);
                            } catch (URISyntaxException e4) {
                                MyLog.e("Cause: " + e4.getMessage());
                            }
                        }
                    } else {
                        if (extra.containsKey("class_name")) {
                            String className = (String) extra.get("class_name");
                            intent = new Intent();
                            intent.setComponent(new ComponentName(pkgName, className));
                        }
                    }
                } else if (PushConstants.NOTIFICATION_CLICK_WEB_PAGE.equals(typeId)) {
                    String uri = (String) extra.get("web_uri");
                    if (uri != null) {
                        String tmp = uri.trim();
                        if (!(tmp.startsWith("http://") || tmp.startsWith("https://"))) {
                            tmp = "http://" + tmp;
                        }
                        try {
                            String protocol = new URL(tmp).getProtocol();
                            if ("http".equals(protocol) || "https".equals(protocol)) {
                                Intent intent2 = new Intent("android.intent.action.VIEW");
                                try {
                                    intent2.setData(Uri.parse(tmp));
                                    intent = intent2;
                                } catch (MalformedURLException e5) {
                                    e = e5;
                                    intent = intent2;
                                    MyLog.e("Cause: " + e.getMessage());
                                    if (intent != null) {
                                    }
                                    return null;
                                }
                            }
                        } catch (MalformedURLException e6) {
                            e = e6;
                            MyLog.e("Cause: " + e.getMessage());
                            if (intent != null) {
                            }
                            return null;
                        }
                    }
                }
                if (intent != null) {
                    if (intentFlag >= 0) {
                        intent.setFlags(intentFlag);
                    }
                    intent.addFlags(268435456);
                    try {
                        if (context.getPackageManager().resolveActivity(intent, 65536) != null) {
                            return intent;
                        }
                    } catch (Exception e32) {
                        MyLog.e("Cause: " + e32.getMessage());
                    }
                }
                return null;
            }
        }
        return null;
    }

    private boolean isHybridMsg(XmPushActionContainer message) {
        if (!TextUtils.equals("com.miui.hybrid", message.getPackageName()) && !TextUtils.equals("com.miui.hybrid.loader", message.getPackageName())) {
            return false;
        }
        Map<String, String> extra = message.getMetaInfo() == null ? null : message.getMetaInfo().getExtra();
        if (extra == null) {
            return false;
        }
        String action = (String) extra.get("push_server_action");
        if (TextUtils.equals(action, "hybrid_message") || TextUtils.equals(action, "platform_message")) {
            return true;
        }
        return false;
    }

    private void uploadAppLog(final Context context, final String[] packageNames) {
        ScheduledJobManager.getInstance(context).addOneShootJob(new Runnable() {
            public void run() {
                int i = 0;
                while (i < packageNames.length) {
                    try {
                        if (!TextUtils.isEmpty(packageNames[i])) {
                            if (i > 0) {
                                Thread.sleep(((long) ((Math.random() * 2.0d) + 1.0d)) * 1000);
                            }
                            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageNames[i], 4);
                            if (packageInfo != null) {
                                PushMessageProcessor.this.sendUploadLogIntent(context, packageInfo);
                            }
                        }
                        i++;
                    } catch (Throwable t) {
                        MyLog.e(t);
                        return;
                    }
                }
            }
        });
    }

    private void sendUploadLogIntent(Context context, PackageInfo info) {
        ServiceInfo[] serviceInfos = info.services;
        if (serviceInfos != null) {
            for (ServiceInfo serviceInfo : serviceInfos) {
                if (serviceInfo.exported && serviceInfo.enabled && "com.xiaomi.mipush.sdk.PushMessageHandler".equals(serviceInfo.name) && !context.getPackageName().equals(serviceInfo.packageName)) {
                    try {
                        Intent serviceIntent = new Intent();
                        serviceIntent.setClassName(serviceInfo.packageName, serviceInfo.name);
                        serviceIntent.setAction("com.xiaomi.mipush.sdk.SYNC_LOG");
                        PushMessageHandler.addJob(context, serviceIntent);
                        return;
                    } catch (Throwable th) {
                        return;
                    }
                }
            }
        }
    }
}
