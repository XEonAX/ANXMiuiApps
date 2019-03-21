package com.xiaomi.clientreport.manager;

import android.content.Context;
import android.os.Process;
import com.xiaomi.channel.commonutils.android.AppInfoUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.processor.IEventProcessor;
import com.xiaomi.clientreport.processor.IPerfProcessor;

public class ClientReportClient {
    public static void init(Context context, Config config, IEventProcessor eventProcessor, IPerfProcessor perfProcessor) {
        MyLog.v("init in process " + AppInfoUtils.getProcessName(context) + " pid :" + Process.myPid() + " threadId: " + Thread.currentThread().getId());
        ClientReportLogicManager.getInstance(context).init(config, eventProcessor, perfProcessor);
        if (AppInfoUtils.isAppMainProc(context)) {
            MyLog.v("init in process　start scheduleJob");
            ClientReportLogicManager.getInstance(context).startScheduleJob();
        }
    }

    public static void updateConfig(Context context, Config config) {
        if (config != null) {
            ClientReportLogicManager.getInstance(context).updateConfig(config.isEventUploadSwitchOpen(), config.isPerfUploadSwitchOpen(), config.getEventUploadFrequency(), config.getPerfUploadFrequency());
        }
    }

    public static void reportEvent(Context context, EventClientReport clientReport) {
        if (clientReport != null) {
            ClientReportLogicManager.getInstance(context).writeEvent(clientReport);
        }
    }

    public static void reportPerf(Context context, PerfClientReport clientReport) {
        if (clientReport != null) {
            ClientReportLogicManager.getInstance(context).writePerf(clientReport);
        }
    }
}
