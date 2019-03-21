package com.meicam.sdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class NvsNetworkUtil {
    public static final int TYPE_MOBILE = 0;
    public static final int TYPE_NONE = -1;
    public static final int TYPE_WIFI = 1;

    public static final int getNetWorkStates(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return -1;
        }
        switch (activeNetworkInfo.getType()) {
            case 0:
                return 0;
            case 1:
                return 1;
            default:
                return -1;
        }
    }
}
