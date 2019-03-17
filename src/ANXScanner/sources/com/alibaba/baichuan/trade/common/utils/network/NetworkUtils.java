package com.alibaba.baichuan.trade.common.utils.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class NetworkUtils {
    private static MobileNetworkType a(int i) {
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return MobileNetworkType.MOBILE_NETWORK_TYPE_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return MobileNetworkType.MOBILE_NETWORK_TYPE_3G;
            case 13:
                return MobileNetworkType.MOBILE_NETWORK_TYPE_4G;
            default:
                return MobileNetworkType.MOBILE_NETWORK_TYPE_UNKNOWN;
        }
    }

    public static ConnectType getConnectType(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return ConnectType.CONNECT_TYPE_DISCONNECT;
        }
        switch (activeNetworkInfo.getType()) {
            case 0:
                return ConnectType.CONNECT_TYPE_MOBILE;
            case 1:
                return ConnectType.CONNECT_TYPE_WIFI;
            default:
                return ConnectType.CONNECT_TYPE_OTHER;
        }
    }

    public static MobileNetworkType getMobileNetworkType(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return (activeNetworkInfo != null && activeNetworkInfo.getType() == 0 && activeNetworkInfo.isConnected()) ? a(activeNetworkInfo.getSubtype()) : MobileNetworkType.MOBILE_NETWORK_TYPE_UNKNOWN;
    }

    public static boolean isNetworkAvaiable(Context context) {
        if (context == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected();
    }
}
