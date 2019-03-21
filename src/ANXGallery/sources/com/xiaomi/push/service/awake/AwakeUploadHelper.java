package com.xiaomi.push.service.awake;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.push.service.awake.module.AwakeManager;
import com.xiaomi.push.service.awake.module.IProcessData;
import java.util.HashMap;

public class AwakeUploadHelper {
    public static void uploadData(final Context context, final String awakeInfo, final int eventType, final String description) {
        ScheduledJobManager.getInstance(context).addOneShootJob(new Runnable() {
            public void run() {
                AwakeUploadHelper.doUploadData(context, awakeInfo, eventType, description);
            }
        });
    }

    private static void doUploadData(Context context, String awakeInfo, int eventType, String description) {
        if (context != null && !TextUtils.isEmpty(awakeInfo)) {
            try {
                HashMap<String, String> extra = new HashMap();
                extra.put("awake_info", awakeInfo);
                extra.put("event_type", String.valueOf(eventType));
                extra.put("description", description);
                switch (AwakeManager.getInstance(context).getOnLineCmd()) {
                    case 1:
                        sendResponseDirectly(context, extra);
                        break;
                    case 2:
                        sendResultByTinyData(context, extra);
                        break;
                    case 3:
                        sendResponseDirectly(context, extra);
                        sendResultByTinyData(context, extra);
                        break;
                }
                doLast(context, extra);
            } catch (Throwable e) {
                MyLog.e(e);
            }
        }
    }

    private static void sendResponseDirectly(Context context, HashMap<String, String> extra) {
        IProcessData sendData = AwakeManager.getInstance(context).getSendDataIml();
        if (sendData != null) {
            sendData.sendDirectly(context, extra);
        }
    }

    private static void doLast(Context context, HashMap<String, String> extra) {
        IProcessData sendData = AwakeManager.getInstance(context).getSendDataIml();
        if (sendData != null) {
            sendData.shouldDoLast(context, extra);
        }
    }

    private static void sendResultByTinyData(Context context, HashMap<String, String> extra) {
        IProcessData sendData = AwakeManager.getInstance(context).getSendDataIml();
        if (sendData != null) {
            sendData.sendByTinyData(context, extra);
        }
    }
}
