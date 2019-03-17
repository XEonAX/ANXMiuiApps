package com.ali.auth.third.login.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.CommonUtils;
import java.util.concurrent.atomic.AtomicBoolean;

public class LoginStatus {
    public static final String TAG = "login.LoginStatus";
    private static AtomicBoolean a = new AtomicBoolean(false);
    private static Context b;
    private static BroadcastReceiver c;

    private static void b() {
        if (b != null && c != null) {
            Intent intent = new Intent("NOTIFY_LOGIN_STATUS_CHANGE");
            intent.putExtra("currentProcess", CommonUtils.getCurrentProcessName());
            intent.putExtra("isLogining", a.get());
            intent.setPackage(b.getPackageName());
            b.sendBroadcast(intent);
        }
    }

    public static synchronized boolean compareAndSetLogining(boolean z, boolean z2) {
        boolean compareAndSet;
        synchronized (LoginStatus.class) {
            compareAndSet = a.compareAndSet(z, z2);
            if (!(compareAndSet && z && z2)) {
                b();
            }
        }
        return compareAndSet;
    }

    public static void init(Context context) {
        b = context;
        c = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                if (intent != null) {
                    try {
                        if (!TextUtils.equals(CommonUtils.getCurrentProcessName(), intent.getStringExtra("currentProcess"))) {
                            LoginStatus.a.set(intent.getBooleanExtra("isLogining", false));
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        };
        b.registerReceiver(c, new IntentFilter("NOTIFY_LOGIN_STATUS_CHANGE"));
    }

    public static boolean isLogining() {
        return a.get();
    }

    public static void resetLoginFlag() {
        SDKLogger.w(TAG, "reset login status");
        if (a.compareAndSet(true, false)) {
            b();
        }
        KernelContext.sOneTimeAuthOption = null;
    }
}
