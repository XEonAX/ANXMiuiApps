package com.alibaba.alibclinkpartner.j;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class g {
    public static boolean a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null ? activeNetworkInfo.isAvailable() : false;
    }
}
