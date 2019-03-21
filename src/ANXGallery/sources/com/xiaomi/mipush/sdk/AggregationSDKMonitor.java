package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.xmpush.thrift.ConfigKey;
import java.util.ArrayList;

public class AggregationSDKMonitor {
    public static StackTraceElement[] mRegisterPushCallStack;

    public static void getRegisterPushCallStack() {
        try {
            mRegisterPushCallStack = (StackTraceElement[]) Thread.getAllStackTraces().get(Thread.currentThread());
        } catch (Throwable th) {
        }
    }

    public static void uploadCallStack(final Context context) {
        ScheduledJobManager.getInstance(context).addOneShootJob(new Runnable() {
            public void run() {
                if (AggregationSDKMonitor.canUploadCallStack(context)) {
                    String callStackStr = AggregationSDKMonitor.buildCallStackString(OnlineConfig.getInstance(context).getIntValue(ConfigKey.AggregationSdkMonitorDepth.getValue(), 4));
                    if (!TextUtils.isEmpty(callStackStr)) {
                        MiTinyDataClient.upload(context, "monitor_upload", "call_stack", 1, callStackStr);
                        AggregationSDKMonitor.updateCallStackUploadTimeStamp(context);
                    }
                }
            }
        }, 20);
    }

    private static boolean canUploadCallStack(Context context) {
        OnlineConfig onlineConfig = OnlineConfig.getInstance(context);
        if (!onlineConfig.getBooleanValue(ConfigKey.AggregationSdkMonitorSwitch.getValue(), false)) {
            return false;
        }
        SharedPreferences sp = context.getSharedPreferences("mipush_extra", 0);
        if (Math.abs(System.currentTimeMillis() - sp.getLong("last_upload_call_stack_timestamp", 0)) >= ((long) Math.max(60, onlineConfig.getIntValue(ConfigKey.AggregationSdkMonitorFrequency.getValue(), 86400)))) {
            return true;
        }
        return false;
    }

    private static void updateCallStackUploadTimeStamp(Context context) {
        Editor editor = context.getSharedPreferences("mipush_extra", 0).edit();
        editor.putLong("last_upload_call_stack_timestamp", System.currentTimeMillis());
        editor.commit();
    }

    private static String buildCallStackString(int depth) {
        if (mRegisterPushCallStack == null || mRegisterPushCallStack.length <= 4) {
            return "";
        }
        ArrayList<String> callStackList = new ArrayList();
        int i = 4;
        while (i < mRegisterPushCallStack.length && i < depth + 4) {
            try {
                callStackList.add(mRegisterPushCallStack[i].toString());
                i++;
            } catch (Exception e) {
                return "";
            }
        }
        return callStackList.toString();
    }
}
