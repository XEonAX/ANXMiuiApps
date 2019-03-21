package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.reflect.JavaCalls;

public class AssemblePushUtils {
    private static int isGoogleServiceSatisfied = -1;

    public static PhoneBrand getPhoneBrand(Context context) {
        try {
            if (context.getPackageManager().getServiceInfo(new ComponentName("com.huawei.hwid", "com.huawei.hms.core.service.HMSCoreService"), 128) == null || !isAvailableEMUI()) {
                return PhoneBrand.OTHER;
            }
            return PhoneBrand.HUAWEI;
        } catch (Exception e) {
            return PhoneBrand.OTHER;
        }
    }

    private static boolean isAvailableEMUI() {
        try {
            String value = (String) JavaCalls.callStaticMethod("android.os.SystemProperties", "get", "ro.build.hw_emui_api_level", "");
            if (!TextUtils.isEmpty(value) && Integer.parseInt(value) >= 9) {
                return true;
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
        return false;
    }

    public static boolean isGoogleServiceSatisfied(Context context) {
        Object resultObject = JavaCalls.callMethod(JavaCalls.callStaticMethod("com.google.android.gms.common.GoogleApiAvailability", "getInstance", new Object[0]), "isGooglePlayServicesAvailable", context);
        Object successCode = JavaCalls.getStaticField("com.google.android.gms.common.ConnectionResult", "SUCCESS");
        if (successCode == null || !(successCode instanceof Integer)) {
            MyLog.v("google service is not avaliable");
            isGoogleServiceSatisfied = 0;
            return false;
        }
        boolean z;
        int success = ((Integer) Integer.class.cast(successCode)).intValue();
        if (resultObject != null) {
            if (resultObject instanceof Integer) {
                int i;
                if (((Integer) Integer.class.cast(resultObject)).intValue() == success) {
                    i = 1;
                } else {
                    i = 0;
                }
                isGoogleServiceSatisfied = i;
            } else {
                isGoogleServiceSatisfied = 0;
                MyLog.v("google service is not avaliable");
            }
        }
        StringBuilder append = new StringBuilder().append("is google service can be used");
        if (isGoogleServiceSatisfied > 0) {
            z = true;
        } else {
            z = false;
        }
        MyLog.v(append.append(z).toString());
        if (isGoogleServiceSatisfied > 0) {
            return true;
        }
        return false;
    }

    public static boolean isColorOSPushSupport(Context context) {
        boolean result = false;
        Object resultO = JavaCalls.callStaticMethod("com.xiaomi.assemble.control.COSPushManager", "isSupportPush", context);
        if (resultO != null && (resultO instanceof Boolean)) {
            result = ((Boolean) Boolean.class.cast(resultO)).booleanValue();
        }
        MyLog.v("color os push  is avaliable ? :" + result);
        return result;
    }
}
