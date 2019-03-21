package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.lang.ref.WeakReference;

public class AwakeAppPingJob extends Job {
    private boolean mIsCache = false;
    private WeakReference<XMPushService> mXMPushServiceWR;
    private XmPushActionNotification mXmPushActionNotification;

    public AwakeAppPingJob(XmPushActionNotification xmPushActionNotification, WeakReference<XMPushService> xMPushServiceWR, boolean isCache) {
        this.mXmPushActionNotification = xmPushActionNotification;
        this.mXMPushServiceWR = xMPushServiceWR;
        this.mIsCache = isCache;
    }

    public int getJobId() {
        return 22;
    }

    public void run() {
        if (this.mXMPushServiceWR != null && this.mXmPushActionNotification != null) {
            XMPushService xMPushService = (XMPushService) this.mXMPushServiceWR.get();
            if (xMPushService != null) {
                this.mXmPushActionNotification.setId(PacketHelper.generatePacketID());
                this.mXmPushActionNotification.setRequireAck(false);
                MyLog.v("MoleInfo aw_ping : send aw_Ping msg " + this.mXmPushActionNotification.getId());
                try {
                    String packageName = this.mXmPushActionNotification.getPackageName();
                    xMPushService.sendMessage(packageName, XmPushThriftSerializeUtils.convertThriftObjectToBytes(MIPushHelper.generateRequestContainer(packageName, this.mXmPushActionNotification.getAppId(), this.mXmPushActionNotification, ActionType.Notification)), this.mIsCache);
                } catch (Exception e) {
                    MyLog.e("MoleInfo aw_ping : send help app ping error" + e.toString());
                }
            }
        }
    }
}
