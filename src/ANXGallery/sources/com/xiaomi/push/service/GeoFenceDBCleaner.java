package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.push.service.module.GeoFenceMessage;
import java.util.Iterator;

public class GeoFenceDBCleaner extends Job {
    private XMPushService mService;

    public GeoFenceDBCleaner(XMPushService pushService) {
        this.mService = pushService;
    }

    public int getJobId() {
        return 15;
    }

    public void run() {
        Iterator it = GeoFenceMessageDao.getInstance(this.mService).findAllGeoFencingMessage().iterator();
        while (it.hasNext()) {
            GeoFenceMessage message = (GeoFenceMessage) it.next();
            if (message.getDeadline() < System.currentTimeMillis()) {
                if (GeoFenceMessageDao.getInstance(this.mService).deleteGeoMessagesByMessageId(message.getMessageId()) == 0) {
                    MyLog.w("GeofenceDbCleaner delete a geofence message failed message_id:" + message.getMessageId());
                }
                MIPushEventProcessor.sendGeoAck(this.mService, MIPushEventProcessor.buildContainer(message.getContent()), false, false, true);
            }
        }
    }
}
