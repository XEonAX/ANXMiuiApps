package com.xiaomi.push.service;

import android.content.SystemIntent;
import android.text.TextUtils;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.network.Fallback;
import com.xiaomi.network.HostManager;
import com.xiaomi.push.log.LogUploader;
import com.xiaomi.push.protobuf.ChannelMessage.PushServiceConfigMsg;
import com.xiaomi.push.protobuf.ChannelMessage.XMMsgBindResp;
import com.xiaomi.push.protobuf.ChannelMessage.XMMsgKick;
import com.xiaomi.push.protobuf.ChannelMessage.XMMsgNotify;
import com.xiaomi.push.protobuf.ChannelMessage.XMMsgP;
import com.xiaomi.push.protobuf.ChannelMessage.XMMsgPing;
import com.xiaomi.push.protobuf.ChannelMessage.XMMsgU;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import com.xiaomi.push.service.PushClientsManager.ClientStatus;
import com.xiaomi.push.thrift.ChannelStatsType;
import com.xiaomi.slim.Blob;
import com.xiaomi.smack.ConnectionConfiguration;
import com.xiaomi.smack.packet.CommonPacketExtension;
import com.xiaomi.smack.packet.IQ;
import com.xiaomi.smack.packet.Message;
import com.xiaomi.smack.packet.Packet;
import com.xiaomi.smack.util.TrafficUtils;
import com.xiaomi.stats.StatsHelper;
import java.util.Date;
import miui.provider.ExtraContacts.ConferenceCalls;
import miui.provider.ExtraTelephony.FirewallLog;
import miui.provider.ExtraTelephony.Phonelist;

public class PacketSync {
    private XMPushService mService;

    PacketSync(XMPushService service) {
        this.mService = service;
    }

    public void onPacketReceive(Packet packet) {
        if (!Phonelist.TYPE_CLOUDS_WHITE.equals(packet.getChannelId())) {
            dispatchNetFlow(packet);
        }
        String chid = packet.getChannelId();
        if (TextUtils.isEmpty(chid)) {
            chid = "1";
            packet.setChannelId(chid);
        }
        if (chid.equals("0")) {
            MyLog.w("Received wrong packet with chid = 0 : " + packet.toXML());
        }
        if (packet instanceof IQ) {
            CommonPacketExtension ext = packet.getExtension("kick");
            if (ext != null) {
                String userId = packet.getTo();
                String type = ext.getAttributeValue("type");
                String reason = ext.getAttributeValue(FirewallLog.REASON);
                MyLog.w("kicked by server, chid=" + chid + " res=" + ClientLoginInfo.getResource(userId) + " type=" + type + " reason=" + reason);
                if ("wait".equals(type)) {
                    ClientLoginInfo info = PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(chid, userId);
                    if (info != null) {
                        this.mService.scheduleRebindChannel(info);
                        info.setStatus(ClientStatus.unbind, 3, 0, reason, type);
                        return;
                    }
                    return;
                }
                this.mService.closeChannel(chid, userId, 3, reason, type);
                PushClientsManager.getInstance().deactivateClient(chid, userId);
                return;
            }
        } else if (packet instanceof Message) {
            Message message = (Message) packet;
            if ("redir".equals(message.getType())) {
                CommonPacketExtension exten = message.getExtension("hosts");
                if (exten != null) {
                    processRedirectMessage(exten);
                    return;
                }
                return;
            }
        }
        this.mService.getClientEventDispatcher().notifyPacketArrival(this.mService, chid, packet);
    }

    public void onBlobReceive(Blob blob) {
        if (5 != blob.getChannelId()) {
            dispatchNetFlow(blob);
        }
        try {
            handleBlob(blob);
        } catch (Exception e) {
            MyLog.e("handle Blob chid = " + blob.getChannelId() + " cmd = " + blob.getCmd() + " packetid = " + blob.getPacketID() + " failure ", e);
        }
    }

