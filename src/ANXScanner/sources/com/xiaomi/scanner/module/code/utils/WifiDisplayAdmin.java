package com.xiaomi.scanner.module.code.utils;

import android.hardware.display.DisplayManager;
import android.hardware.display.WifiDisplay;
import android.provider.Settings.Global;
import android.text.TextUtils;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.util.AppUtil;
import com.xiaomi.scanner.util.ReflectUtil;

public class WifiDisplayAdmin {
    public static final String ACTION_MIRACAST_SETTINGS = "com.nvidia.settings.MIRACAST_SETTINGS";
    private static final Tag TAG = new Tag("WifiDisplayAdmin");
    private DisplayManager mDisplayManager = ((DisplayManager) ScannerApp.getAndroidContext().getSystemService("display"));

    public boolean startWifiDisplayScan() {
        if (this.mDisplayManager == null) {
            Log.w(TAG, "null manager");
            return false;
        } else if (ReflectUtil.callObjectMethod(this.mDisplayManager, "startWifiDisplayScan") == null) {
            return true;
        } else {
            return false;
        }
    }

    public boolean stopWifiDisplayScan() {
        if (this.mDisplayManager == null) {
            Log.w(TAG, "null manager");
            return false;
        } else if (ReflectUtil.callObjectMethod(this.mDisplayManager, "stopWifiDisplayScan") == null) {
            return true;
        } else {
            return false;
        }
    }

    public boolean checkAndConnectDisplay(String p2pMac) {
        try {
            if (this.mDisplayManager == null) {
                Log.w(TAG, "null manager");
                return false;
            }
            WifiDisplay[] wifiDisplays = (WifiDisplay[]) ReflectUtil.callObjectMethod(ReflectUtil.callObjectMethod(this.mDisplayManager, "getWifiDisplayStatus"), "getDisplays");
            if (wifiDisplays != null) {
                for (WifiDisplay diaplay : wifiDisplays) {
                    if (TextUtils.equals(diaplay.getDeviceAddress(), p2pMac)) {
                        return true;
                    }
                }
            }
            Log.v(TAG, "no display fit this p2pMac=" + p2pMac);
            return false;
        } catch (Exception e) {
            Log.e(TAG, "check Display error", e);
        }
    }

    public boolean connectWifiDisplay(String p2pMac) {
        boolean z = true;
        try {
            if (this.mDisplayManager == null) {
                Log.w(TAG, "null manager");
                return false;
            }
            if (ReflectUtil.callObjectMethod(this.mDisplayManager, "connectWifiDisplay", new Class[]{String.class}, p2pMac) != null) {
                z = false;
            }
            return z;
        } catch (Exception e) {
            Log.e(TAG, "connectWifiDisplay error", e);
            return false;
        }
    }

    public static boolean isWifiDisplayOn() {
        try {
            String display = ReflectUtil.getStaticObjectField(Global.class, "WIFI_DISPLAY_ON").toString();
            if (TextUtils.isEmpty(display) || AppUtil.getGlobalSettingsInt(ScannerApp.getAndroidContext(), display, 0) != 0) {
                return true;
            }
            return false;
        } catch (Exception e) {
            Log.e(TAG, "isWifiDisplayOn error", e);
            return false;
        }
    }
}
