package com.alipay.sdk.sys;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.app.statistic.a;
import com.alipay.sdk.data.c;
import com.ta.utdid2.device.UTDevice;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;

public final class b {
    private static b b;
    public Context a;

    private b() {
    }

    public static b a() {
        if (b == null) {
            b = new b();
        }
        return b;
    }

    private Context d() {
        return this.a;
    }

    public final void a(Context context) {
        this.a = context.getApplicationContext();
    }

    private static c e() {
        return c.a();
    }

    public static boolean b() {
        String[] strArr = new String[]{"/system/xbin/", "/system/bin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};
        int i = 0;
        while (i < 5) {
            try {
                if (new File(strArr[i] + "su").exists()) {
                    String a = a(new String[]{"ls", "-l", strArr[i] + "su"});
                    if (TextUtils.isEmpty(a) || a.indexOf("root") == a.lastIndexOf("root")) {
                        return false;
                    }
                    return true;
                }
                i++;
            } catch (Exception e) {
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x004a A:{ExcHandler: all (th java.lang.Throwable), Splitter: B:3:0x0010} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:22:0x004a, code:
            r0 = th;
     */
    /* JADX WARNING: Missing block: B:24:0x004d, code:
            r0 = r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static String a(String[] strArr) {
        Process start;
        String readLine;
        String str = "";
        try {
            ProcessBuilder processBuilder = new ProcessBuilder(strArr);
            processBuilder.redirectErrorStream(false);
            start = processBuilder.start();
            try {
                DataOutputStream dataOutputStream = new DataOutputStream(start.getOutputStream());
                readLine = new DataInputStream(start.getInputStream()).readLine();
                dataOutputStream.writeBytes("exit\n");
                dataOutputStream.flush();
                start.waitFor();
                try {
                    start.destroy();
                } catch (Exception e) {
                }
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            Throwable th3 = th2;
            start = null;
            Throwable th4 = th3;
            try {
                start.destroy();
            } catch (Exception e2) {
            }
            throw th4;
        }
        return readLine;
        try {
            start.destroy();
        } catch (Exception e3) {
        }
        return readLine;
    }

    public final String c() {
        String str = "";
        try {
            return UTDevice.getUtdid(this.a);
        } catch (Throwable th) {
            a.a(com.alipay.sdk.app.statistic.c.e, com.alipay.sdk.app.statistic.c.k, th);
            return str;
        }
    }
}
