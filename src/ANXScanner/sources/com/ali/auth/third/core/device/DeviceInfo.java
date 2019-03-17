package com.ali.auth.third.core.device;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.ReflectionUtils;

public class DeviceInfo {
    public static String deviceId;

    private static void a(final Context context) {
        String str = null;
        Class loadClassQuietly = ReflectionUtils.loadClassQuietly("com.ta.utdid2.device.UTDevice");
        if (loadClassQuietly != null) {
            try {
                String str2;
                Object invoke = loadClassQuietly.getMethod("getUtdid", new Class[]{Context.class}).invoke(null, new Object[]{context});
                if (invoke == null) {
                    SDKLogger.e("DeviceInfo", "get utdid null");
                    str2 = null;
                } else {
                    str2 = (String) invoke;
                }
                str = str2;
            } catch (Exception e) {
                SDKLogger.e("DeviceInfo", "get utdid error");
            }
        }
        if (str == null) {
            KernelContext.executorService.postTask(new Runnable() {
                public void run() {
                    try {
                        DeviceInfo.deviceId = context.getSharedPreferences("auth_sdk_device", 0).getString("deviceId", "");
                        SDKLogger.e("DeviceInfo", "DeviceInfo.deviceId = " + DeviceInfo.deviceId);
                    } catch (Throwable th) {
                    }
                }
            });
            return;
        }
        deviceId = str;
        SDKLogger.e("DeviceInfo", "utdid = " + str);
        KernelContext.executorService.postTask(new Runnable() {
            public void run() {
                try {
                    Editor edit = context.getSharedPreferences("auth_sdk_device", 0).edit();
                    edit.putString("deviceId", DeviceInfo.deviceId);
                    edit.apply();
                } catch (Throwable th) {
                }
            }
        });
    }

    public static void init(Context context) {
        if (TextUtils.isEmpty(deviceId)) {
            a(context);
        }
    }
}
