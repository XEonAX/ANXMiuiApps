package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import com.xiaomi.slim.Blob;
import com.xiaomi.smack.packet.IQ;
import com.xiaomi.smack.packet.Packet;
import com.xiaomi.smack.packet.Presence;
import java.util.Collection;
import java.util.Iterator;

public class ClientEventDispatcher {
    private MIPushEventProcessor mPushEventProcessor = new MIPushEventProcessor();

    public void notifyServiceStarted(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.xiaomi.push.service_started");
        context.sendBroadcast(intent);
    }

    public void notifyChannelOpenResult(Context context, ClientLoginInfo loginInfo, boolean succeeded, int reason, String msg) {
        if ("5".equalsIgnoreCase(loginInfo.chid)) {
            this.mPushEventProcessor.processChannelOpenResult(context, loginInfo, succeeded, reason, msg);
            return;
        }
        Intent intent = new Intent();
        intent.setAction("com.xiaomi.push.channel_opened");
        intent.setPackage(loginInfo.pkgName);
        intent.putExtra("ext_succeeded", succeeded);
        if (!succeeded) {
            intent.putExtra("ext_reason", reason);
        }
        if (!TextUtils.isEmpty(msg)) {
            intent.putExtra("ext_reason_msg", msg);
        }
        intent.putExtra("ext_chid", loginInfo.chid);
        intent.putExtra(PushConstants.EXTRA_USER_ID, loginInfo.userId);
        intent.putExtra(PushConstants.EXTRA_SESSION, loginInfo.session);
        sendBroadcast(context, intent, loginInfo);
    }

    public void notifyChannelClosed(Context context, ClientLoginInfo info, int reason) {
        if (!"5".equalsIgnoreCase(info.chid)) {
            Intent intent = new Intent();
            intent.setAction("com.xiaomi.push.channel_closed");
            intent.setPackage(info.pkgName);
            intent.putExtra(PushConstants.EXTRA_CHANNEL_ID, info.chid);
            intent.putExtra("ext_reason", reason);
            intent.putExtra(PushConstants.EXTRA_USER_ID, info.userId);
            intent.putExtra(PushConstants.EXTRA_SESSION, info.session);
            if (info.peer == null || !"9".equals(info.chid)) {
                sendBroadcast(context, intent, info);
                return;
            }
            try {
                info.peer.send(Message.obtain(null, 17, intent));
            } catch (RemoteException e) {
                info.peer = null;
                MyLog.w("peer may died: " + info.userId.substring(info.userId.lastIndexOf(64)));
            }
        }
    }

    public void notifyPacketArrival(XMPushService pushService, String chid, Packet packet) {
        ClientLoginInfo info = getClientLoginInfo(packet);
        if (info == null) {
            MyLog.e("error while notify channel closed! channel " + chid + " not registered");
        } else if ("5".equalsIgnoreCase(chid)) {
            this.mPushEventProcessor.processNewPacket(pushService, packet, info);
        } else {
            String action;
            String pkgName = info.pkgName;
            if (packet instanceof com.xiaomi.smack.packet.Message) {
                action = "com.xiaomi.push.new_msg";
            } else if (packet instanceof IQ) {
                action = "com.xiaomi.push.new_iq";
            } else if (packet instanceof Presence) {
                action = "com.xiaomi.push.new_pres";
            } else {
                MyLog.e("unknown packet type, drop it");
                return;
            }
            Intent intent = new Intent();
            intent.setAction(action);
            intent.setPackage(pkgName);
            intent.putExtra("ext_chid", chid);
            intent.putExtra("ext_packet", packet.toBundle());
            intent.putExtra(PushConstants.EXTRA_SESSION, info.session);
            intent.putExtra(PushConstants.EXTRA_SECURITY, info.security);
            sendBroadcast(pushService, intent, info);
        }
    }