    public void handleBlob(Blob blob) throws InvalidProtocolBufferMicroException {
        String cmd = blob.getCmd();
        switch (blob.getChannelId()) {
            case 0:
                if ("PING".equals(cmd)) {
                    byte[] payload = blob.getPayload();
                    if (payload != null && payload.length > 0) {
                        XMMsgPing ping = XMMsgPing.parseFrom(payload);
                        if (ping.hasPsc()) {
                            ServiceConfig.getInstance().handle(ping.getPsc());
                        }
                    }
                    if (!SystemIntent.ACTIVATE_SERVICE_HOST_PACKAGE.equals(this.mService.getPackageName())) {
                        this.mService.sendPongIfNeed();
                    }
                    if ("1".equals(blob.getPacketID())) {
                        MyLog.w("received a server ping");
                    } else {
                        StatsHelper.pingEnded();
                    }
                    this.mService.onPong();
                    return;
                } else if ("SYNC".equals(cmd)) {
                    Blob ack;
                    if ("CONF".equals(blob.getSubcmd())) {
                        ServiceConfig.getInstance().handle(PushServiceConfigMsg.parseFrom(blob.getPayload()));
                        return;
                    } else if (TextUtils.equals("U", blob.getSubcmd())) {
                        XMMsgU msgU = XMMsgU.parseFrom(blob.getPayload());
                        LogUploader.getInstance(this.mService).upload(msgU.getUrl(), msgU.getToken(), new Date(msgU.getStart()), new Date(msgU.getEnd()), msgU.getMaxlen() * 1024, msgU.getForce());
                        ack = new Blob();
                        ack.setChannelId(0);
                        ack.setCmd(blob.getCmd(), "UCA");
                        ack.setPacketID(blob.getPacketID());
                        this.mService.executeJob(new SendMessageJob(this.mService, ack));
                        return;
                    } else if (TextUtils.equals("P", blob.getSubcmd())) {
                        XMMsgP msgP = XMMsgP.parseFrom(blob.getPayload());
                        ack = new Blob();
                        ack.setChannelId(0);
                        ack.setCmd(blob.getCmd(), "PCA");
                        ack.setPacketID(blob.getPacketID());
                        XMMsgP payload2 = new XMMsgP();
                        if (msgP.hasCookie()) {
                            payload2.setCookie(msgP.getCookie());
                        }
                        ack.setPayload(payload2.toByteArray(), null);
                        this.mService.executeJob(new SendMessageJob(this.mService, ack));
                        MyLog.w("ACK msgP: id = " + blob.getPacketID());
                        return;
                    } else {
                        return;
                    }
                } else if ("NOTIFY".equals(blob.getCmd())) {
                    XMMsgNotify notify = XMMsgNotify.parseFrom(blob.getPayload());
                    MyLog.w("notify by server err = " + notify.getErrCode() + " desc = " + notify.getErrStr());
                    return;
                } else {
                    return;
                }
            default:
                String chid = Integer.toString(blob.getChannelId());
                ClientLoginInfo info;
                if ("SECMSG".equals(blob.getCmd())) {
                    if (blob.hasErr()) {
                        MyLog.w("Recv SECMSG errCode = " + blob.getErrCode() + " errStr = " + blob.getErrStr());
                        return;
                    } else {
                        this.mService.getClientEventDispatcher().notifyPacketArrival(this.mService, chid, blob);
                        return;
                    }
                } else if ("BIND".equals(cmd)) {
                    XMMsgBindResp bindResp = XMMsgBindResp.parseFrom(blob.getPayload());
                    String user = blob.getFullUserName();
                    info = PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(chid, user);
                    if (info == null) {
                        return;
                    }
                    if (bindResp.getResult()) {
                        MyLog.w("SMACK: channel bind succeeded, chid=" + blob.getChannelId());
                        info.setStatus(ClientStatus.binded, 1, 0, null, null);
                        return;
                    }
                    String err = bindResp.getErrorType();
                    if ("auth".equals(err)) {
                        if ("invalid-sig".equals(bindResp.getErrorReason())) {
                            MyLog.w("SMACK: bind error invalid-sig token = " + info.token + " sec = " + info.security);
                            StatsHelper.stats(0, ChannelStatsType.BIND_INVALID_SIG.getValue(), 1, null, 0);
                        }
                        info.setStatus(ClientStatus.unbind, 1, 5, bindResp.getErrorReason(), err);
                        PushClientsManager.getInstance().deactivateClient(chid, user);
                    } else if ("cancel".equals(err)) {
                        info.setStatus(ClientStatus.unbind, 1, 7, bindResp.getErrorReason(), err);
                        PushClientsManager.getInstance().deactivateClient(chid, user);
                    } else if ("wait".equals(err)) {
                        this.mService.scheduleRebindChannel(info);
                        info.setStatus(ClientStatus.unbind, 1, 7, bindResp.getErrorReason(), err);
                    }
                    MyLog.w("SMACK: channel bind failed, chid=" + chid + " reason=" + bindResp.getErrorReason());
                    return;
                } else if ("KICK".equals(cmd)) {
                    XMMsgKick kick = XMMsgKick.parseFrom(blob.getPayload());
                    String userId = blob.getFullUserName();
                    String type = kick.getType();
                    String reason = kick.getReason();
                    MyLog.w("kicked by server, chid=" + chid + " res= " + ClientLoginInfo.getResource(userId) + " type=" + type + " reason=" + reason);
                    if ("wait".equals(type)) {
                        info = PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(chid, userId);
                        if (info != null) {
                            this.mService.scheduleRebindChannel(info);
                            info.setStatus(ClientStatus.unbind, 3, 0, reason, type);
                            return;
                        }
                        return;
                    }
                    this.mService.closeChannel(chid, userId, 3, reason, type);
                    PushClientsManager.getInstance().deactivateClient(chid, userId);
                    return;
                } else {
                    return;
                }
        }
    }

    private void dispatchNetFlow(Packet packet) {
        String userId = packet.getTo();
        String chid = packet.getChannelId();
        if (!TextUtils.isEmpty(userId) && !TextUtils.isEmpty(chid)) {
            ClientLoginInfo info = PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(chid, userId);
            if (info != null) {
                TrafficUtils.distributionTraffic(this.mService, info.pkgName, (long) TrafficUtils.getTrafficFlow(packet.toXML()), true, true, System.currentTimeMillis());
            }
        }
    }

    private void dispatchNetFlow(Blob blob) {
        String userId = blob.getFullUserName();
        String chid = Integer.toString(blob.getChannelId());
        if (!TextUtils.isEmpty(userId) && !TextUtils.isEmpty(chid)) {
            ClientLoginInfo info = PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(chid, userId);
            if (info != null) {
                TrafficUtils.distributionTraffic(this.mService, info.pkgName, (long) blob.getSerializedSize(), true, true, System.currentTimeMillis());
            }
        }
    }

    private void processRedirectMessage(CommonPacketExtension exten) {
        String hosts = exten.getText();
        if (!TextUtils.isEmpty(hosts)) {
            String[] splitedHosts = hosts.split(ConferenceCalls.SPLIT_EXPRESSION);
            Fallback fb = HostManager.getInstance().getFallbacksByHost(ConnectionConfiguration.getXmppServerHost(), false);
            if (fb != null && splitedHosts.length > 0) {
                fb.addPreferredHost(splitedHosts);
                this.mService.disconnect(20, null);
                this.mService.scheduleConnect(true);
            }
        }
    }
}
