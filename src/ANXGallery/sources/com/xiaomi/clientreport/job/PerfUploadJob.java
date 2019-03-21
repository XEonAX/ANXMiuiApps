package com.xiaomi.clientreport.job;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.clientreport.manager.ClientReportLogicManager;
import com.xiaomi.clientreport.util.SPManager;

public class PerfUploadJob extends Job {
    private Context mContext;

    public PerfUploadJob(Context context) {
        this.mContext = context;
    }

    public int getJobId() {
        return 100887;
    }

    public void run() {
        try {
            if (checkPerfNeedUpload()) {
                ClientReportLogicManager.getInstance(this.mContext).sendPerf();
                MyLog.v(this.mContext.getPackageName() + "perf  begin upload");
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }

    public boolean checkPerfNeedUpload() {
        if (!ClientReportLogicManager.getInstance(this.mContext).getConfig().isPerfUploadSwitchOpen()) {
            return false;
        }
        int frequency = (int) ClientReportLogicManager.getInstance(this.mContext).getConfig().getPerfUploadFrequency();
        boolean result = false;
        if (((int) ((System.currentTimeMillis() - SPManager.getInstance(this.mContext).getLongValue("sp_client_report_status", "perf_last_upload_time", 0)) / 1000)) >= frequency - 5) {
            result = true;
        }
        MyLog.v(this.mContext.getPackageName() + "perf upload result " + result);
        return result;
    }
}
