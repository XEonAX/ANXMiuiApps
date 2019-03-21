package com.xiaomi.smack;

import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.network.Fallback;
import com.xiaomi.network.Host;
import com.xiaomi.network.HostManager;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.XMPushService.Job;
import com.xiaomi.slim.Blob;
import com.xiaomi.smack.util.TaskExecutor;
import com.xiaomi.stats.StatsHelper;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class SocketConnection extends Connection {
    private String connectedHost;
    String connectionID = null;
    private int curShortConnCount;
    protected Exception failedException = null;
    protected volatile long lastConnectedTime = 0;
    protected volatile long lastPingReceived = 0;
    protected volatile long lastPingSent = 0;
    protected XMPushService pushService;
    protected Socket socket;

    protected abstract void sendPing(boolean z) throws XMPPException;

    public SocketConnection(XMPushService pushService, ConnectionConfiguration config) {
        super(pushService, config);
        this.pushService = pushService;
    }

    public void ping(boolean isPong) throws XMPPException {
        final long current = System.currentTimeMillis();
        sendPing(isPong);
        if (!isPong) {
            this.pushService.executeJobDelayed(new Job(13) {
                public void process() {
                    Thread.yield();
                    if (SocketConnection.this.isConnected() && !SocketConnection.this.isReadAlive(current)) {
                        SocketConnection.this.pushService.disconnect(22, null);
                        SocketConnection.this.pushService.scheduleConnect(true);
                    }
                }

                public String getDesc() {
                    return "check the ping-pong." + current;
                }
            }, 10000);
        }
    }

    public String getChallenge() {
        return this.challenge;
    }

    public String getHost() {
        return this.connectedHost;
    }

    protected synchronized void shutdown(int reason, Exception ex) {
        if (getConnectionStatus() != 2) {
            setConnectionStatus(2, reason, ex);
            this.challenge = "";
            try {
                this.socket.close();
            } catch (Throwable th) {
            }
            this.lastPingSent = 0;
            this.lastPingReceived = 0;
        }
    }

    public void disconnect(int reason, Exception e) {
        shutdown(reason, e);
        if ((e != null || reason == 18) && this.lastConnectedTime != 0) {
            sinkdownHost(e);
        }
    }

    protected void sinkdownHost(Exception e) {
        if (SystemClock.elapsedRealtime() - this.lastConnectedTime >= 300000) {
            this.curShortConnCount = 0;
        } else if (Network.hasNetwork(this.pushService)) {
            this.curShortConnCount++;
            if (this.curShortConnCount >= 2) {
                String failedHost = getHost();
                MyLog.w("max short conn time reached, sink down current host:" + failedHost);
                sinkdownHost(failedHost, 0, e);
                this.curShortConnCount = 0;
            }
        }
    }

    protected void sinkdownHost(String host, long cost, Exception e) {
        Fallback fb = HostManager.getInstance().getFallbacksByHost(ConnectionConfiguration.getXmppServerHost(), false);
        if (fb != null) {
            fb.failedHost(host, cost, 0, e);
            HostManager.getInstance().persist();
        }
    }

    public void batchSend(Blob[] blobs) throws XMPPException {
        throw new XMPPException("Don't support send Blob");
    }

    private void connectUsingConfiguration(ConnectionConfiguration config) throws XMPPException, IOException {
        connectDirectly(config.getHost(), config.getPort());
    }

    /* JADX WARNING: Missing block: B:52:0x02e8, code:
            if (android.text.TextUtils.equals(r10, com.xiaomi.channel.commonutils.network.Network.getActiveConnPoint(r19.pushService)) == false) goto L_0x016d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void connectDirectly(String host, int port) throws XMPPException {
        boolean succeeded = false;
        this.failedException = null;
        ArrayList<String> hosts = new ArrayList();
        int code = MyLog.ps("get bucket for host : " + host).intValue();
        Fallback fallback = getFallback(host);
        MyLog.pe(Integer.valueOf(code));
        if (fallback != null) {
            hosts = fallback.getHosts(true);
        }
        if (hosts.isEmpty()) {
            hosts.add(host);
        }
        this.lastConnectedTime = 0;
        String currentNetwork = Network.getActiveConnPoint(this.pushService);
        StringBuilder errorSB = new StringBuilder();
        Iterator it = hosts.iterator();
        while (it.hasNext()) {
            String currentHost = (String) it.next();
            long start = System.currentTimeMillis();
            this.connTimes++;
            try {
                MyLog.w("begin to connect to " + currentHost);
                this.socket = createSocket();
                this.socket.connect(Host.from(currentHost, port), 8000);
                MyLog.w("tcp connected");
                this.socket.setTcpNoDelay(true);
                this.connectedHost = currentHost;
                initConnection();
                succeeded = true;
                this.connectTime = System.currentTimeMillis() - start;
                this.connectionPoint = currentNetwork;
                if (fallback != null) {
                    fallback.succeedHost(currentHost, this.connectTime, 0);
                }
                this.lastConnectedTime = SystemClock.elapsedRealtime();
                MyLog.w("connected to " + currentHost + " in " + this.connectTime);
                if (1 == null) {
                    MyLog.e("SMACK: Could not connect to:" + currentHost);
                    errorSB.append("SMACK: Could not connect to ").append(currentHost).append(" port:").append(port).append(" err:").append(this.failedException.getClass().getSimpleName()).append("\n");
                    StatsHelper.connectFail(currentHost, this.failedException);
                    if (fallback != null) {
                        fallback.failedHost(currentHost, System.currentTimeMillis() - start, 0, this.failedException);
                    }
                    if (TextUtils.equals(currentNetwork, Network.getActiveConnPoint(this.pushService))) {
                    }
                }
            } catch (Exception e) {
                this.failedException = e;
                if (null == null) {
                    MyLog.e("SMACK: Could not connect to:" + currentHost);
                    errorSB.append("SMACK: Could not connect to ").append(currentHost).append(" port:").append(port).append(" err:").append(this.failedException.getClass().getSimpleName()).append("\n");
                    StatsHelper.connectFail(currentHost, this.failedException);
                    if (fallback != null) {
                        fallback.failedHost(currentHost, System.currentTimeMillis() - start, 0, this.failedException);
                    }
                    if (!TextUtils.equals(currentNetwork, Network.getActiveConnPoint(this.pushService))) {
                        break;
                    }
                } else {
                    continue;
                }
            } catch (Throwable th) {
                Throwable th2 = th;
                if (null == null) {
                    MyLog.e("SMACK: Could not connect to:" + currentHost);
                    errorSB.append("SMACK: Could not connect to ").append(currentHost).append(" port:").append(port).append(" err:").append(this.failedException.getClass().getSimpleName()).append("\n");
                    StatsHelper.connectFail(currentHost, this.failedException);
                    if (fallback != null) {
                        fallback.failedHost(currentHost, System.currentTimeMillis() - start, 0, this.failedException);
                    }
                }
            }
        }
        HostManager.getInstance().persist();
        if (!succeeded) {
            throw new XMPPException(errorSB.toString());
        }
    }

    protected synchronized void initConnection() throws XMPPException, IOException {
    }

    public synchronized void connect() throws XMPPException {
        try {
            if (isConnected() || isConnecting()) {
                MyLog.w("WARNING: current xmpp has connected");
            } else {
                setConnectionStatus(0, 0, null);
                connectUsingConfiguration(this.config);
            }
        } catch (Throwable e) {
            throw new XMPPException(e);
        }
    }

    public void notifyConnectionError(final int error, final Exception e) {
        this.pushService.executeJob(new Job(2) {
            public void process() {
                SocketConnection.this.pushService.disconnect(error, e);
            }

            public String getDesc() {
                return "shutdown the connection. " + error + ", " + e;
            }
        });
    }

    public Socket createSocket() {
        return new Socket();
    }

    Fallback getFallback(final String host) {
        Fallback fallback = HostManager.getInstance().getFallbacksByHost(host, false);
        if (!fallback.isEffective()) {
            TaskExecutor.execute(new Runnable() {
                public void run() {
                    HostManager.getInstance().getFallbacksByHost(host, true);
                }
            });
        }
        return fallback;
    }

    public void updateLastSent() {
        this.lastPingSent = SystemClock.elapsedRealtime();
    }

    public void updateLastReceived() {
        this.lastPingReceived = SystemClock.elapsedRealtime();
    }
}
