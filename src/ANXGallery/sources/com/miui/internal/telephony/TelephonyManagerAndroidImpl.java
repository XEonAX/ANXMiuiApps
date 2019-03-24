package com.miui.internal.telephony;

import android.os.Build.VERSION;
import miui.telephony.TelephonyManager;

public class TelephonyManagerAndroidImpl {
    static final String TAG = "TelephonyAndroidImpl";

    private TelephonyManagerAndroidImpl() {
    }

    public static TelephonyManager getDefault() {
        if (VERSION.SDK_INT >= 26) {
            return new Api26TelephonyManagerImpl();
        }
        if (VERSION.SDK_INT >= 24) {
            return new Api24TelephonyManagerImpl();
        }
        if (VERSION.SDK_INT >= 23) {
            return new Api23TelephonyManagerImpl();
        }
        if (VERSION.SDK_INT >= 22) {
            return new Api22TelephonyManagerImpl();
        }
        if (VERSION.SDK_INT >= 21) {
            return new Api21TelephonyManagerImpl();
        }
        return new BaseTelephonyManagerAndroidImpl();
    }
}
