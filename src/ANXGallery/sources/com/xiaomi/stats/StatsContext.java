package com.xiaomi.stats;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.thrift.ChannelStatsType;
import com.xiaomi.push.thrift.StatsEvent;
import com.xiaomi.smack.Connection;
import com.xiaomi.smack.ConnectionListener;
import com.xiaomi.smack.SmackConfiguration;

public class StatsContext implements ConnectionListener {
    private long accumulatedChannelDuration = 0;
    private long accumulatedNetworkDuration = 0;
    private long channelConnectedTime = 0;
    Connection connection;
    private String connectionPoint;
    private Exception exception;
    private long mRxBytes = 0;
    private long mTxBytes = 0;
    private long networkConnectedTime = 0;
    XMPushService pushService;
    private int reason;

    StatsContext(XMPushService pushService) {
        this.pushService = pushService;
        this.connectionPoint = "";
        resetChannelStats();
        int uid = Process.myUid();
        this.mRxBytes = TrafficStats.getUidRxBytes(uid);
        this.mTxBytes = TrafficStats.getUidTxBytes(uid);
    }

    Exception getCaughtException() {
        return this.exception;
    }

    public synchronized void statsChannelIfNeed() {
        if (this.pushService != null) {
            String connpt = Network.getActiveConnPoint(this.pushService);
            boolean networkConnected = Network.hasNetwork(this.pushService);
            long now = SystemClock.elapsedRealtime();
            if (this.networkConnectedTime > 0) {
                this.accumulatedNetworkDuration += now - this.networkConnectedTime;
                this.networkConnectedTime = 0;
            }
            if (this.channelConnectedTime != 0) {
                this.accumulatedChannelDuration += now - this.channelConnectedTime;
                this.channelConnectedTime = 0;
            }
            if (networkConnected) {
                if ((!TextUtils.equals(this.connectionPoint, connpt) && this.accumulatedNetworkDuration > 30000) || this.accumulatedNetworkDuration > 5400000) {
                    statsChannelDuration();
                }
                this.connectionPoint = connpt;
                if (this.networkConnectedTime == 0) {
                    this.networkConnectedTime = now;
                }
                if (this.pushService.isConnected()) {
                    this.channelConnectedTime = now;
                }
            }
        }
    }

    private void resetChannelStats() {
        this.accumulatedNetworkDuration = 0;
        this.accumulatedChannelDuration = 0;
        this.networkConnectedTime = 0;
        this.channelConnectedTime = 0;
        long now = SystemClock.elapsedRealtime();
        if (Network.hasNetwork(this.pushService)) {
            this.networkConnectedTime = now;
        }
        if (this.pushService.isConnected()) {
            this.channelConnectedTime = now;
        }
    }

    private synchronized void statsChannelDuration() {
        MyLog.v("stat connpt = " + this.connectionPoint + " netDuration = " + this.accumulatedNetworkDuration + " ChannelDuration = " + this.accumulatedChannelDuration + " channelConnectedTime = " + this.channelConnectedTime);
        StatsEvent evt = new StatsEvent();
        evt.chid = (byte) 0;
        evt.setType(ChannelStatsType.CHANNEL_ONLINE_RATE.getValue());
        evt.setConnpt(this.connectionPoint);
        evt.setTime((int) (System.currentTimeMillis() / 1000));
        evt.setValue((int) (this.accumulatedNetworkDuration / 1000));
        evt.setSubvalue((int) (this.accumulatedChannelDuration / 1000));
        StatsHandler.getInstance().add(evt);
        resetChannelStats();
    }

    public void connectionStarted(Connection conn) {
        this.reason = 0;
        this.exception = null;
        this.connection = conn;
        this.connectionPoint = Network.getActiveConnPoint(this.pushService);
        StatsHelper.trackStart(0, ChannelStatsType.CONN_SUCCESS.getValue());
    }

    public void connectionClosed(Connection conn, int reason, Exception e) {
        if (this.reason == 0 && this.exception == null) {
            this.reason = reason;
            this.exception = e;
            StatsHelper.connectionDown(conn.getHost(), e);
        }
        if (reason == 22 && this.channelConnectedTime != 0) {
            long duration = conn.getLastPingRecv() - this.channelConnectedTime;
            if (duration < 0) {
                duration = 0;
            }
            this.accumulatedChannelDuration += duration + ((long) (SmackConfiguration.getPingInteval() / 2));
            this.channelConnectedTime = 0;
        }
        statsChannelIfNeed();
        int uid = Process.myUid();
        long rx = TrafficStats.getUidRxBytes(uid);
        long tx = TrafficStats.getUidTxBytes(uid);
        MyLog.v("Stats rx=" + (rx - this.mRxBytes) + ", tx=" + (tx - this.mTxBytes));
        this.mRxBytes = rx;
        this.mTxBytes = tx;
    }

    public void reconnectionSuccessful(Connection conn) {
        statsChannelIfNeed();
        this.channelConnectedTime = SystemClock.elapsedRealtime();
        StatsHelper.trackEnd(0, ChannelStatsType.CONN_SUCCESS.getValue(), conn.getHost(), conn.getConnTryTimes());
    }

    public void reconnectionFailed(Connection conn, Exception e) {
        int causedByNetwork;
        if (Network.hasNetwork(this.pushService)) {
            causedByNetwork = 1;
        } else {
            causedByNetwork = 0;
        }
        StatsHelper.stats(0, ChannelStatsType.CHANNEL_CON_FAIL.getValue(), 1, conn.getHost(), causedByNetwork);
        statsChannelIfNeed();
    }
}
