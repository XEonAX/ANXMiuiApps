package com.xiaomi.push.mpcd.job;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.xiaomi.channel.commonutils.misc.CollectionUtils;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.xmpush.thrift.ClientCollectionType;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class WifiCollectionJob extends CollectionJob {
    private Comparator<ScanResult> comparator = new Comparator<ScanResult>() {
        public int compare(ScanResult lhs, ScanResult rhs) {
            return rhs.level - lhs.level;
        }
    };

    public WifiCollectionJob(Context context, int period) {
        super(context, period);
    }

    public String collectInfo() {
        StringBuilder builder = new StringBuilder();
        try {
            WifiManager wifiManager = (WifiManager) this.context.getSystemService("wifi");
            if (wifiManager.isWifiEnabled()) {
                WifiInfo wifiInfo = wifiManager.getConnectionInfo();
                if (wifiInfo != null) {
                    builder.append(wifiInfo.getSSID()).append(",").append(XMStringUtils.toUpperCase(wifiInfo.getBSSID())).append("|");
                }
            }
            List<ScanResult> wifiList = wifiManager.getScanResults();
            if (!CollectionUtils.isEmpty(wifiList)) {
                Collections.sort(wifiList, this.comparator);
                for (int i = 0; i < Math.min(10, wifiList.size()); i++) {
                    ScanResult result = (ScanResult) wifiList.get(i);
                    if (i > 0) {
                        builder.append(";");
                    }
                    if (result != null) {
                        builder.append(result.SSID).append(",").append(XMStringUtils.toUpperCase(result.BSSID)).append(",").append(result.level);
                    }
                }
            }
        } catch (Throwable th) {
        }
        return builder.toString();
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.WIFI;
    }

    public int getJobId() {
        return 8;
    }
}
