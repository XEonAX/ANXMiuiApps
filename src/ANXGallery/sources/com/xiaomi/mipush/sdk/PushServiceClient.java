package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.database.ContentObserver;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.channel.commonutils.string.MD5;
import com.xiaomi.push.clientreport.PerfMessageHelper;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.push.service.PacketHelper;
import com.xiaomi.push.service.PushConstants;
import com.xiaomi.push.service.PushProvision;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.BootModeType;
import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import com.xiaomi.xmpush.thrift.ConfigKey;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.PushMetaInfo;
import com.xiaomi.xmpush.thrift.XmPushActionContainer;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushActionRegistration;
import com.xiaomi.xmpush.thrift.XmPushActionUnRegistration;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.thrift.TBase;

public class PushServiceClient {
    private static boolean isBind = false;
    private static PushServiceClient sInstance;
    private static final ArrayList<BufferedRequest> sPendingRequest = new ArrayList();
    private Handler handler = null;
    private boolean isConnectingService = false;
    private Messenger mClientMessenger;
    private Context mContext;
    private Integer mDeviceProvisioned = null;
    private boolean mIsMiuiPushServiceEnabled = false;
    private String mSession;
    private List<Message> pendingMessages = new ArrayList();
    private Intent registerTask = null;

    static class BufferedRequest<T extends TBase<T, ?>> {
        ActionType actionType;
        boolean encrypt;
        T message;

        BufferedRequest() {
        }
    }

    public static synchronized PushServiceClient getInstance(Context context) {
        PushServiceClient pushServiceClient;
        synchronized (PushServiceClient.class) {
            if (sInstance == null) {
                sInstance = new PushServiceClient(context);
            }
            pushServiceClient = sInstance;
        }
        return pushServiceClient;
    }

    private PushServiceClient(Context context) {
        this.mContext = context.getApplicationContext();
        this.mSession = null;
        this.mIsMiuiPushServiceEnabled = serviceInstalled();
        isBind = useBind();
        this.handler = new Handler(Looper.getMainLooper()) {
            public void dispatchMessage(Message msg) {
                switch (msg.what) {
                    case 19:
                        String messageId = msg.obj;
                        int statusFlag = msg.arg1;
                        synchronized (OperatePushHelper.class) {
                            if (OperatePushHelper.getInstance(PushServiceClient.this.mContext).isMessageOperating(messageId)) {
                                if (OperatePushHelper.getInstance(PushServiceClient.this.mContext).getRetryCount(messageId) < 10) {
                                    if (RetryType.DISABLE_PUSH.ordinal() == statusFlag && "syncing".equals(OperatePushHelper.getInstance(PushServiceClient.this.mContext).getSyncStatus(RetryType.DISABLE_PUSH))) {
                                        PushServiceClient.this.retryPolicy(messageId, RetryType.DISABLE_PUSH, true, null);
                                    } else if (RetryType.ENABLE_PUSH.ordinal() == statusFlag && "syncing".equals(OperatePushHelper.getInstance(PushServiceClient.this.mContext).getSyncStatus(RetryType.ENABLE_PUSH))) {
                                        PushServiceClient.this.retryPolicy(messageId, RetryType.ENABLE_PUSH, true, null);
                                    } else if (RetryType.UPLOAD_HUAWEI_TOKEN.ordinal() == statusFlag && "syncing".equals(OperatePushHelper.getInstance(PushServiceClient.this.mContext).getSyncStatus(RetryType.UPLOAD_HUAWEI_TOKEN))) {
                                        PushServiceClient.this.retryPolicy(messageId, RetryType.UPLOAD_HUAWEI_TOKEN, false, AssemblePushHelper.getAssemblePushExtra(PushServiceClient.this.mContext, AssemblePush.ASSEMBLE_PUSH_HUAWEI));
                                    } else if (RetryType.UPLOAD_FCM_TOKEN.ordinal() == statusFlag && "syncing".equals(OperatePushHelper.getInstance(PushServiceClient.this.mContext).getSyncStatus(RetryType.UPLOAD_FCM_TOKEN))) {
                                        PushServiceClient.this.retryPolicy(messageId, RetryType.UPLOAD_FCM_TOKEN, false, AssemblePushHelper.getAssemblePushExtra(PushServiceClient.this.mContext, AssemblePush.ASSEMBLE_PUSH_FCM));
                                    } else if (RetryType.UPLOAD_COS_TOKEN.ordinal() == statusFlag && "syncing".equals(OperatePushHelper.getInstance(PushServiceClient.this.mContext).getSyncStatus(RetryType.UPLOAD_COS_TOKEN))) {
                                        PushServiceClient.this.retryPolicy(messageId, RetryType.UPLOAD_COS_TOKEN, false, AssemblePushHelper.getAssemblePushExtra(PushServiceClient.this.mContext, AssemblePush.ASSEMBLE_PUSH_COS));
                                    }
                                    OperatePushHelper.getInstance(PushServiceClient.this.mContext).increaseRetryCount(messageId);
                                } else {
                                    OperatePushHelper.getInstance(PushServiceClient.this.mContext).removeOperateMessage(messageId);
                                }
                            }
                        }
                        return;
                    default:
                        return;
                }
            }
        };
        Intent intent = createGlobalServiceIntent();
        if (intent != null) {
            startServiceSafely(intent);
        }
    }

