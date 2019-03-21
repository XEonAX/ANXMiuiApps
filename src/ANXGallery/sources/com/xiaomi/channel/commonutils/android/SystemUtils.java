package com.xiaomi.channel.commonutils.android;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.reflect.JavaCalls;

public class SystemUtils {
    private static Context sContext;

    public static void initialize(Context ctx) {
        sContext = ctx.getApplicationContext();
    }

    public static Context getContext() {
        return sContext;
    }

    public static int getMIUIType() {
        try {
            Class clazz = Class.forName("miui.os.Build");
            if (clazz.getField("IS_STABLE_VERSION").getBoolean(null)) {
                return 3;
            }
            if (clazz.getField("IS_DEVELOPMENT_VERSION").getBoolean(null)) {
                return 2;
            }
            return 1;
        } catch (Exception e) {
            return 0;
        }
    }

    public static boolean isDebuggable(Context context) {
        try {
            if ((context.getApplicationInfo().flags & 2) != 0) {
                return true;
            }
            return false;
        } catch (Throwable e) {
            MyLog.e(e);
            return false;
        }
    }

    public static boolean isBootCompleted() {
        return TextUtils.equals((String) JavaCalls.callStaticMethod("android.os.SystemProperties", "get", "sys.boot_completed"), "1");
    }

    public static boolean isGlobalVersion() {
        boolean z = false;
        try {
            return Class.forName("miui.os.Build").getField("IS_GLOBAL_BUILD").getBoolean(Boolean.valueOf(false));
        } catch (ClassNotFoundException e) {
            MyLog.e("miui.os.Build ClassNotFound");
            return z;
        } catch (Throwable e2) {
            MyLog.e(e2);
            return z;
        }
    }
}
