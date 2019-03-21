package com.xiaomi.clientreport.job;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.clientreport.processor.IWrite;

public class WriteJob implements Runnable {
    private Context mContext;
    private IWrite mWriter;

    public WriteJob(Context context, IWrite writer) {
        this.mContext = context;
        this.mWriter = writer;
    }

    public void run() {
        try {
            if (this.mWriter != null) {
                this.mWriter.process();
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }
}