    private synchronized void saveServiceBootMode(int bootMode) {
        this.mContext.getSharedPreferences("mipush_extra", 0).edit().putInt("service_boot_mode", bootMode).commit();
    }

    private synchronized int getServiceBootMode() {
        return this.mContext.getSharedPreferences("mipush_extra", 0).getInt("service_boot_mode", -1);
    }

    public final void register(XmPushActionRegistration regData, boolean isEnvChanage) {
        this.registerTask = null;
        AppInfoHolder.getInstance(this.mContext).appRegRequestId = regData.getId();
        Intent intent = createServiceIntent();
        byte[] msgBytes = XmPushThriftSerializeUtils.convertThriftObjectToBytes(PushContainerHelper.generateRequestContainer(this.mContext, regData, ActionType.Registration));
        if (msgBytes == null) {
            MyLog.w("register fail, because msgBytes is null.");
            return;
        }
        intent.setAction("com.xiaomi.mipush.REGISTER_APP");
        intent.putExtra("mipush_app_id", AppInfoHolder.getInstance(this.mContext).getAppID());
        intent.putExtra("mipush_payload", msgBytes);
        intent.putExtra("mipush_session", this.mSession);
        intent.putExtra("mipush_env_chanage", isEnvChanage);
        intent.putExtra("mipush_env_type", AppInfoHolder.getInstance(this.mContext).getEnvType());
        if (Network.hasNetwork(this.mContext) && isProvisioned()) {
            callService(intent);
        } else {
            this.registerTask = intent;
        }
    }

    public void awakePushService() {
        startServiceSafely(createServiceIntent());
    }

    public final void unregister(XmPushActionUnRegistration unregData) {
        byte[] msgBytes = XmPushThriftSerializeUtils.convertThriftObjectToBytes(PushContainerHelper.generateRequestContainer(this.mContext, unregData, ActionType.UnRegistration));
        if (msgBytes == null) {
            MyLog.w("unregister fail, because msgBytes is null.");
            return;
        }
        Intent intent = createServiceIntent();
        intent.setAction("com.xiaomi.mipush.UNREGISTER_APP");
        intent.putExtra("mipush_app_id", AppInfoHolder.getInstance(this.mContext).getAppID());
        intent.putExtra("mipush_payload", msgBytes);
        callService(intent);
    }

    public final void closePush() {
        Intent intent = createServiceIntent();
        intent.setAction("com.xiaomi.mipush.DISABLE_PUSH");
        callService(intent);
    }

    public final void sendPushEnableDisableMessage(boolean isClose) {
        sendPushEnableDisableMessage(isClose, null);
    }

    public final void sendPushEnableDisableMessage(boolean isClose, String messageId) {
        if (isClose) {
            OperatePushHelper.getInstance(this.mContext).putSyncStatus(RetryType.DISABLE_PUSH, "syncing");
            OperatePushHelper.getInstance(this.mContext).putSyncStatus(RetryType.ENABLE_PUSH, "");
            retryPolicy(messageId, RetryType.DISABLE_PUSH, true, null);
            return;
        }
        OperatePushHelper.getInstance(this.mContext).putSyncStatus(RetryType.ENABLE_PUSH, "syncing");
        OperatePushHelper.getInstance(this.mContext).putSyncStatus(RetryType.DISABLE_PUSH, "");
        retryPolicy(messageId, RetryType.ENABLE_PUSH, true, null);
    }

