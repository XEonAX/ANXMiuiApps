package com.xiaomi.scanner.module.code.utils;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.util.List;

public class WifiAdmin {
    private static final Tag TAG = new Tag("WifiAdmin");
    private WifiManager mWifiManager;

    public WifiAdmin(Context context) {
        this.mWifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    public void openWifi() {
        if (!this.mWifiManager.isWifiEnabled()) {
            this.mWifiManager.setWifiEnabled(true);
        }
    }

    public boolean connectWifi(WifiConfiguration config) {
        if (config == null) {
            Log.v(TAG, "connectWifi config is null");
            return false;
        }
        int networkId = this.mWifiManager.addNetwork(config);
        if (networkId < 0) {
            Log.v(TAG, "addNetwork return " + networkId);
            return false;
        }
        this.mWifiManager.saveConfiguration();
        int connectNetworkId = this.mWifiManager.getConnectionInfo().getNetworkId();
        if (connectNetworkId >= 0) {
            this.mWifiManager.disableNetwork(connectNetworkId);
        }
        this.mWifiManager.disconnect();
        if (this.mWifiManager.enableNetwork(networkId, true)) {
            return this.mWifiManager.reconnect();
        }
        Log.v(TAG, "enableNetwork return false");
        return false;
    }

    public WifiConfiguration createWifiInfo(String SSID, String password, int type) {
        WifiConfiguration config = new WifiConfiguration();
        config.SSID = "\"" + SSID + "\"";
        if (type == 1) {
            config.wepKeys[0] = "";
            config.allowedKeyManagement.set(0);
            config.wepTxKeyIndex = 0;
        } else if (type == 2) {
            config.hiddenSSID = true;
            config.wepKeys[0] = "\"" + password + "\"";
            config.allowedAuthAlgorithms.set(1);
            config.allowedGroupCiphers.set(3);
            config.allowedGroupCiphers.set(2);
            config.allowedGroupCiphers.set(0);
            config.allowedGroupCiphers.set(1);
            config.allowedKeyManagement.set(0);
            config.wepTxKeyIndex = 0;
        } else if (type == 3) {
            config.preSharedKey = "\"" + password + "\"";
            config.hiddenSSID = true;
            config.allowedAuthAlgorithms.set(0);
            config.allowedGroupCiphers.set(2);
            config.allowedKeyManagement.set(1);
            config.allowedPairwiseCiphers.set(1);
            config.allowedGroupCiphers.set(3);
            config.allowedPairwiseCiphers.set(2);
            config.status = 2;
        }
        return config;
    }

    public boolean isExist(String ssid) {
        if (TextUtils.isEmpty(ssid)) {
            return false;
        }
        List<WifiConfiguration> configs = this.mWifiManager.getConfiguredNetworks();
        if (configs == null) {
            return false;
        }
        for (WifiConfiguration config : configs) {
            if (config != null && config.SSID != null && config.SSID.equals("\"" + ssid + "\"")) {
                return true;
            }
        }
        return false;
    }
}
