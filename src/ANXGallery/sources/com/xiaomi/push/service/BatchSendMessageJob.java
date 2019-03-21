package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.XMPushService.Job;
import com.xiaomi.slim.Blob;

class BatchSendMessageJob extends Job {
    private Blob[] mBlobs;
    private XMPushService pushService = null;

    public BatchSendMessageJob(XMPushService pushService, Blob[] blobs) {
        super(4);
        this.pushService = pushService;
        this.mBlobs = blobs;
    }

    public void process() {
        try {
            if (this.mBlobs != null) {
                this.pushService.batchSendPacket(this.mBlobs);
            }
        } catch (Throwable e) {
            MyLog.e(e);
            this.pushService.disconnect(10, e);
        }
    }

    public String getDesc() {
        return "batch send message.";
    }
}
