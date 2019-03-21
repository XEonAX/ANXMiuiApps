package com.xiaomi.clientreport.job;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.clientreport.processor.IDataSend;
import com.xiaomi.clientreport.processor.IEventProcessor;
import com.xiaomi.clientreport.processor.IPerfProcessor;
import com.xiaomi.clientreport.util.SPManager;

public class ReadAndSendJob implements Runnable {
    private Context mContext;
    private IDataSend mReadAndSender;

    public void setReadAndSender(IDataSend readAndSender) {
        this.mReadAndSender = readAndSender;
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public void run() {
        try {
            if (this.mReadAndSender != null) {
                this.mReadAndSender.readAndSend();
            }
            MyLog.v("begin read and send perf / event");
            if (this.mReadAndSender instanceof IEventProcessor) {
                SPManager.getInstance(this.mContext).setLongValue("sp_client_report_status", "event_last_upload_time", System.currentTimeMillis());
            } else if (this.mReadAndSender instanceof IPerfProcessor) {
                SPManager.getInstance(this.mContext).setLongValue("sp_client_report_status", "perf_last_upload_time", System.currentTimeMillis());
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }
}
