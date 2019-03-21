package com.xiaomi.push.service.clientReport;

import android.content.Context;
import com.xiaomi.clientreport.processor.DefaultEventProcessor;
import java.util.List;

public class MIPushEventDataProcessor extends DefaultEventProcessor {
    public MIPushEventDataProcessor(Context context) {
        super(context);
    }

    public void send(List<String> data) {
        PushClientReportHelper.sendData(this.mContext, data);
    }
}
