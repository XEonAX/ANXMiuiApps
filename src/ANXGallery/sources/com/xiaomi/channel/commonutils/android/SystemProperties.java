package com.xiaomi.channel.commonutils.android;

public class SystemProperties {
    public static String get(String key, String defValue) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", new Class[]{String.class, String.class}).invoke(null, new Object[]{key, defValue});
        } catch (Exception e) {
            e.printStackTrace();
            return defValue;
        }
    }
}
