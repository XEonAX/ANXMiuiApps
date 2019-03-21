package com.xiaomi.push.mpcd.job;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.JobMutualExclusor;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.metoknlp.MetokApplication;
import com.xiaomi.metoknlp.devicediscover.DataListener;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.xmpush.thrift.ClientCollectionType;
import com.xiaomi.xmpush.thrift.ConfigKey;
import org.json.JSONObject;

public class WifiDevicesMacCollectionJob extends CollectionJob {
    private String mDevicesMac;
    private DataListener mMacDataListener = new DataListener() {
        public void onDataCollect(String s) {
            WifiDevicesMacCollectionJob.this.mDevicesMac = WifiDevicesMacCollectionJob.getMacsFromJSON(s);
            synchronized (WifiDevicesMacCollectionJob.this.object) {
                try {
                    WifiDevicesMacCollectionJob.this.object.notify();
                } catch (Throwable e) {
                    MyLog.e(e);
                }
            }
        }
    };
    private SharedPreferences mSharedPreference;
    private final Object object = new Object();

    private static String getMacsFromJSON(String jsonStr) {
        try {
            String macsString = new JSONObject(jsonStr).getJSONArray("devices").toString();
            String result = macsString.substring(1, macsString.length() - 1);
            if (!TextUtils.isEmpty(result)) {
                return XMStringUtils.toUpperCase(result);
            }
        } catch (Throwable th) {
        }
        return "";
    }

    public WifiDevicesMacCollectionJob(Context context, int period) {
        super(context, period);
        initMetokNLP(context);
    }

    public String collectInfo() {
        if (Network.isWIFIConnected(this.context)) {
            MetokApplication.get().fecthDeviceImmediately();
            synchronized (this.object) {
                try {
                    this.object.wait(10000);
                } catch (Throwable e) {
                    MyLog.e(e);
                }
            }
            this.mSharedPreference = this.context.getSharedPreferences("mipush_extra", 4);
            Editor editor = this.mSharedPreference.edit();
            editor.putLong("last_mac_upload_timestamp", System.currentTimeMillis());
            editor.commit();
        }
        String content = this.mDevicesMac;
        this.mDevicesMac = "";
        return content;
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.WifiDevicesMac;
    }

    public int getJobId() {
        return 14;
    }

    protected boolean checkPeriodAndRecord() {
        if (isWifiChanged()) {
            return JobMutualExclusor.checkPeriodAndRecordWithFileLock(this.context, String.valueOf(getJobId()), (long) this.period);
        }
        boolean canSelfUpload;
        int periodWifiUnchanged = Math.max(3600, OnlineConfig.getInstance(this.context).getIntValue(ConfigKey.WifiDevicesMacWifiUnchangedCollectionFrequency.getValue(), 7200));
        long currentTimeStamp = System.currentTimeMillis();
        this.mSharedPreference = this.context.getSharedPreferences("mipush_extra", 4);
        if (((float) Math.abs(currentTimeStamp - this.mSharedPreference.getLong("last_mac_upload_timestamp", 0))) >= ((float) (periodWifiUnchanged * 1000)) * 0.9f) {
            canSelfUpload = true;
        } else {
            canSelfUpload = false;
        }
        boolean isMutualExclusive = JobMutualExclusor.checkPeriodAndRecordWithFileLock(this.context, String.valueOf(getJobId()), (long) periodWifiUnchanged);
        if (canSelfUpload && isMutualExclusive) {
            return true;
        }
        return false;
    }

    private void initMetokNLP(Context context) {
        MetokApplication.create(context).init();
        MetokApplication.get().registerDataListener(this.mMacDataListener, 1);
    }

    public boolean isWifiChanged() {
        try {
            this.mSharedPreference = this.context.getSharedPreferences("mipush_extra", 4);
            String lastWifiSSID = this.mSharedPreference.getString("last_wifi_ssid", "");
            WifiManager wifiManager = (WifiManager) this.context.getSystemService("wifi");
            if (!wifiManager.isWifiEnabled()) {
                return true;
            }
            WifiInfo wifiInfo = wifiManager.getConnectionInfo();
            if (wifiInfo == null) {
                return true;
            }
            Editor editor = this.mSharedPreference.edit();
            editor.putString("last_wifi_ssid", wifiInfo.getSSID());
            editor.commit();
            if (TextUtils.isEmpty(lastWifiSSID)) {
                return false;
            }
            if (TextUtils.equals(wifiInfo.getSSID(), lastWifiSSID)) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            return true;
        }
    }
}
