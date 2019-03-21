package com.nexstreaming.kminternal.kinemaster.config;

import android.os.Build;
import android.os.Environment;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor;
import com.nexstreaming.nexeditorsdk.BuildConfig;
import java.io.File;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class EditorGlobal {
    public static final String[] a = new String[]{".jpg", ".jpeg", ".png", ".webp"};
    public static final String[] b = new String[]{".mp4", ".3gp", ".3gpp", ".mov", ".k3g", ".acc", ".avi", ".wmv"};
    public static final String[] c = new String[]{".aac", ".mp3", ".3gp", ".3gpp"};
    public static final String d = null;
    public static final boolean e;
    public static final VersionType f = VersionType.RC;
    public static final DataUsage g = (m == Edition.PlayStore ? DataUsage.WIFI_AND_MOBILE : DataUsage.ASK_WIFI_MOBILE_NEVER);
    public static final boolean h;
    public static final String i = null;
    public static final boolean j = (m == Edition.PlayStore);
    public static final boolean k;
    public static final Executor l = Executors.newCachedThreadPool();
    private static final Edition m = BuildConfig.KM_EDITION;
    private static final Date n = a(0, 0, 0);
    private static String o = "KineMaster";

    public enum DataUsage {
        WIFI_AND_MOBILE,
        WIFI_ONLY,
        NEVER,
        ASK_WIFI_OR_MOBILE,
        ASK_WIFI_MOBILE_NEVER
    }

    public enum Edition {
        DeviceLock,
        TimeLock,
        PlayStore
    }

    public enum VersionType {
        Alpha,
        Beta,
        Dev,
        RC,
        Release
    }

    static {
        boolean z;
        boolean z2 = true;
        if (m == Edition.DeviceLock) {
            z = false;
        } else {
            z = true;
        }
        e = z;
        if (m == Edition.DeviceLock) {
            z = true;
        } else {
            z = false;
        }
        h = z;
        if (m != Edition.PlayStore) {
            z2 = false;
        }
        k = z2;
    }

    public static NexEditor a() {
        if (a.a() != null) {
            return a.a().c();
        }
        return null;
    }

    public static void a(String str) {
        o = str;
    }

    public static String b() {
        return "keepfileFG2HJ6D4";
    }

    public static final boolean a(int i) {
        if (i > 0) {
            return true;
        }
        return false;
    }

    public static int c() {
        int i = 0;
        int i2;
        if (m == Edition.DeviceLock) {
            i2 = 0;
            while (i2 < 4) {
                i2++;
                i = (i << 8) | 32;
            }
        } else if (m == Edition.TimeLock || m == Edition.PlayStore) {
            i = 33878;
            i2 = 0;
            while (i2 < 1) {
                i2++;
                i = (i << 16) | 10309;
            }
        }
        return (i ^ 323616768) ^ 38286;
    }

    public static String d() {
        return Build.MODEL;
    }

    public static File e() {
        return Environment.getExternalStorageDirectory();
    }

    public static File f() {
        return new File(e().getAbsolutePath() + File.separator + o);
    }

    public static File g() {
        return new File(e().getAbsolutePath() + File.separator + o + File.separator + "Plugins");
    }

    public static File h() {
        return new File(e().getAbsolutePath() + File.separator + o + File.separator + "AssetPlugins");
    }

    public static File i() {
        return new File(e().getAbsolutePath() + File.separator + o + File.separator + "Projects" + File.separator + "Overlays");
    }

    private static Date a(int i, int i2, int i3) {
        return a(i, i2, i3, 0, 0, 0);
    }

    private static Date a(int i, int i2, int i3, int i4, int i5, int i6) {
        Calendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        gregorianCalendar.set(i, i2 - 1, i3, i4, i5, i6);
        return gregorianCalendar.getTime();
    }

    public static String b(String str) {
        return c("com.nexstreaming.kinemaster.builtin.watermark." + str);
    }

    private static String c(String str) {
        int i = 0;
        if (str == null) {
            return null;
        }
        int i2;
        String str2 = "Ax/VXn_zsAiwFi[CITPC;y2c}*0B'S0-7&QznQlMa6U9gmSoighZeC&@$-hAaXiN";
        StringBuilder stringBuilder = new StringBuilder();
        int length = str.length();
        Random random = new Random();
        char[] cArr = new char[8];
        for (i2 = 0; i2 < cArr.length; i2++) {
            cArr[i2] = (char) (((random.nextInt() & 268435455) % 94) + 32);
        }
        i2 = cArr[0] ^ 63;
        int i3 = cArr[1] ^ BaiduSceneResult.ACCOUNT_BOOK;
        stringBuilder.append(cArr);
        while (i < length) {
            char charAt = str2.charAt((i2 + i) % 64);
            stringBuilder.append((char) (((((charAt + (str.charAt(i) - 32)) - cArr[(i3 + i) % 8]) + 188) % 94) + 32));
            i++;
        }
        return stringBuilder.toString();
    }
}
