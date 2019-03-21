package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.DeviceInfo;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.clientreport.PerfMessageHelper;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo.ClientStatusListener;
import com.xiaomi.push.service.PushClientsManager.ClientStatus;
import com.xiaomi.push.service.Sync.SyncJob;
import com.xiaomi.slim.Blob;
import com.xiaomi.smack.Connection;
import com.xiaomi.smack.XMPPException;
import com.xiaomi.smack.packet.Packet;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.Target;
import com.xiaomi.xmpush.thrift.XmPushActionContainer;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.nio.ByteBuffer;
import java.util.HashMap;
import org.apache.thrift.TBase;

final class MIPushHelper {
    static void prepareMIPushAccount(XMPushService service) {
        final MIPushAccount account = MIPushAccountUtils.getMIPushAccount(service.getApplicationContext());
        if (account != null) {
            ClientLoginInfo loginInfo = MIPushAccountUtils.getMIPushAccount(service.getApplicationContext()).toClientLoginInfo(service);
            prepareClientLoginInfo(service, loginInfo);
            PushClientsManager.getInstance().addActiveClient(loginInfo);
            final XMPushService xMPushService = service;
            Sync.getInstance(service).schedSync(new SyncJob("GAID", 172800) {
                void sync(Sync sync) {
                    String gaid = sync.getString("GAID", "gaid");
                    String curGaid = DeviceInfo.getGaid(xMPushService);
                    MyLog.v("gaid :" + curGaid);
                    if (!TextUtils.isEmpty(curGaid) && !TextUtils.equals(gaid, curGaid)) {
                        sync.put("GAID", "gaid", curGaid);
                        XmPushActionNotification notification = new XmPushActionNotification();
                        notification.setAppId(account.appId);
                        notification.setType(NotificationType.ClientInfoUpdate.value);
                        notification.setId(PacketHelper.generatePacketID());
                        notification.setExtra(new HashMap());
                        notification.getExtra().put("gaid", curGaid);
                        xMPushService.sendMessage(xMPushService.getPackageName(), XmPushThriftSerializeUtils.convertThriftObjectToBytes(MIPushHelper.generateRequestContainer(xMPushService.getPackageName(), account.appId, notification, ActionType.Notification)), true);
                    }
                }
            });
        }
    }

    private static String getSourcePkgName(XmPushActionContainer container) {
        if (!(container.metaInfo == null || container.metaInfo.internal == null)) {
            String sourcePkgName = (String) container.metaInfo.internal.get("ext_traffic_source_pkg");
            if (!TextUtils.isEmpty(sourcePkgName)) {
                return sourcePkgName;
            }
        }
        return container.packageName;
    }

    static Blob constructBlob(MIPushAccount account, Context context, XmPushActionContainer container) {
        try {
            Blob blob = new Blob();
            blob.setChannelId(5);
            blob.setFrom(account.account);
            blob.setPackageName(getSourcePkgName(container));
            blob.setCmd("SECMSG", "message");
            String accountStr = account.account;
            container.target.userId = accountStr.substring(0, accountStr.indexOf("@"));
            container.target.resource = accountStr.substring(accountStr.indexOf("/") + 1);
            blob.setPayload(XmPushThriftSerializeUtils.convertThriftObjectToBytes(container), account.security);
            blob.setPayloadType((short) 1);
            MyLog.w("try send mi push message. packagename:" + container.packageName + " action:" + container.action);
            return blob;
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    static Blob constructBlob(XMPushService service, byte[] payload) {
        XmPushActionContainer container = new XmPushActionContainer();
        try {
            XmPushThriftSerializeUtils.convertByteArrayToThriftObject(container, payload);
            return constructBlob(MIPushAccountUtils.getMIPushAccount(service), service, container);
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    static <T extends TBase<T, ?>> XmPushActionContainer generateRequestContainer(String pkgName, String appId, T message, ActionType action) {
        byte[] msgbytes = XmPushThriftSerializeUtils.convertThriftObjectToBytes(message);
        XmPushActionContainer container = new XmPushActionContainer();
        Target target = new Target();
        target.channelId = 5;
        target.userId = "fakeid";
        container.setTarget(target);
        container.setPushAction(ByteBuffer.wrap(msgbytes));
        container.setAction(action);
        container.setIsRequest(true);
        container.setPackageName(pkgName);
        container.setEncryptAction(false);
        container.setAppid(appId);
        return container;
    }

    static XmPushActionContainer contructAppAbsentMessage(String pkgName, String appId) {
        XmPushActionNotification message = new XmPushActionNotification();
        message.setAppId(appId);
        message.setType("package uninstalled");
        message.setId(Packet.nextID());
        message.setRequireAck(false);
        return generateRequestContainer(pkgName, appId, message, ActionType.Notification);
    }

    static void prepareClientLoginInfo(final XMPushService service, ClientLoginInfo loginInfo) {
        loginInfo.watch(null);
        loginInfo.addClientStatusListener(new ClientStatusListener() {
            public void onChange(ClientStatus oldStatus, ClientStatus newStatus, int reason) {
                if (newStatus == ClientStatus.binded) {
                    MIPushClientManager.processPendingRegistrationRequest(service);
                    MIPushClientManager.processPendingMessages(service);
                } else if (newStatus == ClientStatus.unbind) {
                    MIPushClientManager.notifyRegisterError(service, 70000001, " the push is not connected.");
                }
            }
        });
    }

    static void sendPacket(XMPushService service, String packageName, byte[] payload) throws XMPPException {
        PerfMessageHelper.collectUpStream(packageName, service.getApplicationContext(), payload);
        Connection conn = service.getCurrentConnection();
        if (conn == null) {
            throw new XMPPException("try send msg while connection is null.");
        } else if (conn.isBinaryConnection()) {
            Blob blob = constructBlob(service, payload);
            if (blob != null) {
                conn.send(blob);
            } else {
                MIPushClientManager.notifyError(service, packageName, payload, 70000003, "not a valid message");
            }
        } else {
            throw new XMPPException("Don't support XMPP connection.");
        }
    }

    static void sendPacket(XMPushService service, XmPushActionContainer container) throws XMPPException {
        PerfMessageHelper.collectUpStream(container.getPackageName(), service.getApplicationContext(), container, -1);
        Connection conn = service.getCurrentConnection();
        if (conn == null) {
            throw new XMPPException("try send msg while connection is null.");
        } else if (conn.isBinaryConnection()) {
            Blob blob = constructBlob(MIPushAccountUtils.getMIPushAccount(service), service, container);
            if (blob != null) {
                conn.send(blob);
            }
        } else {
            throw new XMPPException("Don't support XMPP connection.");
        }
    }

    static String getReceiverPermission(String pkgName) {
        return pkgName + ".permission.MIPUSH_RECEIVE";
    }
}
