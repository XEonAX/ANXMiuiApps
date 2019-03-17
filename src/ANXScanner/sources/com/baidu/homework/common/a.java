package com.baidu.homework.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;

public class a {
    private static String a;
    private static SharedPreferences b;
    private byte[] c = null;
    private int d = 0;
    private int e = 0;
    private byte[] f = null;

    public a(String str) {
        this.f = str.getBytes();
    }

    public static String a(Context context) {
        if (a == null) {
            try {
                a = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("homework_appid");
            } catch (NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        return a;
    }

    private void a() {
        int i;
        int i2 = 0;
        byte[] bArr = this.f;
        this.d = 0;
        this.e = 0;
        if (this.c == null) {
            this.c = new byte[256];
        }
        for (i = 0; i < 256; i++) {
            this.c[i] = (byte) i;
        }
        i = 0;
        int i3 = 0;
        while (i2 < 256) {
            i = (i + ((bArr[i3] & 255) + this.c[i2])) & 255;
            byte b = this.c[i2];
            this.c[i2] = this.c[i];
            this.c[i] = b;
            i3 = (i3 + 1) % bArr.length;
            i2++;
        }
    }

    public static void a(Context context, long j) {
        f(context);
        b.edit().putLong("KEY_TIME_OFFSET", j).apply();
    }

    public static void a(Context context, String str) {
        f(context);
        b.edit().putString("KEY_INSTALL_ID", str).apply();
    }

    public static void a(Context context, String str, String str2) {
        f(context);
        Editor edit = b.edit();
        edit.putString("KEY_SIGN_A", str);
        edit.putString("KEY_SIGN_B", str2);
        edit.apply();
    }

    private void a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i2 + 0 > bArr.length) {
            throw new RuntimeException("input buffer too short");
        } else if (i2 + 0 > bArr2.length) {
            throw new RuntimeException("output buffer too short");
        } else {
            for (int i4 = 0; i4 < i2; i4++) {
                this.d = (this.d + 1) & 255;
                this.e = (this.c[this.d] + this.e) & 255;
                byte b = this.c[this.d];
                this.c[this.d] = this.c[this.e];
                this.c[this.e] = b;
                bArr2[i4] = (byte) (bArr[i4] ^ this.c[(this.c[this.d] + this.c[this.e]) & 255]);
            }
        }
    }

    public static void b(Context context, String str) {
        f(context);
        b.edit().putString("KEY_UID", str).apply();
    }

    public static String[] b(Context context) {
        f(context);
        String string = b.getString("KEY_SIGN_A", "");
        String string2 = b.getString("KEY_SIGN_B", "");
        return new String[]{string, string2};
    }

    public static String c(Context context) {
        f(context);
        return b.getString("KEY_INSTALL_ID", "");
    }

    public static String d(Context context) {
        f(context);
        return b.getString("KEY_UID", "");
    }

    public static long e(Context context) {
        f(context);
        return b.getLong("KEY_TIME_OFFSET", 0);
    }

    private static void f(Context context) {
        if (b == null) {
            b = context.getSharedPreferences("com.baidu.homework.sdk.PREFERENCE_FILE_KEY", 0);
        }
    }

    public byte[] a(byte[] bArr) {
        a();
        byte[] bArr2 = new byte[bArr.length];
        a(bArr, 0, bArr.length, bArr2, 0);
        return bArr2;
    }

    public byte[] b(byte[] bArr) {
        a();
        byte[] bArr2 = new byte[bArr.length];
        a(bArr, 0, bArr.length, bArr2, 0);
        return bArr2;
    }
}
