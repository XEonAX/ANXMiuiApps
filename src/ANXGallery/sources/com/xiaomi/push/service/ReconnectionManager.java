package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.XMPushService.ConnectJob;
import com.xiaomi.stats.StatsHandler;

class ReconnectionManager {
    private static int MAX_RETRY_INTERVAL = 300000;
    private int attempts = 0;
    private int curDelay;
    private long lastConnectTime;
    private XMPushService mPushService;

    public ReconnectionManager(XMPushService pushService) {
        this.mPushService = pushService;
        this.curDelay = 500;
        this.lastConnectTime = 0;
    }

    public void onConnectSucceeded() {
        this.lastConnectTime = System.currentTimeMillis();
        this.mPushService.removeJobs(1);
        this.attempts = 0;
    }

    public void tryReconnect(boolean rightNow) {
        XMPushService xMPushService;
        XMPushService xMPushService2;
        if (!this.mPushService.shouldReconnect()) {
            MyLog.v("should not reconnect as no client or network.");
        } else if (rightNow) {
            if (!this.mPushService.hasJob(1)) {
                this.attempts++;
            }
            this.mPushService.removeJobs(1);
            xMPushService = this.mPushService;
            xMPushService2 = this.mPushService;
            xMPushService2.getClass();
            xMPushService.executeJob(new ConnectJob());
        } else if (!this.mPushService.hasJob(1)) {
            int delay = timeDelay();
            if (!this.mPushService.hasJob(1)) {
                this.attempts++;
            }
            MyLog.w("schedule reconnect in " + delay + "ms");
            xMPushService = this.mPushService;
            xMPushService2 = this.mPushService;
            xMPushService2.getClass();
            xMPushService.executeJobDelayed(new ConnectJob(), (long) delay);
            if (this.attempts == 2 && StatsHandler.getInstance().isAllowStats()) {
                NetworkCheckup.dumpNativeNetInfo();
            }
            if (this.attempts == 3) {
                NetworkCheckup.connectivityTest();
            }
        }
    }

    private int timeDelay() {
        if (this.attempts > 8) {
            return 300000;
        }
        double randomness = 1.0d + (Math.random() * 2.0d);
        if (this.attempts > 4) {
            return (int) (60000.0d * randomness);
        }
        if (this.attempts > 1) {
            return (int) (10000.0d * randomness);
        }
        if (this.lastConnectTime == 0) {
            return 0;
        }
        if (System.currentTimeMillis() - this.lastConnectTime >= 300000) {
            this.curDelay = 1000;
            return 0;
        } else if (this.curDelay >= MAX_RETRY_INTERVAL) {
            return this.curDelay;
        } else {
            int delay = this.curDelay;
            this.curDelay = (int) (((double) this.curDelay) * 1.5d);
            return delay;
        }
    }
}
