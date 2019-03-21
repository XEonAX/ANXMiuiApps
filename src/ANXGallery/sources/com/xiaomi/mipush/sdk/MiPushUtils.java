package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.DeviceInfo;
import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import java.util.HashMap;

class MiPushUtils {
    public static HashMap<String, String> collectDeviceInfo(Context context, String clientInterfaceId) {
        HashMap<String, String> result = new HashMap();
        try {
            result.put("appToken", AppInfoHolder.getInstance(context).getAppToken());
            result.put("regId", MiPushClient.getRegId(context));
            result.put("appId", AppInfoHolder.getInstance(context).getAppID());
            result.put("regResource", AppInfoHolder.getInstance(context).getRegResource());
            if (!MIUIUtils.isGDPREnable()) {
                String imei = DeviceInfo.quicklyGetIMEI(context);
                if (!TextUtils.isEmpty(imei)) {
                    result.put("imeiMd5", XMStringUtils.getMd5Digest(imei));
                }
            }
            result.put("isMIUI", String.valueOf(MIUIUtils.isMIUI()));
            result.put("miuiVersion", MIUIUtils.getMIUIType());
            result.put("devId", DeviceInfo.getDeviceId(context, true));
            result.put("model", Build.MODEL);
            result.put("pkgName", context.getPackageName());
            result.put("sdkVersion", "3_6_11");
            result.put("androidVersion", String.valueOf(VERSION.SDK_INT));
            result.put("os", VERSION.RELEASE + "-" + VERSION.INCREMENTAL);
            result.put("andId", DeviceInfo.getAndroidId(context));
            if (!TextUtils.isEmpty(clientInterfaceId)) {
                result.put("clientInterfaceId", clientInterfaceId);
            }
        } catch (Throwable th) {
        }
        return result;
    }
}