    public final void sendAssemblePushTokenCommon(String messageId, RetryType retryType, AssemblePush pushType) {
        OperatePushHelper.getInstance(this.mContext).putSyncStatus(retryType, "syncing");
        retryPolicy(messageId, retryType, false, AssemblePushHelper.getAssemblePushExtra(this.mContext, pushType));
    }

    void send3rdPushHint(int level, String descrition) {
        Intent intent = createServiceIntent();
        intent.setAction("com.xiaomi.mipush.thirdparty");
        intent.putExtra("com.xiaomi.mipush.thirdparty_LEVEL", level);
        intent.putExtra("com.xiaomi.mipush.thirdparty_DESC", descrition);
        startServiceSafely(intent);
    }

    private void retryPolicy(String messageId, RetryType type, boolean expand, HashMap<String, String> extra) {
        if (AppInfoHolder.getInstance(this.mContext).checkAppInfo() && Network.hasNetwork(this.mContext)) {
            XmPushActionNotification notification = new XmPushActionNotification();
            notification.setRequireAck(true);
            Intent intent = createServiceIntent();
            XmPushActionNotification operatePushMessage = null;
            if (TextUtils.isEmpty(messageId)) {
                messageId = PacketHelper.generatePacketID();
                notification.setId(messageId);
                if (expand) {
                    operatePushMessage = new XmPushActionNotification(messageId, true);
                }
                synchronized (OperatePushHelper.class) {
                    OperatePushHelper.getInstance(this.mContext).resetOperateMessage(messageId);
                }
            } else {
                notification.setId(messageId);
                if (expand) {
                    operatePushMessage = new XmPushActionNotification(messageId, true);
                }
            }
            switch (type) {
                case DISABLE_PUSH:
                    notification.setType(NotificationType.DisablePushMessage.value);
                    operatePushMessage.setType(NotificationType.DisablePushMessage.value);
                    if (extra != null) {
                        notification.setExtra(extra);
                        operatePushMessage.setExtra(extra);
                    }
                    intent.setAction("com.xiaomi.mipush.DISABLE_PUSH_MESSAGE");
                    break;
                case ENABLE_PUSH:
                    notification.setType(NotificationType.EnablePushMessage.value);
                    operatePushMessage.setType(NotificationType.EnablePushMessage.value);
                    if (extra != null) {
                        notification.setExtra(extra);
                        operatePushMessage.setExtra(extra);
                    }
                    intent.setAction("com.xiaomi.mipush.ENABLE_PUSH_MESSAGE");
                    break;
                case UPLOAD_HUAWEI_TOKEN:
                case UPLOAD_FCM_TOKEN:
                case UPLOAD_COS_TOKEN:
                    notification.setType(NotificationType.ThirdPartyRegUpdate.value);
                    if (extra != null) {
                        notification.setExtra(extra);
                        break;
                    }
                    break;
            }
            notification.setAppId(AppInfoHolder.getInstance(this.mContext).getAppID());
            notification.setPackageName(this.mContext.getPackageName());
            sendMessage(notification, ActionType.Notification, false, null);
            if (expand) {
                operatePushMessage.setAppId(AppInfoHolder.getInstance(this.mContext).getAppID());
                operatePushMessage.setPackageName(this.mContext.getPackageName());
                byte[] msgBytes = XmPushThriftSerializeUtils.convertThriftObjectToBytes(PushContainerHelper.generateRequestContainer(this.mContext, operatePushMessage, ActionType.Notification, false, this.mContext.getPackageName(), AppInfoHolder.getInstance(this.mContext).getAppID()));
                if (msgBytes != null) {
                    PerfMessageHelper.collectPerfData(this.mContext.getPackageName(), this.mContext, operatePushMessage, ActionType.Notification, msgBytes.length);
                    intent.putExtra("mipush_payload", msgBytes);
                    intent.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
                    intent.putExtra("mipush_app_id", AppInfoHolder.getInstance(this.mContext).getAppID());
                    intent.putExtra("mipush_app_token", AppInfoHolder.getInstance(this.mContext).getAppToken());
                    callService(intent);
                }
            }
            Message msg = Message.obtain();
            msg.what = 19;
            int flag = type.ordinal();
            msg.obj = messageId;
            msg.arg1 = flag;
            this.handler.sendMessageDelayed(msg, 5000);
        }
    }

    public final <T extends TBase<T, ?>> void sendMessage(T packet, ActionType actionType, PushMetaInfo metaInfo) {
        sendMessage(packet, actionType, !actionType.equals(ActionType.Registration), metaInfo);
    }

