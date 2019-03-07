package com.xiaomi.analytics.internal.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.support.v4.view.MotionEventCompat;
import android.telephony.TelephonyManager;

public class NetworkUtils {
    private static final int NETWORK_TYPE_GSM = 16;
    private static final int NETWORK_TYPE_IWLAN = 18;
    private static final int NETWORK_TYPE_LTE_CA = 19;
    private static final int NETWORK_TYPE_TD_SCDMA = 17;
    private static String TAG = "NetworkUtils";

    public static int getNetworkType(Context context) {
        switch (getNetState(context)) {
            case MN2G:
                return 1;
            case MN3G:
                return 2;
            case MN4G:
                return 3;
            case WIFI:
                return 10;
            default:
                return 0;
        }
    }

    public static NetState getNetState(Context context) {
        try {
            ConnectivityManager connManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo networkInfo = connManager.getActiveNetworkInfo();
            if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
                return NetState.NONE;
            }
            if (VERSION.SDK_INT >= 16) {
                if (!connManager.isActiveNetworkMetered()) {
                    return NetState.WIFI;
                }
            } else if (networkInfo.getType() == 1) {
                return NetState.WIFI;
            }
            return getNetworkClass(((TelephonyManager) context.getSystemService("phone")).getNetworkType());
        } catch (Exception e) {
            ALog.e(TAG, "getNetState", e);
            return NetState.NONE;
        }
    }

    private static NetState getNetworkClass(int networkType) {
        switch (networkType) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return NetState.MN2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case MotionEventCompat.AXIS_RX /*12*/:
            case MotionEventCompat.AXIS_RZ /*14*/:
            case 15:
            case 17:
                return NetState.MN3G;
            case MotionEventCompat.AXIS_RY /*13*/:
            case 18:
            case 19:
                return NetState.MN4G;
            default:
                return NetState.NONE;
        }
    }
}
