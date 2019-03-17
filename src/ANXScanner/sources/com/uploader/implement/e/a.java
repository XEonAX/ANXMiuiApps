package com.uploader.implement.e;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* compiled from: NetworkUtils */
public class a {
    public static final boolean a(Context context) {
        try {
            NetworkInfo info = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (info == null || !info.isConnected()) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public static final NetworkInfo b(Context context) {
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable th) {
            return null;
        }
    }
}
