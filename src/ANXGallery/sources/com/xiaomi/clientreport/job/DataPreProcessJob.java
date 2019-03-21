package com.xiaomi.clientreport.job;

import android.content.Context;
import com.xiaomi.clientreport.data.BaseClientReport;
import com.xiaomi.clientreport.processor.IWrite;

public class DataPreProcessJob implements Runnable {
    private BaseClientReport mClientReport;
    private Context mContext;
    private IWrite mWriter;

    public DataPreProcessJob(Context context, BaseClientReport clientReport, IWrite writer) {
        this.mContext = context;
        this.mClientReport = clientReport;
        this.mWriter = writer;
    }

    public void run() {
        if (this.mWriter != null) {
            this.mWriter.preProcess(this.mClientReport);
        }
    }
}
