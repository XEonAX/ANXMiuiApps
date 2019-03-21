package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.XMPushService.Job;
import com.xiaomi.slim.Blob;

class SendMessageJob extends Job {
    private Blob mBlob;
    private XMPushService pushService = null;

    public SendMessageJob(XMPushService pushService, Blob blob) {
        super(4);
        this.pushService = pushService;
        this.mBlob = blob;
    }

    public void process() {
        try {
            if (this.mBlob != null) {
                this.pushService.sendPacket(this.mBlob);
            }
        } catch (Throwable e) {
            MyLog.e(e);
            this.pushService.disconnect(10, e);
        }
    }

    public String getDesc() {
        return "send a message.";
    }
}
