package com.xiaomi.clientreport.job;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.clientreport.manager.ClientReportLogicManager;
import com.xiaomi.clientreport.util.SPManager;

public class EventUploadJob extends Job {
    private Context mContext;

    public EventUploadJob(Context context) {
        this.mContext = context;
    }

    public int getJobId() {
        return 100886;
    }

    public void run() {
        try {
            if (checkEventNeedUpload()) {
                MyLog.v(this.mContext.getPackageName() + " begin upload event");
                ClientReportLogicManager.getInstance(this.mContext).sendEvent();
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }

    public boolean checkEventNeedUpload() {
        if (!ClientReportLogicManager.getInstance(this.mContext).getConfig().isEventUploadSwitchOpen()) {
            return false;
        }
        int frequency = (int) ClientReportLogicManager.getInstance(this.mContext).getConfig().getEventUploadFrequency();
        boolean result = false;
        if (((int) ((System.currentTimeMillis() - SPManager.getInstance(this.mContext).getLongValue("sp_client_report_status", "event_last_upload_time", 0)) / 1000)) >= frequency - 5) {
            result = true;
        }
        MyLog.v(this.mContext.getPackageName() + " event upload result " + result);
        return result;
    }
}
