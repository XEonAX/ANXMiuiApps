package com.xiaomi.push.mpcd.job;

import android.content.Context;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.xiaomi.xmpush.thrift.ClientCollectionType;

public class DeviceInfoCollectionJob extends CollectionJob {
    private boolean androidIdSwitch;
    private boolean androidVcSwitch;
    private boolean androidVnSwitch;
    private boolean operatorSwitch;
    private boolean screenSizeSwitch;

    public DeviceInfoCollectionJob(Context context, int period, boolean screenSizeSwitch, boolean androidVnSwitch, boolean androidVcSwitch, boolean androidIdSwitch, boolean operatorSwitch) {
        super(context, period);
        this.screenSizeSwitch = screenSizeSwitch;
        this.androidVnSwitch = androidVnSwitch;
        this.androidVcSwitch = androidVcSwitch;
        this.androidIdSwitch = androidIdSwitch;
        this.operatorSwitch = operatorSwitch;
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.DeviceInfoV2;
    }

    public int getJobId() {
        return 3;
    }

    public String collectInfo() {
        return getScreenSizeInfo() + "|" + getAndroidVnInfo() + "|" + getAndroidVcInfo() + "|" + getAndroidIdInfo() + "|" + getOperatorInfo();
    }

    private String getScreenSizeInfo() {
        if (!this.screenSizeSwitch) {
            return "off";
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) this.context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.heightPixels + "," + displayMetrics.widthPixels;
        } catch (Throwable th) {
            return "";
        }
    }

    private String getAndroidVnInfo() {
        if (!this.androidVnSwitch) {
            return "off";
        }
        try {
            return VERSION.RELEASE;
        } catch (Throwable th) {
            return "";
        }
    }

    private String getAndroidVcInfo() {
        if (!this.androidVcSwitch) {
            return "off";
        }
        try {
            return String.valueOf(VERSION.SDK_INT);
        } catch (Throwable th) {
            return "";
        }
    }

    private String getAndroidIdInfo() {
        if (!this.androidIdSwitch) {
            return "off";
        }
        try {
            return Secure.getString(this.context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            return "";
        }
    }

    private String getOperatorInfo() {
        if (!this.operatorSwitch) {
            return "off";
        }
        try {
            return ((TelephonyManager) this.context.getSystemService("phone")).getSimOperator();
        } catch (Throwable th) {
            return "";
        }
    }
}
