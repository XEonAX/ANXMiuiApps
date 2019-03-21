package com.xiaomi.push.service.clientReport;

import android.content.Context;
import com.xiaomi.clientreport.processor.DefaultPerfProcessor;
import java.util.List;

public class MIPushPerfDataProcessor extends DefaultPerfProcessor {
    public MIPushPerfDataProcessor(Context context) {
        super(context);
    }

    public void send(List<String> data) {
        PushClientReportHelper.sendData(this.mContext, data);
    }
}
