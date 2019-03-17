package com.xiaomi.scanner.module.code.zxing;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.util.List;

public class WiFiUtil {
    private static final int SECURITY_EAP = 3;
    private static final int SECURITY_NONE = 0;
    private static final int SECURITY_PSK = 2;
    private static final int SECURITY_WEP = 1;

    public static boolean isCurrentConnection(WifiManager wifiMgr, String SSID, int security) {
        if (SSID.length() == 0) {
            return false;
        }
        WifiInfo info = wifiMgr.getConnectionInfo();
        if (info == null) {
            return false;
        }
        String ssid = info.getSSID();
        int networdId = wifiMgr.getConnectionInfo().getNetworkId();
        if (networdId == -1 || !removeDoubleQuotes(ssid).equals(SSID)) {
            return false;
        }
        List<WifiConfiguration> configurations = wifiMgr.getConfiguredNetworks();
        if (configurations == null) {
            return false;
        }
        for (WifiConfiguration config : configurations) {
            if (networdId == config.networkId && security == getSecurity(config)) {
                return true;
            }
        }
        return false;
    }

    public static String convertToQuotedString(String string) {
        if (TextUtils.isEmpty(string)) {
            return "";
        }
        int lastPos = string.length() - 1;
        if (lastPos >= 0) {
            return (string.charAt(0) == '\"' && string.charAt(lastPos) == '\"') ? string : "\"" + string + "\"";
        } else {
            return string;
        }
    }

    public static String removeDoubleQuotes(String string) {
        int length = string.length();
        if (length > 1 && string.charAt(0) == '\"' && string.charAt(length - 1) == '\"') {
            return string.substring(1, length - 1);
        }
        return string;
    }

    public static boolean isWiFiConnected(Context context) {
        if (((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1).isConnected()) {
            return true;
        }
        return false;
    }

    public static int getSecurity(String security) {
        if ("WEP".equals(security)) {
            return 1;
        }
        if ("WPA".equals(security) || "WPA2".equals(security) || "WPA_WPA2".equals(security)) {
            return 2;
        }
        if ("EAP".equals(security)) {
            return 3;
        }
        return 0;
    }

    public static int getSecurity(ScanResult result) {
        if (result.capabilities.contains("WEP")) {
            return 1;
        }
        if (result.capabilities.contains("PSK")) {
            return 2;
        }
        if (result.capabilities.contains("EAP")) {
            return 3;
        }
        return 0;
    }

    public static int getSecurity(WifiConfiguration config) {
        if (config.allowedKeyManagement.get(1)) {
            return 2;
        }
        if (config.allowedKeyManagement.get(2) || config.allowedKeyManagement.get(3)) {
            return 3;
        }
        if (config.wepKeys[0] == null) {
            return 0;
        }
        return 1;
    }

    public static WifiConfiguration getConfig(String ssid, String security, String password) {
        WifiConfiguration config = new WifiConfiguration();
        config.SSID = convertToQuotedString(ssid);
        switch (getSecurity(security)) {
            case 0:
                config.allowedKeyManagement.set(0);
                return config;
            case 1:
                config.allowedKeyManagement.set(0);
                config.allowedAuthAlgorithms.set(0);
                config.allowedAuthAlgorithms.set(1);
                if (password.length() == 0) {
                    return config;
                }
                int length = password.length();
                if ((length == 10 || length == 26 || length == 58) && password.matches("[0-9A-Fa-f]*")) {
                    config.wepKeys[0] = password;
                    return config;
                }
                config.wepKeys[0] = '\"' + password + '\"';
                return config;
            case 2:
                config.allowedKeyManagement.set(1);
                if (password.length() == 0) {
                    return config;
                }
                if (password.matches("[0-9A-Fa-f]{64}")) {
                    config.preSharedKey = password;
                    return config;
                }
                config.preSharedKey = '\"' + password + '\"';
                return config;
            default:
                return null;
        }
    }
}