    public void notifyPacketArrival(XMPushService pushService, String chid, Blob blob) {
        ClientLoginInfo info = getClientLoginInfo(blob);
        if (info == null) {
            MyLog.e("error while notify channel closed! channel " + chid + " not registered");
        } else if ("5".equalsIgnoreCase(chid)) {
            this.mPushEventProcessor.processNewPacket(pushService, blob, info);
        } else {
            String pkgName = info.pkgName;
            Intent intent = new Intent();
            intent.setAction("com.xiaomi.push.new_msg");
            intent.setPackage(pkgName);
            intent.putExtra("ext_chid", chid);
            intent.putExtra("ext_raw_packet", blob.getDecryptedPayload(info.security));
            intent.putExtra(PushConstants.EXTRA_SESSION, info.session);
            intent.putExtra(PushConstants.EXTRA_SECURITY, info.security);
            if (info.peer != null) {
                try {
                    info.peer.send(Message.obtain(null, 17, intent));
                    return;
                } catch (RemoteException e) {
                    info.peer = null;
                    MyLog.w("peer may died: " + info.userId.substring(info.userId.lastIndexOf(64)));
                }
            }
            if (!"com.xiaomi.xmsf".equals(pkgName)) {
                sendBroadcast(pushService, intent, info);
            }
        }
    }

    ClientLoginInfo getClientLoginInfo(Packet packet) {
        Collection<ClientLoginInfo> infos = PushClientsManager.getInstance().getAllClientLoginInfoByChid(packet.getChannelId());
        if (infos.isEmpty()) {
            return null;
        }
        Iterator<ClientLoginInfo> it = infos.iterator();
        if (infos.size() == 1) {
            return (ClientLoginInfo) it.next();
        }
        String from = packet.getFrom();
        String to = packet.getTo();
        while (it.hasNext()) {
            ClientLoginInfo cur = (ClientLoginInfo) it.next();
            if (!TextUtils.equals(from, cur.userId)) {
                if (TextUtils.equals(to, cur.userId)) {
                }
            }
            return cur;
        }
        return null;
    }

    ClientLoginInfo getClientLoginInfo(Blob blob) {
        Collection<ClientLoginInfo> infos = PushClientsManager.getInstance().getAllClientLoginInfoByChid(Integer.toString(blob.getChannelId()));
        if (infos.isEmpty()) {
            return null;
        }
        Iterator<ClientLoginInfo> it = infos.iterator();
        if (infos.size() == 1) {
            return (ClientLoginInfo) it.next();
        }
        String userId = blob.getFullUserName();
        while (it.hasNext()) {
            ClientLoginInfo cur = (ClientLoginInfo) it.next();
            if (TextUtils.equals(userId, cur.userId)) {
                return cur;
            }
        }
        return null;
    }

    public void notifyKickedByServer(Context context, ClientLoginInfo info, String type, String reason) {
        if ("5".equalsIgnoreCase(info.chid)) {
            MyLog.e("mipush kicked by server");
            return;
        }
        Intent intent = new Intent();
        intent.setAction("com.xiaomi.push.kicked");
        intent.setPackage(info.pkgName);
        intent.putExtra("ext_kick_type", type);
        intent.putExtra("ext_kick_reason", reason);
        intent.putExtra("ext_chid", info.chid);
        intent.putExtra(PushConstants.EXTRA_USER_ID, info.userId);
        intent.putExtra(PushConstants.EXTRA_SESSION, info.session);
        sendBroadcast(context, intent, info);
    }

    private static void sendBroadcast(Context context, Intent intent, ClientLoginInfo info) {
        if ("com.xiaomi.xmsf".equals(context.getPackageName())) {
            context.sendBroadcast(intent);
        } else {
            context.sendBroadcast(intent, getReceiverPermission(info));
        }
    }

    public static String getReceiverPermission(ClientLoginInfo info) {
        if ("9".equals(info.chid)) {
            return info.pkgName + ".permission.MIMC_RECEIVE";
        }
        return info.pkgName + ".permission.MIPUSH_RECEIVE";
    }
}
