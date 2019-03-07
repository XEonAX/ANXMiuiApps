package com.xiaomi.stat.c;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.xiaomi.stat.C0001b;
import com.xiaomi.stat.C0003d;
import com.xiaomi.stat.I;
import com.xiaomi.stat.d.i;
import java.io.IOException;
import java.util.Map;

public class c {
    public static final String a = "com.xiaomi.xmsf";
    public static final String b = "com.xiaomi.xmsf.push.service.HttpService";
    private static final String c = "UploadMode";

    public static String a(String str, Map<String, String> map, boolean z) throws IOException {
        if (C0001b.u() && a()) {
            return b(str, map, z);
        }
        return i.b(str, map, z);
    }

    public static String b(String str, Map<String, String> map, boolean z) {
        if (z) {
            map.put(C0003d.f, i.a((Map) map));
        }
        Intent intent = new Intent();
        intent.setClassName(a, b);
        Context a = I.a();
        String[] strArr = new String[1];
        if (a == null) {
            return strArr[0];
        }
        boolean bindService = a.bindService(intent, a(str, (Map) map, strArr), 1);
        synchronized (i.class) {
            try {
                i.class.wait(15000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        if (!bindService) {
            strArr[0] = null;
        }
        return strArr[0];
    }

    private static ServiceConnection a(String str, Map<String, String> map, String[] strArr) {
        return new d(strArr, str, map);
    }

    public static boolean a() {
        int i = 1;
        Context a = I.a();
        if (a == null || (a.getApplicationInfo().flags & 1) == 0) {
            return false;
        }
        PackageManager packageManager = a.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(a.getPackageName(), 64);
            PackageInfo packageInfo2 = packageManager.getPackageInfo("android", 64);
            if (packageInfo == null) {
                return false;
            }
            int i2;
            if (packageInfo.signatures != null) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (((packageInfo.signatures.length > 0 ? 1 : 0) & i2) == 0 || packageInfo2 == null) {
                return false;
            }
            int i3 = packageInfo2.signatures != null ? 1 : 0;
            if (packageInfo2.signatures.length <= 0) {
                i = 0;
            }
            if ((i & i3) != 0) {
                return packageInfo2.signatures[0].equals(packageInfo.signatures[0]);
            }
            return false;
        } catch (NameNotFoundException e) {
            return false;
        }
    }
}