    public final <T extends TBase<T, ?>> void sendMessage(T packet, ActionType actionType, boolean encrypt, PushMetaInfo metaInfo, boolean isCache) {
        sendMessage(packet, actionType, encrypt, true, metaInfo, isCache);
    }

    public final <T extends TBase<T, ?>> void sendMessage(T packet, ActionType actionType, boolean encrypt, PushMetaInfo metaInfo) {
        sendMessage(packet, actionType, encrypt, true, metaInfo, true);
    }

    public final <T extends TBase<T, ?>> void sendMessage(T packet, ActionType actionType, boolean encrypt, boolean pendingIfNecessary, PushMetaInfo metaInfo, boolean isCache) {
        sendMessage(packet, actionType, encrypt, pendingIfNecessary, metaInfo, isCache, this.mContext.getPackageName(), AppInfoHolder.getInstance(this.mContext).getAppID());
    }

    public final <T extends TBase<T, ?>> void sendMessage(T packet, ActionType actionType, boolean encrypt, boolean pendingIfNecessary, PushMetaInfo metaInfo, boolean isCache, String packageName, String appId) {
        if (AppInfoHolder.getInstance(this.mContext).appRegistered()) {
            XmPushActionContainer sendMsgContainer = PushContainerHelper.generateRequestContainer(this.mContext, packet, actionType, encrypt, packageName, appId);
            if (metaInfo != null) {
                sendMsgContainer.setMetaInfo(metaInfo);
            }
            byte[] msgBytes = XmPushThriftSerializeUtils.convertThriftObjectToBytes(sendMsgContainer);
            if (msgBytes == null) {
                MyLog.w("send message fail, because msgBytes is null.");
                return;
            }
            PerfMessageHelper.collectPerfData(this.mContext.getPackageName(), this.mContext, packet, actionType, msgBytes.length);
            Intent intent = createServiceIntent();
            intent.setAction("com.xiaomi.mipush.SEND_MESSAGE");
            intent.putExtra("mipush_payload", msgBytes);
            intent.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", isCache);
            callService(intent);
        } else if (pendingIfNecessary) {
            addPendRequest(packet, actionType, encrypt);
        } else {
            MyLog.w("drop the message before initialization.");
        }
    }

    public final void sendTinyData(ClientUploadDataItem item) {
        Intent intent = createServiceIntent();
        byte[] tinyDataBytes = XmPushThriftSerializeUtils.convertThriftObjectToBytes(item);
        if (tinyDataBytes == null) {
            MyLog.w("send TinyData failed, because tinyDataBytes is null.");
            return;
        }
        intent.setAction("com.xiaomi.mipush.SEND_TINYDATA");
        intent.putExtra("mipush_payload", tinyDataBytes);
        startServiceSafely(intent);
    }

