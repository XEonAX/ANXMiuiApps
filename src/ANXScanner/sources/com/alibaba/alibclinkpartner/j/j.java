package com.alibaba.alibclinkpartner.j;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.d.a.a;
import com.alibaba.alibclinkpartner.d.a.c;
import java.lang.reflect.Field;
import java.util.Map;

public class j {
    private static String a;
    private static String b;

    private static Activity a() {
        try {
            Class cls = Class.forName("android.app.ActivityThread");
            Object invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            for (Object invoke2 : ((Map) declaredField.get(invoke2)).values()) {
                Class cls2 = invoke2.getClass();
                Field declaredField2 = cls2.getDeclaredField("paused");
                declaredField2.setAccessible(true);
                if (!declaredField2.getBoolean(invoke2)) {
                    declaredField = cls2.getDeclaredField("activity");
                    declaredField.setAccessible(true);
                    return (Activity) declaredField.get(invoke2);
                }
            }
            return null;
        } catch (Exception e) {
            throw e;
        }
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(a)) {
            a = context.getPackageName();
        }
        return a;
    }

    public static boolean a(Context context, a aVar) {
        if (aVar.a == null) {
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent();
        intent.setData(Uri.parse(aVar.a));
        if (aVar.b != null && aVar.b.size() > 0) {
            for (String action : aVar.b) {
                intent.setAction(action);
            }
        }
        if (aVar.c != null && aVar.c.size() > 0) {
            for (String action2 : aVar.c) {
                intent.addCategory(action2);
            }
        }
        try {
            if (aVar.d != null && packageManager.getPackageInfo(aVar.d, 0) == null) {
                return false;
            }
            if (packageManager.queryIntentActivities(intent, 65536).size() > 0) {
                return true;
            }
            return false;
        } catch (Exception e) {
            e.a("ALPSystemUtil", "isSupportApp", "queryIntentActivities error e=" + e.toString());
        }
    }

    public static boolean a(Context context, String str) {
        c a = b.b.a();
        return (a == null || a.d == null || a.d.get(str) == null) ? false : a(context, (a) a.d.get(str));
    }

    public static String b(Context context) {
        if (TextUtils.isEmpty(b)) {
            try {
                b = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(context.getPackageManager()).toString();
            } catch (Exception e) {
                Log.d("AlibcLinkPartner", e.toString());
            }
        }
        return b;
    }

    public static String c(Context context) {
        String str = null;
        if (context == null) {
            return str;
        }
        if (context instanceof Activity) {
            return ((Activity) context).getComponentName().getClassName();
        }
        try {
            return a().getComponentName().getClassName();
        } catch (Throwable th) {
            e.a("ALPSystemUtil", "getCurrentVC", "getCurrentVC error");
            return str;
        }
    }
}
