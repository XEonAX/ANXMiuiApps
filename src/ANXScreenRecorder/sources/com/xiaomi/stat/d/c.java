package com.xiaomi.stat.d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import com.xiaomi.stat.I;

public class c {
    private static boolean a;
    private static int b;
    private static String c;

    public static int a() {
        if (!a) {
            c();
        }
        return b;
    }

    public static String b() {
        if (!a) {
            c();
        }
        return c;
    }

    private static void c() {
        if (!a) {
            a = true;
            Context a = I.a();
            try {
                PackageInfo packageInfo = a.getPackageManager().getPackageInfo(a.getPackageName(), 0);
                b = packageInfo.versionCode;
                c = packageInfo.versionName;
            } catch (NameNotFoundException e) {
            }
        }
    }
}
