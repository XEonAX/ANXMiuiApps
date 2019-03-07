package com.xiaomi.stat.d;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import java.lang.reflect.Field;

public class q {
    public static final String a = "tv";
    private static final String b = "SystemUtil";
    private static final String c = "box";
    private static final String d = "tvbox";
    private static final String e = "projector";

    public static boolean a(Context context) {
        try {
            if ((context.getPackageManager().getPackageInfo("com.xiaomi.mitv.services", 0).applicationInfo.flags & 1) != 0) {
                return true;
            }
            return false;
        } catch (NameNotFoundException e) {
            k.d("Is not Mi Tv system!");
            return false;
        }
    }

    public static boolean b(Context context) {
        try {
            if (a(context) && TextUtils.equals(a("ro.mitv.product.overseas"), "true")) {
                return true;
            }
        } catch (Throwable e) {
            k.e(b, "isMiTvIntlBuild", e);
        }
        return false;
    }

    public static String a(String str) {
        String str2 = "";
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", new Class[]{String.class}).invoke(null, new Object[]{str});
        } catch (Throwable e) {
            k.e(b, "reflectGetSystemProperties exception", e);
            return str2;
        }
    }

    public static String a() {
        String str = "";
        try {
            Class cls = Class.forName("mitv.common.ConfigurationManager");
            int parseInt = Integer.parseInt(String.valueOf(cls.getMethod("getProductCategory", new Class[0]).invoke(cls.getMethod("getInstance", new Class[0]).invoke(cls, new Object[0]), new Object[0])));
            Class cls2 = Class.forName("mitv.tv.TvContext");
            if (parseInt == Integer.parseInt(String.valueOf(a(cls2, "PRODUCT_CATEGORY_MITV")))) {
                return a;
            }
            if (parseInt == Integer.parseInt(String.valueOf(a(cls2, "PRODUCT_CATEGORY_MIBOX")))) {
                return c;
            }
            if (parseInt == Integer.parseInt(String.valueOf(a(cls2, "PRODUCT_CATEGORY_MITVBOX")))) {
                return d;
            }
            if (parseInt == Integer.parseInt(String.valueOf(a(cls2, "PRODUCT_CATEGORY_MIPROJECTOR")))) {
                return e;
            }
            return str;
        } catch (Throwable e) {
            k.e(b, "getMiTvProductCategory exception", e);
            return str;
        }
    }

    private static <T> T a(Class<?> cls, String str) {
        T t = null;
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Throwable e) {
            k.e(b, "getStaticVariableValue exception", e);
            return t;
        }
    }
}
