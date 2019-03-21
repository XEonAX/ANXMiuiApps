package com.xiaomi.metoknlp.a;

import android.content.Context;
import android.telephony.TelephonyManager;

/* compiled from: TelephonyUtils */
public class d {
    private static TelephonyManager V;
    private static Context W;

    public static void f(Context context) {
        W = context;
        V = (TelephonyManager) context.getSystemService("phone");
    }

    public static String getNetworkOperator() {
        if (V != null) {
            return V.getNetworkOperator();
        }
        return null;
    }

    public static String getImei() {
        String str = null;
        try {
            if (!(W == null || W.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", W.getPackageName()) != 0 || V == null)) {
                str = V.getDeviceId();
            }
        } catch (Exception e) {
        }
        return str != null ? str : "UNKNOWN";
    }
}
