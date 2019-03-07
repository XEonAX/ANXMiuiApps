package com.xiaomi.stat.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.xiaomi.stat.I;

public class l {
    private static final String a = "NetWorkStateUtil";
    private static final int b = 16;
    private static final int c = 17;
    private static final int d = 18;
    private static final int e = 19;
    private static final String f = "2G";
    private static final String g = "3G";
    private static final String h = "4G";
    private static final String i = "WIFI";
    private static final String j = "ETHERNET";
    private static final String k = "UNKNOWN";
    private static final String l = "NOT_CONNECTED";

    private static class a {
        private a() {
        }

        public static String a(Context context) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return l.l;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return l.l;
            }
            activeNetworkInfo = connectivityManager.getNetworkInfo(1);
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(9);
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return l.i + b(context);
            }
            if (networkInfo == null || !networkInfo.isConnected()) {
                return l.k;
            }
            return l.j;
        }

        /* JADX WARNING: Removed duplicated region for block: B:27:0x0084 A:{Catch:{ Exception -> 0x0089 }} */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0077 A:{Catch:{ Exception -> 0x0089 }} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static String b(Context context) {
            String str = "";
            try {
                int frequency;
                if (VERSION.SDK_INT >= 22) {
                    frequency = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getFrequency();
                    if (a(frequency)) {
                        return "5G";
                    }
                    if (b(frequency)) {
                        return l.f;
                    }
                }
                Object obj;
                WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                String ssid = wifiManager.getConnectionInfo().getSSID();
                String substring = ssid.substring(1, ssid.length() - 1);
                if (ssid != null && ssid.length() > 2) {
                    for (ScanResult scanResult : wifiManager.getScanResults()) {
                        if (scanResult.SSID.equals(substring)) {
                            if (a(scanResult.frequency)) {
                                obj = 2;
                            } else if (b(scanResult.frequency)) {
                                frequency = 1;
                            }
                            if (obj != 2) {
                                return "5G";
                            }
                            if (obj == 1) {
                                return l.f;
                            }
                        }
                    }
                }
                frequency = -1;
                if (obj != 2) {
                }
            } catch (Throwable e) {
                k.e(l.a, "getWifiFreeBand error", e);
            }
            return str;
        }

        private static boolean a(int i) {
            return i > 4900 && i < 5900;
        }

        private static boolean b(int i) {
            return i > 2400 && i < 2500;
        }
    }

    public static int a(Context context) {
        String b = b(context);
        if (TextUtils.isEmpty(b) || b.equals(l)) {
            return 0;
        }
        if (b.equals(f)) {
            return 1;
        }
        if (b.equals(g)) {
            return 2;
        }
        if (b.equals(h)) {
            return 4;
        }
        if (b.startsWith(i)) {
            return 8;
        }
        if (b.equals(j)) {
            return 16;
        }
        return 0;
    }

    public static boolean a() {
        Context a = I.a();
        if (a != null) {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) a.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    return activeNetworkInfo.isConnectedOrConnecting();
                }
            } catch (Exception e) {
                k.b("isNetworkConnected exception");
            }
        }
        return false;
    }

    public static String b(Context context) {
        try {
            if (e.w(context)) {
                return a.a(context);
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return l;
            }
            if (activeNetworkInfo.getType() == 1) {
                return i;
            }
            if (activeNetworkInfo.getType() == 0) {
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return f;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return g;
                    case 13:
                    case 18:
                    case 19:
                        return h;
                    default:
                        return k;
                }
            }
            return k;
        } catch (Throwable e) {
            k.e(a, "getNetworkState error", e);
        }
    }
}
