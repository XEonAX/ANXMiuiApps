package com.ali.auth.third.core;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import com.ali.auth.third.core.callback.InitResultCallback;
import com.ali.auth.third.core.config.AuthOption;
import com.ali.auth.third.core.config.ConfigManager;
import com.ali.auth.third.core.config.Environment;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.model.Constants;
import com.ali.auth.third.core.task.a;
import java.util.Collections;
import java.util.Map;

public class MemberSDK {
    private static final Map<String, String> a = Collections.singletonMap(Constants.ISV_SCOPE_FLAG, "true");
    private static Environment b;
    public static String ttid;

    private static a a(Context context, InitResultCallback initResultCallback) {
        KernelContext.context = context.getApplicationContext();
        if (b == null) {
            b = Environment.ONLINE;
        }
        Object aVar = new a(initResultCallback, Integer.valueOf(b.ordinal()));
        KernelContext.executorService.postHandlerTask(aVar);
        return aVar;
    }

    public static <T> T getService(Class<T> cls) {
        return cls == null ? null : KernelContext.serviceRegistry.a(cls, a);
    }

    public static void init(Context context, InitResultCallback initResultCallback) {
        a(context, initResultCallback);
    }

    public static void setAuthOption(AuthOption authOption) {
        KernelContext.authOption = authOption;
    }

    public static void setEnvironment(Environment environment) {
        b = environment;
    }

    public static void setPackageName(String str) {
        KernelContext.packageName = str;
    }

    public static void setResources(Resources resources) {
        KernelContext.resources = resources;
    }

    public static void setTtid(String str) {
        ttid = str;
    }

    public static void setUUID(String str) {
        KernelContext.UUID = str;
    }

    @Deprecated
    public static void turnOffDebug() {
    }

    public static void turnOnDebug() {
        Log.w("AuthSDK", "************************************\nDebug is enabled, make sure to turn it off in the production environment\n************************************");
        ConfigManager.DEBUG = true;
    }
}
