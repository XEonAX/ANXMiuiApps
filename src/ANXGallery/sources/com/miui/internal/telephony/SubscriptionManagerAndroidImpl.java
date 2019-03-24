package com.miui.internal.telephony;

import android.os.Build.VERSION;
import miui.telephony.SubscriptionManager;

public class SubscriptionManagerAndroidImpl {
    static final String TAG = "SubscriptionAndroidImpl";

    private SubscriptionManagerAndroidImpl() {
    }

    public static SubscriptionManager getDefault() {
        if (VERSION.SDK_INT >= 26) {
            return new Api26SubscriptionManagerImpl();
        }
        if (VERSION.SDK_INT >= 24) {
            return new Api24SubscriptionManagerImpl();
        }
        if (VERSION.SDK_INT >= 22) {
            return new Api22SubscriptionManagerImpl();
        }
        if (VERSION.SDK_INT >= 21) {
            return new Api21SubscriptionManagerImpl();
        }
        return new BaseSubscriptionManagerImpl();
    }
}
