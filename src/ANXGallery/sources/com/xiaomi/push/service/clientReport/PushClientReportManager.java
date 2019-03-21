package com.xiaomi.push.service.clientReport;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.clientreport.data.BaseClientReport;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.manager.ClientReportClient;

public class PushClientReportManager {
    private static volatile PushClientReportManager sInstance;
    private Context mContext;

    private PushClientReportManager(Context context) {
        this.mContext = context;
    }

    public static PushClientReportManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (PushClientReportManager.class) {
                if (sInstance == null) {
                    sInstance = new PushClientReportManager(context);
                }
            }
        }
        return sInstance;
    }

    public void reportEvent(String appPkg, String interfaceId, String eventId, int eventType, long eventTime, String eventContent) {
        if (!TextUtils.isEmpty(interfaceId) && !TextUtils.isEmpty(eventId)) {
            BaseClientReport data = PushClientReportHelper.reportEvent2Object(this.mContext, interfaceId, eventId, eventType, eventTime, eventContent);
            data.setAppPackageName(appPkg);
            collectData(data);
        }
    }

    public void reportEvent(String appPkg, String interfaceId, String eventId, int eventType, String eventContent) {
        reportEvent(appPkg, interfaceId, eventId, eventType, System.currentTimeMillis(), eventContent);
    }

    public void reportEvent(String appPkg, Intent intent, int eventType, String content) {
        if (intent != null) {
            String str = appPkg;
            reportEvent(str, PushClientReportHelper.getInterfaceIdByType(intent.getIntExtra("eventMessageType", -1)), intent.getStringExtra("messageId"), eventType, System.currentTimeMillis(), content);
        }
    }

    public void reportEvent4NeedDrop(String appPkg, String interfaceId, String eventId, String eventContent) {
        reportEvent(appPkg, interfaceId, eventId, 5002, System.currentTimeMillis(), eventContent);
    }

    public void reportEvent4ERROR(String appPkg, String interfaceId, String eventId, String eventContent) {
        reportEvent(appPkg, interfaceId, eventId, 5001, System.currentTimeMillis(), eventContent);
    }

    public void reportEvent4ERROR(String appPkg, Intent intent, String eventContent) {
        if (intent != null) {
            String str = appPkg;
            reportEvent(str, PushClientReportHelper.getInterfaceIdByType(intent.getIntExtra("eventMessageType", -1)), intent.getStringExtra("messageId"), 5001, System.currentTimeMillis(), eventContent);
        }
    }

    public void reportEvent4ERROR(String appPkg, String interfaceId, String eventId, Throwable throwable) {
        reportEvent(appPkg, interfaceId, eventId, 5001, System.currentTimeMillis(), throwable.getMessage());
    }

    public void reportEvent4ERROR(String appPkg, Intent intent, Throwable throwable) {
        if (intent != null) {
            String str = appPkg;
            reportEvent(str, PushClientReportHelper.getInterfaceIdByType(intent.getIntExtra("eventMessageType", -1)), intent.getStringExtra("messageId"), 5001, System.currentTimeMillis(), throwable.getMessage());
        }
    }

    public void reportEvent4DUPMD(String appPkg, String interfaceId, String eventId, String eventContent) {
        reportEvent(appPkg, interfaceId, eventId, 4002, System.currentTimeMillis(), eventContent);
    }

    public void reportPerf(String appPkg, int code, long perfCounts, long perfLatencies) {
        if (code >= 0 && perfLatencies >= 0 && perfCounts > 0) {
            BaseClientReport data = PushClientReportHelper.reportPerf2Object(this.mContext, code, perfCounts, perfLatencies);
            data.setAppPackageName(appPkg);
            collectData(data);
        }
    }

    private void collectData(BaseClientReport data) {
        if (data instanceof PerfClientReport) {
            ClientReportClient.reportPerf(this.mContext, (PerfClientReport) data);
        } else if (data instanceof EventClientReport) {
            ClientReportClient.reportEvent(this.mContext, (EventClientReport) data);
        }
    }
}
