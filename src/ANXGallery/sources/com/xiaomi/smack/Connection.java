package com.xiaomi.smack;

import android.util.Pair;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.channel.commonutils.string.MD5;
import com.xiaomi.measite.smack.AndroidDebugger;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import com.xiaomi.push.service.PushConstants;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.slim.Blob;
import com.xiaomi.smack.debugger.SmackDebugger;
import com.xiaomi.smack.filter.PacketFilter;
import com.xiaomi.smack.packet.Packet;
import java.io.Reader;
import java.io.Writer;
import java.util.Collection;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class Connection {
    public static boolean DEBUG_ENABLED;
    private static final AtomicInteger connectionCounter = new AtomicInteger(0);
    protected String challenge = "";
    protected ConnectionConfiguration config;
    protected int connTimes = 0;
    private int connectStatus = 2;
    protected long connectTime = -1;
    protected final int connectionCounterValue = connectionCounter.getAndIncrement();
    private final Collection<ConnectionListener> connectionListeners = new CopyOnWriteArrayList();
    protected String connectionPoint = "";
    protected SmackDebugger debugger = null;
    protected volatile long lastPingReceived = 0;
    protected volatile long lastPingSent = 0;
    private LinkedList<Pair<Integer, Long>> mCachedStatus = new LinkedList();
    protected XMPushService mPushService;
    private long readAlive = 0;
    protected final Map<PacketListener, ListenerWrapper> recvListeners = new ConcurrentHashMap();
    protected final Map<PacketListener, ListenerWrapper> sendListeners = new ConcurrentHashMap();
    protected long writeAlive = 0;

    public static class ListenerWrapper {
        private PacketFilter packetFilter;
        private PacketListener packetListener;

        public ListenerWrapper(PacketListener packetListener, PacketFilter packetFilter) {
            this.packetListener = packetListener;
            this.packetFilter = packetFilter;
        }

        public void notifyListener(Packet packet) {
            if (this.packetFilter == null || this.packetFilter.accept(packet)) {
                this.packetListener.processPacket(packet);
            }
        }

        public void notifyListener(Blob blob) {
            this.packetListener.process(blob);
        }
    }

    public abstract void batchSend(Blob[] blobArr) throws XMPPException;

    public abstract void bind(ClientLoginInfo clientLoginInfo) throws XMPPException;

    public abstract void disconnect(int i, Exception exception);

    public abstract void ping(boolean z) throws XMPPException;

    public abstract void send(Blob blob) throws XMPPException;

    public abstract void sendPacket(Packet packet) throws XMPPException;

    public abstract void unbind(String str, String str2) throws XMPPException;

    static {
        DEBUG_ENABLED = false;
        try {
            DEBUG_ENABLED = Boolean.getBoolean("smack.debugEnabled");
        } catch (Exception e) {
        }
        SmackConfiguration.getVersion();
    }

    protected Connection(XMPushService pushService, ConnectionConfiguration configuration) {
        this.config = configuration;
        this.mPushService = pushService;
        initDebugger();
    }

    public ConnectionConfiguration getConfiguration() {
        return this.config;
    }

    public String getHost() {
        return this.config.getHost();
    }

    public String getConnectionPoint() {
        return this.config.getConnectionPoint();
    }

    public boolean isBinaryConnection() {
        return false;
    }

    public long getLastPingRecv() {
        return this.lastPingReceived;
    }

    public void disconnect() {
        disconnect(0, null);
    }

    public void addConnectionListener(ConnectionListener connectionListener) {
        if (connectionListener != null && !this.connectionListeners.contains(connectionListener)) {
            this.connectionListeners.add(connectionListener);
        }
    }

    public void removeConnectionListener(ConnectionListener connectionListener) {
        this.connectionListeners.remove(connectionListener);
    }

    public void addPacketListener(PacketListener packetListener, PacketFilter packetFilter) {
        if (packetListener == null) {
            throw new NullPointerException("Packet listener is null.");
        }
        this.recvListeners.put(packetListener, new ListenerWrapper(packetListener, packetFilter));
    }

    public void addPacketSendingListener(PacketListener packetListener, PacketFilter packetFilter) {
        if (packetListener == null) {
            throw new NullPointerException("Packet listener is null.");
        }
        this.sendListeners.put(packetListener, new ListenerWrapper(packetListener, packetFilter));
    }

    protected void initDebugger() {
        if (this.config.isDebuggerEnabled() && this.debugger == null) {
            String className = null;
            try {
                className = System.getProperty("smack.debuggerClass");
            } catch (Throwable th) {
            }
            Class<?> debuggerClass = null;
            if (className != null) {
                try {
                    debuggerClass = Class.forName(className);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (debuggerClass == null) {
                this.debugger = new AndroidDebugger(this);
                return;
            }
            try {
                this.debugger = (SmackDebugger) debuggerClass.getConstructor(new Class[]{Connection.class, Writer.class, Reader.class}).newInstance(new Object[]{this});
            } catch (Exception e2) {
                throw new IllegalArgumentException("Can't initialize the configured debugger!", e2);
            }
        }
    }

    public boolean isConnecting() {
        return this.connectStatus == 0;
    }

    public boolean isConnected() {
        return this.connectStatus == 1;
    }

    public int getConnTryTimes() {
        return this.connTimes;
    }

    public void setConnectionStatus(int newStatus, int reason, Exception e) {
        if (newStatus != this.connectStatus) {
            MyLog.w(String.format("update the connection status. %1$s -> %2$s : %3$s ", new Object[]{getDesc(this.connectStatus), getDesc(newStatus), PushConstants.getErrorDesc(reason)}));
        }
        if (Network.hasNetwork(this.mPushService)) {
            addStatus(newStatus);
        }
        if (newStatus == 1) {
            this.mPushService.removeJobs(10);
            if (this.connectStatus != 0) {
                MyLog.w("try set connected while not connecting.");
            }
            this.connectStatus = newStatus;
            for (ConnectionListener listener : this.connectionListeners) {
                listener.reconnectionSuccessful(this);
            }
        } else if (newStatus == 0) {
            if (this.connectStatus != 2) {
                MyLog.w("try set connecting while not disconnected.");
            }
            this.connectStatus = newStatus;
            for (ConnectionListener listener2 : this.connectionListeners) {
                listener2.connectionStarted(this);
            }
        } else if (newStatus == 2) {
            this.mPushService.removeJobs(10);
            if (this.connectStatus == 0) {
                for (ConnectionListener listener22 : this.connectionListeners) {
                    listener22.reconnectionFailed(this, e == null ? new CancellationException("disconnect while connecting") : e);
                }
            } else if (this.connectStatus == 1) {
                for (ConnectionListener listener222 : this.connectionListeners) {
                    listener222.connectionClosed(this, reason, e);
                }
            }
            this.connectStatus = newStatus;
        }
    }

    private String getDesc(int connectStatus) {
        if (connectStatus == 1) {
            return "connected";
        }
        if (connectStatus == 0) {
            return "connecting";
        }
        if (connectStatus == 2) {
            return "disconnected";
        }
        return "unknown";
    }

    public int getConnectionStatus() {
        return this.connectStatus;
    }

    public synchronized void setChallenge(String challenge) {
        if (this.connectStatus == 0) {
            MyLog.w("setChallenge hash = " + MD5.MD5_32(challenge).substring(0, 8));
            this.challenge = challenge;
            setConnectionStatus(1, 0, null);
        } else {
            MyLog.w("ignore setChallenge because connection was disconnected");
        }
    }

    public synchronized void setReadAlive() {
        this.readAlive = System.currentTimeMillis();
    }

    public synchronized boolean isReadAlive() {
        return System.currentTimeMillis() - this.readAlive < ((long) SmackConfiguration.getCheckAliveInterval());
    }

    public synchronized boolean isReadAlive(long checkTime) {
        return this.readAlive >= checkTime;
    }

    public synchronized boolean isWriteAlive() {
        return System.currentTimeMillis() - this.writeAlive < ((long) (SmackConfiguration.getCheckAliveInterval() << 1));
    }

    private void addStatus(int newStatus) {
        synchronized (this.mCachedStatus) {
            if (newStatus == 1) {
                this.mCachedStatus.clear();
            } else {
                this.mCachedStatus.add(new Pair(Integer.valueOf(newStatus), Long.valueOf(System.currentTimeMillis())));
                if (this.mCachedStatus.size() > 6) {
                    this.mCachedStatus.remove(0);
                }
            }
        }
    }

    public void clearCachedStatus() {
        synchronized (this.mCachedStatus) {
            this.mCachedStatus.clear();
        }
    }
}
