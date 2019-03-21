package com.xiaomi.slim;

import android.text.TextUtils;
import com.google.protobuf.micro.ByteStringMicro;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.protobuf.ChannelMessage.XMMsgPing;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import com.xiaomi.push.service.RC4Cryption;
import com.xiaomi.push.service.ServiceConfig;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.smack.Connection.ListenerWrapper;
import com.xiaomi.smack.ConnectionConfiguration;
import com.xiaomi.smack.SocketConnection;
import com.xiaomi.smack.XMPPException;
import com.xiaomi.smack.packet.Packet;
import com.xiaomi.smack.util.TrafficUtils;
import com.xiaomi.stats.StatsHelper;
import java.io.IOException;

public class SlimConnection extends SocketConnection {
    private byte[] mKey;
    private BlobReader mReader;
    private Thread mReaderThread;
    private BlobWriter mWriter;

    public SlimConnection(XMPushService pushService, ConnectionConfiguration config) {
        super(pushService, config);
    }

    synchronized byte[] getKey() {
        if (this.mKey == null && !TextUtils.isEmpty(this.challenge)) {
            String uuid = ServiceConfig.getDeviceUUID();
            this.mKey = RC4Cryption.encrypt(this.challenge.getBytes(), (this.challenge.substring(this.challenge.length() / 2) + uuid.substring(uuid.length() / 2)).getBytes());
        }
        return this.mKey;
    }

    private Blob getPing(boolean isPong) {
        Ping ping = new Ping();
        if (isPong) {
            ping.setPacketID("1");
        }
        byte[] stats = StatsHelper.retriveStatsAsByte();
        if (stats != null) {
            XMMsgPing body = new XMMsgPing();
            body.setStats(ByteStringMicro.copyFrom(stats));
            ping.setPayload(body.toByteArray(), null);
        }
        return ping;
    }

    protected void sendPing(boolean isPong) throws XMPPException {
        if (this.mWriter != null) {
            Blob blob = getPing(isPong);
            MyLog.w("[Slim] SND ping id=" + blob.getPacketID());
            send(blob);
            updateLastSent();
            return;
        }
        throw new XMPPException("The BlobWriter is null.");
    }

    public boolean isBinaryConnection() {
        return true;
    }

    public synchronized void bind(ClientLoginInfo info) throws XMPPException {
        Binder.bind(info, getChallenge(), this);
    }

    public synchronized void unbind(String chid, String userName) throws XMPPException {
        Binder.unbind(chid, userName, this);
    }

    protected synchronized void shutdown(int reason, Exception ex) {
        if (this.mReader != null) {
            this.mReader.shutdown();
            this.mReader = null;
        }
        if (this.mWriter != null) {
            try {
                this.mWriter.shutdown();
            } catch (Throwable e) {
                MyLog.e(e);
            }
            this.mWriter = null;
        }
        this.mKey = null;
        super.shutdown(reason, ex);
        return;
    }

    public void batchSend(Blob[] blobs) throws XMPPException {
        for (Blob blob : blobs) {
            send(blob);
        }
    }

    @Deprecated
    public void sendPacket(Packet packet) throws XMPPException {
        send(Blob.from(packet, null));
    }

    protected synchronized void initConnection() throws XMPPException, IOException {
        initReaderAndWriter();
        this.mWriter.openStream();
    }

    private void initReaderAndWriter() throws XMPPException {
        try {
            this.mReader = new BlobReader(this.socket.getInputStream(), this);
            this.mWriter = new BlobWriter(this.socket.getOutputStream(), this);
            this.mReaderThread = new Thread("Blob Reader (" + this.connectionCounterValue + ")") {
                public void run() {
                    try {
                        SlimConnection.this.mReader.start();
                    } catch (Exception e) {
                        SlimConnection.this.notifyConnectionError(9, e);
                    }
                }
            };
            this.mReaderThread.start();
        } catch (Exception e) {
            throw new XMPPException("Error to init reader and writer", e);
        }
    }

    void notifyDataArrived(Packet packet) {
        if (packet != null) {
            for (ListenerWrapper listenerWrapper : this.recvListeners.values()) {
                listenerWrapper.notifyListener(packet);
            }
        }
    }

    void notifyDataArrived(Blob blob) {
        if (blob != null) {
            if (blob.hasErr()) {
                MyLog.w("[Slim] RCV blob chid=" + blob.getChannelId() + "; id=" + blob.getPacketID() + "; errCode=" + blob.getErrCode() + "; err=" + blob.getErrStr());
            }
            if (blob.getChannelId() == 0) {
                if ("PING".equals(blob.getCmd())) {
                    MyLog.w("[Slim] RCV ping id=" + blob.getPacketID());
                    updateLastReceived();
                } else if ("CLOSE".equals(blob.getCmd())) {
                    notifyConnectionError(13, null);
                }
            }
            for (ListenerWrapper listenerWrapper : this.recvListeners.values()) {
                listenerWrapper.notifyListener(blob);
            }
        }
    }

    public void send(Blob blob) throws XMPPException {
        if (this.mWriter != null) {
            try {
                int size = this.mWriter.write(blob);
                this.writeAlive = System.currentTimeMillis();
                String packageName = blob.getPackageName();
                if (!TextUtils.isEmpty(packageName)) {
                    TrafficUtils.distributionTraffic(this.mPushService, packageName, (long) size, false, true, System.currentTimeMillis());
                }
                for (ListenerWrapper listenerWrapper : this.sendListeners.values()) {
                    listenerWrapper.notifyListener(blob);
                }
                return;
            } catch (Throwable e) {
                throw new XMPPException(e);
            }
        }
        throw new XMPPException("the writer is null.");
    }
}
