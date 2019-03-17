package com.alipay.sdk.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import mtopsdk.common.util.SymbolExpUtil;

public final class a {
    private static final String b = "00:00:00:00:00:00";
    private static a e = null;
    public String a;
    private String c;
    private String d;

    public static a a(Context context) {
        if (e == null) {
            e = new a(context);
        }
        return e;
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private a(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
            b(telephonyManager.getDeviceId());
            String subscriberId = telephonyManager.getSubscriberId();
            if (subscriberId != null) {
                subscriberId = (subscriberId + "000000000000000").substring(0, 15);
            }
            this.c = subscriberId;
            this.a = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (TextUtils.isEmpty(this.a)) {
                this.a = b;
            }
        } catch (Exception e) {
            e.printStackTrace();
            if (TextUtils.isEmpty(this.a)) {
                this.a = b;
            }
        } catch (Throwable th) {
            if (TextUtils.isEmpty(this.a)) {
                this.a = b;
            }
            throw th;
        }
    }

    public final String a() {
        if (TextUtils.isEmpty(this.c)) {
            this.c = "000000000000000";
        }
        return this.c;
    }

    public final String b() {
        if (TextUtils.isEmpty(this.d)) {
            this.d = "000000000000000";
        }
        return this.d;
    }

    private void a(String str) {
        if (str != null) {
            str = (str + "000000000000000").substring(0, 15);
        }
        this.c = str;
    }

    private void b(String str) {
        if (str != null) {
            byte[] bytes = str.getBytes();
            int i = 0;
            while (i < bytes.length) {
                if (bytes[i] < (byte) 48 || bytes[i] > (byte) 57) {
                    bytes[i] = (byte) 48;
                }
                i++;
            }
            str = (new String(bytes) + "000000000000000").substring(0, 15);
        }
        this.d = str;
    }

    private String c() {
        String str = b() + SymbolExpUtil.SYMBOL_VERTICALBAR;
        Object a = a();
        if (TextUtils.isEmpty(a)) {
            return str + "000000000000000";
        }
        return str + a;
    }

    private String d() {
        return this.a;
    }

    public static d b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.getType() == 0) {
                return d.a(activeNetworkInfo.getSubtype());
            }
            if (activeNetworkInfo == null || activeNetworkInfo.getType() != 1) {
                return d.NONE;
            }
            return d.WIFI;
        } catch (Exception e) {
            return d.NONE;
        }
    }

    public static String c(Context context) {
        String str;
        a a = a(context);
        String str2 = a.b() + SymbolExpUtil.SYMBOL_VERTICALBAR;
        Object a2 = a.a();
        if (TextUtils.isEmpty(a2)) {
            str = str2 + "000000000000000";
        } else {
            str = str2 + a2;
        }
        return str.substring(0, 8);
    }

    public static String d(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getResources().getConfiguration().locale.toString();
        } catch (Throwable th) {
            return "";
        }
    }
}
