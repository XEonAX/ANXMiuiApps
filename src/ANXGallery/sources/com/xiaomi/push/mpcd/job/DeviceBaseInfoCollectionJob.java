package com.xiaomi.push.mpcd.job;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.DeviceInfo;
import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.xmpush.thrift.ClientCollectionType;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Iterator;

public class DeviceBaseInfoCollectionJob extends CollectionJob {
    private boolean androidDeviceIdSwitch;
    private boolean iccidSwitch;
    private boolean imsiSwitch;
    private boolean macSwitch;

    public DeviceBaseInfoCollectionJob(Context context, int period, boolean macSwitch, boolean imsiSwitch, boolean iccidSwitch, boolean androidDeviceIdSwitch) {
        super(context, period);
        this.macSwitch = macSwitch;
        this.imsiSwitch = imsiSwitch;
        if (MIUIUtils.isGDPREnable()) {
            this.imsiSwitch = false;
        }
        this.iccidSwitch = iccidSwitch;
        this.androidDeviceIdSwitch = androidDeviceIdSwitch;
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.DeviceBaseInfo;
    }

    public int getJobId() {
        return 13;
    }

    public String collectInfo() {
        return getMacInfo() + "|" + getImsiInfo() + "|" + getIccidInfo() + "|" + getDeviceIdMd5Sha1(this.context);
    }

    private String getMacInfo() {
        if (!this.macSwitch) {
            return "off";
        }
        try {
            String macInfo = getWifiMacAddress();
            if (TextUtils.isEmpty(macInfo)) {
                return "";
            }
            return XMStringUtils.getMd5Digest(macInfo) + "," + XMStringUtils.getSHA1Digest(macInfo);
        } catch (Throwable th) {
            return "";
        }
    }

    @TargetApi(9)
    private String getWifiMacAddress() {
        if (MIUIUtils.isGDPREnable()) {
            return "";
        }
        String result = "";
        if (VERSION.SDK_INT < 23) {
            result = ((WifiManager) this.context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        }
        if (!TextUtils.isEmpty(result)) {
            return result;
        }
        if (VERSION.SDK_INT < 9) {
            return "";
        }
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if ("wlan0".equalsIgnoreCase(networkInterface.getName())) {
                    byte[] mac = networkInterface.getHardwareAddress();
                    if (mac == null) {
                        return "";
                    }
                    StringBuilder buf = new StringBuilder();
                    int length = mac.length;
                    for (int i = 0; i < length; i++) {
                        buf.append(String.format("%02x:", new Object[]{Byte.valueOf(mac[i])}));
                    }
                    if (buf.length() > 0) {
                        buf.deleteCharAt(buf.length() - 1);
                    }
                    return buf.toString().toUpperCase();
                }
            }
        } catch (Exception exp) {
            exp.printStackTrace();
        }
        return "";
    }

    private String getImsiInfo() {
        if (!this.imsiSwitch) {
            return "off";
        }
        try {
            String imsi = ((TelephonyManager) this.context.getSystemService("phone")).getSubscriberId();
            if (TextUtils.isEmpty(imsi)) {
                return "";
            }
            return XMStringUtils.getMd5Digest(imsi) + "," + XMStringUtils.getSHA1Digest(imsi);
        } catch (Throwable th) {
            return "";
        }
    }

    private String getIccidInfo() {
        if (!this.iccidSwitch) {
            return "off";
        }
        try {
            String iccid = ((TelephonyManager) this.context.getSystemService("phone")).getSimSerialNumber();
            if (TextUtils.isEmpty(iccid)) {
                return "";
            }
            return XMStringUtils.getMd5Digest(iccid) + "," + XMStringUtils.getSHA1Digest(iccid);
        } catch (Throwable th) {
            return "";
        }
    }

    private String getDeviceIdMd5Sha1(Context context) {
        if (!this.androidDeviceIdSwitch) {
            return "off";
        }
        String result = "";
        try {
            if (MIUIUtils.isGDPREnable()) {
                return result;
            }
            Iterator it = DeviceInfo.getIMEIList(context).iterator();
            while (it.hasNext()) {
                String id = (String) it.next();
                if (!TextUtils.isEmpty(result)) {
                    result = result + ";";
                }
                result = result + XMStringUtils.getMd5Digest(id) + "," + XMStringUtils.getSHA1Digest(id);
            }
            return result;
        } catch (Throwable th) {
            return "";
        }
    }
}
