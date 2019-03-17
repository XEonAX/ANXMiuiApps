package com.hanvon.ocrtranslate;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Typeface;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.kingsoft.iciba.powerwordocrjar.g;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class a {
    private static Typeface a = null;

    public static int a(Context context, float f) {
        return (int) ((context.getResources().getDisplayMetrics().density * f) + 0.5f);
    }

    public static Typeface a(Context context) {
        if (a == null) {
            a = Typeface.createFromAsset(context.getAssets(), "fonts/unicodeui.ttf");
        }
        return a;
    }

    public static String a(String str, String str2, String str3) {
        return g.a(str + "#ICIBA!(*&R$@#LOVE#" + str2 + str3).substring(5, 21);
    }

    public static boolean a(Context context, String str) {
        if (str == null || context == null) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (NameNotFoundException e) {
            return false;
        } catch (Throwable e2) {
            Log.e("Utils", "Get app installed state failed", e2);
            return false;
        }
    }

    public static boolean a(Context context, String str, String str2) {
        try {
            for (String str3 : context.getAssets().list(str)) {
                File file = new File(str2, str3);
                if (!file.exists()) {
                    file.createNewFile();
                    InputStream open = context.getAssets().open(str + "/" + str3);
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    byte[] bArr = new byte[5120];
                    while (true) {
                        int read = open.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    open.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public static boolean b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return (!activeNetworkInfo.getTypeName().toUpperCase().equals("MOBILE") || activeNetworkInfo.getExtraInfo() == null) ? true : true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
