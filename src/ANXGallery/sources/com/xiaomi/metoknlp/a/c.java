package com.xiaomi.metoknlp.a;

/* compiled from: SystemPropertiesReflect */
public class c {
    private static Class K() {
        return Class.forName("android.os.SystemProperties");
    }

    public static String get(String str, String str2) {
        try {
            return (String) K().getMethod("get", new Class[]{String.class, String.class}).invoke(null, new Object[]{str, str2});
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
