package com.taobao.applink.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.util.Random;

@TargetApi(9)
public class d {
    private static String a = "";
    private static String b = "";
    private static String c = "";

    private static String a() {
        StringBuffer stringBuffer = new StringBuffer();
        long currentTimeMillis = System.currentTimeMillis();
        String l = Long.toString(currentTimeMillis);
        stringBuffer.append(l.substring(l.length() - 5));
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(Build.MODEL.replaceAll(" ", ""));
        while (stringBuffer2.length() < 6) {
            stringBuffer2.append('0');
        }
        stringBuffer.append(stringBuffer2.substring(0, 6));
        Random random = new Random(currentTimeMillis);
        currentTimeMillis = 0;
        while (currentTimeMillis < 4096) {
            currentTimeMillis = random.nextLong();
        }
        stringBuffer.append(Long.toHexString(currentTimeMillis).substring(0, 4));
        return stringBuffer.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0080  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String a(Context context) {
        if (!TextUtils.isEmpty(a) && !"unknow".equals(a)) {
            return a;
        }
        String str;
        SharedPreferences sharedPreferences = context.getSharedPreferences("imei", 0);
        String string = sharedPreferences.getString("imei", null);
        if (string == null || string.length() == 0) {
            try {
                string = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
                if (string == null || string.length() == 0) {
                    string = a();
                }
                string = string.replaceAll(" ", "").trim();
                while (string.length() < 15) {
                    string = "0" + string;
                }
                Editor edit = sharedPreferences.edit();
                edit.putString("imei", string);
                if (VERSION.SDK_INT >= 9) {
                    edit.apply();
                } else {
                    edit.commit();
                }
                str = string;
            } catch (Throwable th) {
                Log.d(TBAppLinkUtil.TAG, th.toString());
            }
            if (str == null) {
                str = "unknow";
            }
            a = str.trim();
            return a;
        }
        str = string;
        if (str == null) {
        }
        a = str.trim();
        return a;
    }
}
