package com.xiaomi.stats;

import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo.ClientStatusListener;
import com.xiaomi.push.service.PushClientsManager.ClientStatus;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.XMPushService.Job;
import com.xiaomi.push.thrift.ChannelStatsType;
import com.xiaomi.push.thrift.StatsEvent;
import com.xiaomi.smack.Connection;

class BindTracker implements ClientStatusListener {
    private ClientLoginInfo client;
    private Connection connection;
    private XMPushService pushService;
    private int reason;
    private ClientStatus status;
    private boolean tracked = false;

    BindTracker(XMPushService pushService, ClientLoginInfo client) {
        this.pushService = pushService;
        this.status = ClientStatus.binding;
        this.client = client;
    }

    void track() {
        this.client.addClientStatusListener(this);
        this.connection = this.pushService.getCurrentConnection();
    }

    public void onChange(ClientStatus oldStatus, ClientStatus newStatus, int reason) {
        if (!this.tracked && oldStatus == ClientStatus.binding) {
            this.status = newStatus;
            this.reason = reason;
            this.tracked = true;
        }
        this.pushService.executeJob(new Job(4) {
            public void process() {
                BindTracker.this.done();
            }

            public String getDesc() {
                return "Handling bind stats";
            }
        });
    }

    private void untrack() {
        this.client.removeClientStatusListener(this);
    }

    private void done() {
        untrack();
        if (this.tracked && this.reason != 11) {
            StatsEvent evt = StatsHandler.getInstance().createStatsEvent();
            switch (this.status) {
                case unbind:
                    if (this.reason != 17) {
                        if (this.reason != 21) {
                            try {
                                TypeWraper wraper = StatsAnalyser.fromBind(StatsHandler.getContext().getCaughtException());
                                evt.type = wraper.type.getValue();
                                evt.setAnnotation(wraper.annotation);
                                break;
                            } catch (NullPointerException e) {
                                evt = null;
                                break;
                            }
                        }
                        evt.type = ChannelStatsType.BIND_TIMEOUT.getValue();
                        break;
                    }
                    evt.type = ChannelStatsType.BIND_TCP_READ_TIMEOUT.getValue();
                    break;
                case binded:
                    evt.type = ChannelStatsType.BIND_SUCCESS.getValue();
                    break;
            }
            if (evt != null) {
                evt.setHost(this.connection.getHost());
                evt.setUser(this.client.userId);
                evt.value = 1;
                try {
                    evt.setChid((byte) Integer.parseInt(this.client.chid));
                } catch (NumberFormatException e2) {
                }
                StatsHandler.getInstance().add(evt);
            }
        }
    }
}
