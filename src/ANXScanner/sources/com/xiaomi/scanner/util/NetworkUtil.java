package com.xiaomi.scanner.util;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;

public class NetworkUtil {
    private static final Tag TAG = new Tag("NetworkUtil");

    public enum NetState {
        WIFI,
        MN2G,
        MN3G,
        MN4G,
        NONE
    }

    public static int getActiveNetworkType() {
        try {
            NetworkInfo info = ((ConnectivityManager) ScannerApp.getAndroidContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (info != null) {
                return info.getType();
            }
        } catch (SecurityException e) {
            Log.e(TAG, e.toString());
        }
        return -1;
    }

    public static String getActiveNetworkTypeName() {
        try {
            NetworkInfo info = ((ConnectivityManager) ScannerApp.getAndroidContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (info != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(info.getTypeName()).append("-").append(info.getSubtypeName());
                return sb.toString();
            }
        } catch (SecurityException e) {
            Log.e(TAG, e.toString());
        }
        return "<unknown>";
    }

    public static boolean isNetworkConnected() {
        return getActiveNetworkType() >= 0;
    }

    public static boolean isWifiConnected() {
        return getNetState() == NetState.WIFI;
    }

    public static NetState getNetState() {
        try {
            ConnectivityManager connManager = (ConnectivityManager) ScannerApp.getAndroidContext().getSystemService("connectivity");
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
            return getNetworkClass(((TelephonyManager) ScannerApp.getAndroidContext().getSystemService("phone")).getNetworkType());
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
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
                return NetState.MN2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return NetState.MN3G;
            case 13:
                return NetState.MN4G;
            default:
                return NetState.NONE;
        }
    }
}
