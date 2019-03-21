package com.xiaomi.metoknlp.devicediscover;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.net.DhcpInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* compiled from: DiscoverUtils */
class i {
    public static DhcpInfo b(Context context) {
        if (context == null) {
            return null;
        }
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        if (wifiManager == null || !wifiManager.isWifiEnabled()) {
            return null;
        }
        DhcpInfo dhcpInfo;
        try {
            dhcpInfo = context.getPackageManager().checkPermission("android.permission.ACCESS_WIFI_STATE", context.getPackageName()) == 0 ? wifiManager.getDhcpInfo() : null;
        } catch (Exception e) {
            dhcpInfo = null;
        }
        return dhcpInfo;
    }

    public static String c(Context context) {
        try {
            DhcpInfo b = b(context);
            if (b == null) {
                return null;
            }
            return intToInetAddress(b.gateway).getHostAddress();
        } catch (Exception e) {
            return null;
        }
    }

    public static String d(Context context) {
        try {
            DhcpInfo b = b(context);
            if (b == null) {
                return null;
            }
            return intToInetAddress(b.serverAddress).getHostAddress();
        } catch (Exception e) {
            return null;
        }
    }

    public static String a(Context context, int i) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (wifiManager == null || !wifiManager.isWifiEnabled()) {
                return null;
            }
            WifiInfo connectionInfo;
            try {
                if (context.getPackageManager().checkPermission("android.permission.ACCESS_WIFI_STATE", context.getPackageName()) == 0) {
                    connectionInfo = wifiManager.getConnectionInfo();
                } else {
                    connectionInfo = null;
                }
            } catch (Exception e) {
                connectionInfo = null;
            }
            if (connectionInfo == null) {
                return null;
            }
            if (i == 0) {
                return connectionInfo.getMacAddress();
            }
            if (i == 1) {
                return connectionInfo.getBSSID();
            }
            if (i == 2) {
                return l(connectionInfo.getSSID());
            }
            return null;
        } catch (Exception e2) {
            return null;
        }
    }

    private static String l(String str) {
        if (str.startsWith("\"") && str.endsWith("\"")) {
            return str.substring(1, str.length() - 1);
        }
        return str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0046 A:{SYNTHETIC, Splitter: B:25:0x0046} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0050 A:{SYNTHETIC, Splitter: B:31:0x0050} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String e(Context context) {
        Throwable th;
        String a = a(context, 0);
        if (a == null || a.isEmpty() || "02:00:00:00:00:00".equals(a)) {
            FileReader fileReader;
            try {
                char[] cArr = new char[1024];
                fileReader = new FileReader("/sys/class/net/wlan0/address");
                try {
                    a = new String(cArr, 0, fileReader.read(cArr, 0, 1024)).trim();
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Exception e) {
                        }
                    }
                } catch (FileNotFoundException e2) {
                } catch (Exception e3) {
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Exception e4) {
                        }
                    }
                    return a;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Exception e5) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e6) {
                fileReader = null;
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (Exception e7) {
                    }
                }
                return a;
            } catch (Exception e8) {
                fileReader = null;
                if (fileReader != null) {
                }
                return a;
            } catch (Throwable th3) {
                th = th3;
                fileReader = null;
                if (fileReader != null) {
                }
                throw th;
            }
        }
        return a;
    }

    public static void a(Context context, String str, String str2) {
        Editor edit = context.getSharedPreferences("devicediscover", 0).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    public static String b(Context context, String str, String str2) {
        return context.getSharedPreferences("devicediscover", 0).getString(str, str2);
    }

    public static InetAddress intToInetAddress(int i) {
        try {
            return InetAddress.getByAddress(new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)});
        } catch (UnknownHostException e) {
            throw new AssertionError();
        }
    }
}
