package com.xiaomi.micloudsdk.remote;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.miui.app.ServiceInstalled;

public abstract class XiaomiAccountRemoteMethodInvoker<R> extends RemoteMethodInvoker<R> {
    private static final ServiceInstalled ACCOUNT_NEW_SERVICE_INSTALLED = new ServiceInstalled(new Intent("com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE").setPackage("com.xiaomi.account"));

    public XiaomiAccountRemoteMethodInvoker(Context context) {
        super(context);
    }

    protected boolean bindService(Context context, ServiceConnection conn) {
        if (((Boolean) ACCOUNT_NEW_SERVICE_INSTALLED.get(context)).booleanValue()) {
            return bindAccountService(context, "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE", conn);
        }
        return bindAccountService(context, "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE", conn);
    }

    private static boolean bindAccountService(Context context, String action, ServiceConnection conn) {
        Intent intent = new Intent(action);
        intent.setPackage("com.xiaomi.account");
        return context.bindService(intent, conn, 1);
    }
}