    private boolean serviceInstalled() {
        try {
            PackageInfo pkgInfo = this.mContext.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4);
            if (pkgInfo != null && pkgInfo.versionCode >= BaiduSceneResult.TEMPLE) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    private Intent createServiceIntent() {
        if (!shouldUseMIUIPush() || "com.xiaomi.xmsf".equals(this.mContext.getPackageName())) {
            return createMyPushChannelIntent();
        }
        return createMIUIPushChannelIntent();
    }

    private Intent createGlobalServiceIntent() {
        if (!"com.xiaomi.xmsf".equals(this.mContext.getPackageName())) {
            return createGlobalServiceIntentForApp();
        }
        MyLog.v("pushChannel xmsf create own channel");
        return createMyPushChannelIntent();
    }

    private Intent createGlobalServiceIntentForApp() {
        if (shouldUseMIUIPush()) {
            MyLog.v("pushChannel app start miui china channel");
            return createMIUIPushChannelIntent();
        }
        MyLog.v("pushChannel app start  own channel");
        return createMyPushChannelIntent();
    }

    private Intent createMIUIPushChannelIntent() {
        Intent intent = new Intent();
        String pkgName = this.mContext.getPackageName();
        intent.setPackage("com.xiaomi.xmsf");
        intent.setClassName("com.xiaomi.xmsf", getPushServiceName());
        intent.putExtra("mipush_app_package", pkgName);
        disableMyPushService();
        return intent;
    }

    private Intent createMyPushChannelIntent() {
        Intent intent = new Intent();
        String pkgName = this.mContext.getPackageName();
        enableMyPushService();
        intent.setComponent(new ComponentName(this.mContext, "com.xiaomi.push.service.XMPushService"));
        intent.putExtra("mipush_app_package", pkgName);
        return intent;
    }

    private String getPushServiceName() {
        try {
            if (this.mContext.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= BaiduSceneResult.PALACE) {
                return "com.xiaomi.push.service.XMPushService";
            }
        } catch (Exception e) {
        }
        return "com.xiaomi.xmsf.push.service.XMPushService";
    }

    private void disableMyPushService() {
        try {
            this.mContext.getPackageManager().setComponentEnabledSetting(new ComponentName(this.mContext, "com.xiaomi.push.service.XMPushService"), 2, 1);
        } catch (Throwable th) {
        }
    }

    private void enableMyPushService() {
        try {
            this.mContext.getPackageManager().setComponentEnabledSetting(new ComponentName(this.mContext, "com.xiaomi.push.service.XMPushService"), 1, 1);
        } catch (Throwable th) {
        }
    }

    public boolean shouldUseMIUIPush() {
        if (this.mIsMiuiPushServiceEnabled && 1 == AppInfoHolder.getInstance(this.mContext).getEnvType()) {
            return true;
        }
        return false;
    }

    public void processRegisterTask() {
        if (this.registerTask != null) {
            callService(this.registerTask);
            this.registerTask = null;
        }
    }

    public <T extends TBase<T, ?>> void addPendRequest(T packet, ActionType actionType, boolean encrypt) {
        BufferedRequest<T> br = new BufferedRequest();
        br.message = packet;
        br.actionType = actionType;
        br.encrypt = encrypt;
        synchronized (sPendingRequest) {
            sPendingRequest.add(br);
            if (sPendingRequest.size() > 10) {
                sPendingRequest.remove(0);
            }
        }
    }

    public void processPendRequest() {
        synchronized (sPendingRequest) {
            Iterator it = sPendingRequest.iterator();
            while (it.hasNext()) {
                BufferedRequest br = (BufferedRequest) it.next();
                sendMessage(br.message, br.actionType, br.encrypt, false, null, true);
            }
            sPendingRequest.clear();
        }
    }

    public void clearNotification(int notifyId) {
        Intent intent = createServiceIntent();
        intent.setAction("com.xiaomi.mipush.CLEAR_NOTIFICATION");
        intent.putExtra(PushConstants.EXTRA_PACKAGE_NAME, this.mContext.getPackageName());
        intent.putExtra(PushConstants.EXTRA_NOTIFY_ID, notifyId);
        callService(intent);
    }

    private boolean useBind() {
        if (!shouldUseMIUIPush()) {
            return true;
        }
        try {
            if (this.mContext.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE) {
                return true;
            }
            return false;
        } catch (Exception e) {
            return true;
        }
    }

    public void clearNotification(String title, String description) {
        Intent intent = createServiceIntent();
        intent.setAction("com.xiaomi.mipush.CLEAR_NOTIFICATION");
        intent.putExtra(PushConstants.EXTRA_PACKAGE_NAME, this.mContext.getPackageName());
        intent.putExtra(PushConstants.EXTRA_NOTIFY_TITLE, title);
        intent.putExtra(PushConstants.EXTRA_NOTIFY_DESCRIPTION, description);
        callService(intent);
    }

    public void clearLocalNotificationType() {
        Intent intent = createServiceIntent();
        intent.setAction("com.xiaomi.mipush.SET_NOTIFICATION_TYPE");
        intent.putExtra(PushConstants.EXTRA_PACKAGE_NAME, this.mContext.getPackageName());
        intent.putExtra(PushConstants.EXTRA_SIG, MD5.MD5_16(this.mContext.getPackageName()));
        callService(intent);
    }

    void sendDataCommon(Intent intent) {
        intent.fillIn(createServiceIntent(), 24);
        callService(intent);
    }

    public boolean isProvisioned() {
        if (!shouldUseMIUIPush() || !isAutoTry()) {
            return true;
        }
        if (this.mDeviceProvisioned == null) {
            this.mDeviceProvisioned = Integer.valueOf(PushProvision.getInstance(this.mContext).getProvisioned());
            if (this.mDeviceProvisioned.intValue() == 0) {
                this.mContext.getContentResolver().registerContentObserver(PushProvision.getInstance(this.mContext).getProvisionedUri(), false, new ContentObserver(new Handler(Looper.getMainLooper())) {
                    public void onChange(boolean selfChange) {
                        PushServiceClient.this.mDeviceProvisioned = Integer.valueOf(PushProvision.getInstance(PushServiceClient.this.mContext).getProvisioned());
                        if (PushServiceClient.this.mDeviceProvisioned.intValue() != 0) {
                            PushServiceClient.this.mContext.getContentResolver().unregisterContentObserver(this);
                            if (Network.hasNetwork(PushServiceClient.this.mContext)) {
                                PushServiceClient.this.processRegisterTask();
                            }
                        }
                    }
                });
            }
        }
        if (this.mDeviceProvisioned.intValue() != 0) {
            return true;
        }
        return false;
    }

    private boolean isAutoTry() {
        String pkg = this.mContext.getPackageName();
        if (pkg.contains("miui") || pkg.contains("xiaomi") || (this.mContext.getApplicationInfo().flags & 1) != 0) {
            return true;
        }
        return false;
    }

    private void startServiceSafely(Intent intent) {
        try {
            if (MIUIUtils.isMIUI() || VERSION.SDK_INT < 26) {
                this.mContext.startService(intent);
            } else {
                bindServiceSafely(intent);
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }

    private void callService(Intent intent) {
        int ocBootMode = OnlineConfig.getInstance(this.mContext).getIntValue(ConfigKey.ServiceBootMode.getValue(), BootModeType.START.getValue());
        int currentMode = getServiceBootMode();
        boolean realUseBind = ocBootMode == BootModeType.BIND.getValue() && isBind;
        int realMode = realUseBind ? BootModeType.BIND.getValue() : BootModeType.START.getValue();
        if (realMode != currentMode) {
            sendServiceBootMode(realMode);
        }
        if (realUseBind) {
            bindServiceSafely(intent);
        } else {
            startServiceSafely(intent);
        }
    }

    private synchronized void bindServiceSafely(Intent intent) {
        if (this.isConnectingService) {
            Message message = parseToMessage(intent);
            if (this.pendingMessages.size() >= 50) {
                this.pendingMessages.remove(0);
            }
            this.pendingMessages.add(message);
        } else if (this.mClientMessenger == null) {
            Context context = this.mContext;
            ServiceConnection anonymousClass3 = new ServiceConnection() {
                public void onServiceConnected(ComponentName name, IBinder service) {
                    synchronized (PushServiceClient.this) {
                        PushServiceClient.this.mClientMessenger = new Messenger(service);
                        PushServiceClient.this.isConnectingService = false;
                        for (Message msg : PushServiceClient.this.pendingMessages) {
                            try {
                                PushServiceClient.this.mClientMessenger.send(msg);
                            } catch (Throwable e) {
                                MyLog.e(e);
                            }
                        }
                        PushServiceClient.this.pendingMessages.clear();
                    }
                }

                public void onServiceDisconnected(ComponentName name) {
                    PushServiceClient.this.mClientMessenger = null;
                    PushServiceClient.this.isConnectingService = false;
                }
            };
            Context context2 = this.mContext;
            context.bindService(intent, anonymousClass3, 1);
            this.isConnectingService = true;
            this.pendingMessages.clear();
            this.pendingMessages.add(parseToMessage(intent));
        } else {
            try {
                this.mClientMessenger.send(parseToMessage(intent));
            } catch (RemoteException e) {
                this.mClientMessenger = null;
                this.isConnectingService = false;
            }
        }
        return;
    }

    private Message parseToMessage(Intent intent) {
        Message message = Message.obtain();
        message.what = 17;
        message.obj = intent;
        return message;
    }

    public boolean sendServiceBootMode(int bootMode) {
        if (!AppInfoHolder.getInstance(this.mContext).checkAppInfo()) {
            return false;
        }
        saveServiceBootMode(bootMode);
        XmPushActionNotification notification = new XmPushActionNotification();
        notification.setId(PacketHelper.generatePacketID());
        notification.setAppId(AppInfoHolder.getInstance(this.mContext).getAppID());
        notification.setPackageName(this.mContext.getPackageName());
        notification.setType(NotificationType.ClientABTest.value);
        notification.extra = new HashMap();
        notification.extra.put("boot_mode", bootMode + "");
        getInstance(this.mContext).sendMessage(notification, ActionType.Notification, false, null);
        return true;
    }
}
