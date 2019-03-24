package com.miui.internal.variable.v16;

import android.net.ConnectivityManager;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Method;

public class Android_Net_ConnectivityManager_class extends com.miui.internal.variable.Android_Net_ConnectivityManager_class {
    private static final Method lD = Method.of(ConnectivityManager.class, "isNetworkSupported", "(I)Z");

    public boolean isNetworkSupported(ConnectivityManager connectivityManager, int i) {
        try {
            return lD.invokeBoolean(null, connectivityManager, Integer.valueOf(i));
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.os.Process.getTotalMemory", e);
            return false;
        }
    }
}
