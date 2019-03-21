package com.xiaomi.push.service.clientReport;

import android.content.Context;
import android.text.TextUtils;
import com.nexstreaming.nexeditorsdk.nexProject;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.manager.ClientReportClient;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.push.service.TinyDataHelper;
import com.xiaomi.push.service.TinyDataStorage;
import com.xiaomi.push.service.xmpush.Command;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import com.xiaomi.xmpush.thrift.ConfigKey;
import com.xiaomi.xmpush.thrift.NotificationType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PushClientReportHelper {
    private static Uploader mUploader;
    private static Map<String, NotificationType> notificationTypeMap = null;

    public interface Uploader {
        void uploader(Context context, ClientUploadDataItem clientUploadDataItem);
    }

    public static void setUploader(Uploader uploader) {
        mUploader = uploader;
    }

    private static void sendByTinyData(Context context, ClientUploadDataItem item) {
        if (isInXmsf(context.getApplicationContext())) {
            TinyDataStorage.cacheTinyData(context.getApplicationContext(), item);
        } else if (mUploader != null) {
            mUploader.uploader(context, item);
        }
    }

    public static EventClientReport newEvent(String interfaceId) {
        EventClientReport report = new EventClientReport();
        report.production = 1000;
        report.reportType = 1001;
        report.clientInterfaceId = interfaceId;
        return report;
    }

    public static PerfClientReport newPerf() {
        PerfClientReport report = new PerfClientReport();
        report.production = 1000;
        report.reportType = 1000;
        report.clientInterfaceId = "P100000";
        return report;
    }

    public static EventClientReport reportEvent2Object(Context context, String interfaceId, String eventId, int eventType, long eventTime, String eventContent) {
        EventClientReport eventClientReport = newEvent(interfaceId);
        eventClientReport.eventId = eventId;
        eventClientReport.eventType = eventType;
        eventClientReport.eventTime = eventTime;
        eventClientReport.eventContent = eventContent;
        return eventClientReport;
    }

    public static PerfClientReport reportPerf2Object(Context context, int code, long perfCounts, long perfLatencies) {
        PerfClientReport perfClientReport = newPerf();
        perfClientReport.code = code;
        perfClientReport.perfCounts = perfCounts;
        perfClientReport.perfLatencies = perfLatencies;
        return perfClientReport;
    }

    public static String getInterfaceIdByType(int eventMessageType) {
        if (eventMessageType == 1000) {
            return "E100000";
        }
        if (eventMessageType == 3000) {
            return "E100002";
        }
        if (eventMessageType == nexProject.kAutoThemeTransitionDuration) {
            return "E100001";
        }
        return "";
    }

    public static int changeValueToCode(int value) {
        if (value > 0) {
            return value + 1000;
        }
        return -1;
    }

    public static boolean isInXmsf(Context context) {
        return (context == null || TextUtils.isEmpty(context.getPackageName()) || !"com.xiaomi.xmsf".equals(context.getPackageName())) ? false : true;
    }

    public static void sendData(Context context, List<String> dataList) {
        if (dataList != null) {
            try {
                for (String data : dataList) {
                    ClientUploadDataItem item = wrapperData(context, data);
                    if (TinyDataHelper.verify(item, false)) {
                        MyLog.v(item.getId() + "is not valid...");
                    } else {
                        MyLog.v("send event/perf data item id:" + item.getId());
                        sendByTinyData(context, item);
                    }
                }
            } catch (Throwable e) {
                MyLog.e(e.getMessage());
            }
        }
    }

    public static ClientUploadDataItem wrapperData(Context context, String data) {
        if (TextUtils.isEmpty(data)) {
            return null;
        }
        ClientUploadDataItem clientUploadDataItem = new ClientUploadDataItem();
        clientUploadDataItem.setCategory("category_client_report_data");
        clientUploadDataItem.setChannel("push_sdk_channel");
        clientUploadDataItem.setCounter(1);
        clientUploadDataItem.setData(data);
        clientUploadDataItem.setFromSdk(true);
        clientUploadDataItem.setTimestamp(System.currentTimeMillis());
        clientUploadDataItem.setPkgName(context.getPackageName());
        clientUploadDataItem.setSourcePackage("com.xiaomi.xmsf");
        clientUploadDataItem.setId(TinyDataHelper.nextTinyDataItemId());
        clientUploadDataItem.setName("quality_support");
        return clientUploadDataItem;
    }

    public static void initEventPerfLogic(Context context, Config config) {
        ClientReportClient.init(context, config, new MIPushEventDataProcessor(context), new MIPushPerfDataProcessor(context));
    }

    public static void checkConfigChange(Context context) {
        ClientReportClient.updateConfig(context, getConfig(context));
    }

    public static Config getConfig(Context context) {
        boolean isPerfOpen = OnlineConfig.getInstance(context).getBooleanValue(ConfigKey.PerfUploadSwitch.getValue(), false);
        boolean isEventOpen = OnlineConfig.getInstance(context).getBooleanValue(ConfigKey.EventUploadSwitch.getValue(), false);
        int perfFrequency = OnlineConfig.getInstance(context).getIntValue(ConfigKey.PerfUploadFrequency.getValue(), 86400);
        return Config.getBuilder().setEventUploadSwitchOpen(isEventOpen).setEventUploadFrequency((long) OnlineConfig.getInstance(context).getIntValue(ConfigKey.EventUploadFrequency.getValue(), 86400)).setPerfUploadSwitchOpen(isPerfOpen).setPerfUploadFrequency((long) perfFrequency).build(context);
    }

    public static int changeOrdinalToCode(Enum x) {
        if (x == null) {
            return -1;
        }
        if (x instanceof ActionType) {
            return x.ordinal() + 1001;
        }
        if (x instanceof NotificationType) {
            return x.ordinal() + 2001;
        }
        if (x instanceof Command) {
            return x.ordinal() + 3001;
        }
        return -1;
    }

    public static NotificationType changeValueToNotificationType(String value) {
        if (notificationTypeMap == null) {
            synchronized (NotificationType.class) {
                if (notificationTypeMap == null) {
                    notificationTypeMap = new HashMap();
                    for (NotificationType type : NotificationType.values()) {
                        notificationTypeMap.put(type.value.toLowerCase(), type);
                    }
                }
            }
        }
        NotificationType type2 = (NotificationType) notificationTypeMap.get(value.toLowerCase());
        return type2 != null ? type2 : NotificationType.Invalid;
    }
}
