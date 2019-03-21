package com.xiaomi.channel.commonutils.android;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.file.FileLocker;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.reflect.JavaCalls;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Pattern;

public class DeviceInfo {
    private static String sCachedDeviceId = null;
    private static String sCachedIMEI = null;
    private static String sCachedSimpleDeviceId = null;
    private static String sCachedSubIMEIS = "";
    private static volatile boolean sVirtDevIDChecked = false;
    private static String sVirtDevId = null;

    public static String getDeviceId(Context context, boolean acceptEmpty) {
        if (sCachedDeviceId == null) {
            String deviceId = "";
            if (!MIUIUtils.isGDPREnable()) {
                deviceId = acceptEmpty ? blockingGetIMEI(context) : blockingGetIMEIWhenDeviceRegister(context);
            }
            String str = "";
            sCachedDeviceId = "a-" + XMStringUtils.getSHA1Digest(deviceId + getAndroidId(context) + getSerialNum());
        }
        return sCachedDeviceId;
    }

    public static String getDeviceId1(Context context) {
        String str = "";
        return "a-" + XMStringUtils.getSHA1Digest(null + getAndroidId(context) + null);
    }

    public static String getGaid(Context context) {
        try {
            return GoogleAdvertisingClient.getAdvertisingIdInfo(context).getId();
        } catch (Exception e) {
            MyLog.w("failure to get gaid:" + e.getMessage());
            return null;
        }
    }

    private static boolean isSupportVDevid(Context context) {
        boolean isSupoort = false;
        if (!PermissionUtils.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") || MIUIUtils.isMIUI()) {
            return false;
        }
        if (VERSION.SDK_INT >= 26) {
            isSupoort = true;
        }
        if (isSupoort) {
            return isSupoort;
        }
        return SystemUtils.isDebuggable(context);
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String getVirtDevId(Context context) {
        if (!isSupportVDevid(context)) {
            return null;
        }
        if (!TextUtils.isEmpty(sVirtDevId)) {
            return sVirtDevId;
        }
        sVirtDevId = IOUtils.fileToStr(new File(context.getFilesDir(), ".vdevid"));
        if (!TextUtils.isEmpty(sVirtDevId)) {
            return sVirtDevId;
        }
        FileLocker lock = null;
        try {
            File deviceFile = new File(new File(Environment.getExternalStorageDirectory(), "/Xiaomi/"), ".vdevid");
            lock = FileLocker.lock(context, deviceFile);
            sVirtDevId = "";
            String id = IOUtils.fileToStr(deviceFile);
            if (id != null) {
                sVirtDevId = id;
            }
            String str = sVirtDevId;
            if (lock == null) {
                return str;
            }
            lock.unlock();
            return str;
        } catch (IOException e) {
            MyLog.w("getVDevID failure :" + e.getMessage());
            if (lock != null) {
                lock.unlock();
            }
            return sVirtDevId;
        } catch (Throwable th) {
            if (lock != null) {
                lock.unlock();
            }
            throw th;
        }
    }

    public static String checkVirtDevId(Context ctx) {
        if (!isSupportVDevid(ctx) || sVirtDevIDChecked) {
            return null;
        }
        sVirtDevIDChecked = true;
        String deviceid = null;
        String localID = IOUtils.fileToStr(new File(ctx.getFilesDir(), ".vdevid"));
        FileLocker lock = null;
        try {
            File deviceFile = new File(new File(Environment.getExternalStorageDirectory(), "/Xiaomi/"), ".vdevid");
            lock = FileLocker.lock(ctx, deviceFile);
            deviceid = IOUtils.fileToStr(deviceFile);
            if (lock != null) {
                lock.unlock();
            }
        } catch (IOException e) {
            MyLog.w("check id failure :" + e.getMessage());
            if (lock != null) {
                lock.unlock();
            }
        } catch (Throwable th) {
            if (lock != null) {
                lock.unlock();
            }
        }
        if (TextUtils.isEmpty(localID)) {
            MyLog.w("empty local vid");
            return "F*";
        }
        sVirtDevId = localID;
        if (TextUtils.isEmpty(deviceid) || deviceid.length() > 128) {
            MyLog.w("recover vid :" + deviceid);
            updateVirtDevId(ctx, localID);
        } else if (!TextUtils.equals(localID, deviceid)) {
            MyLog.w("vid changed, need sync");
            return deviceid;
        }
        MyLog.v("vdevid = " + sVirtDevId + " " + deviceid);
        return null;
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void updateVirtDevId(Context context, String vdevid) {
        MyLog.v("update vdevid = " + vdevid);
        if (!TextUtils.isEmpty(vdevid)) {
            sVirtDevId = vdevid;
            FileLocker lock = null;
            try {
                if (isSupportVDevid(context)) {
                    File dir = new File(Environment.getExternalStorageDirectory(), "/Xiaomi/");
                    if (dir.exists() && dir.isFile()) {
                        dir.delete();
                    }
                    File deviceFile = new File(dir, ".vdevid");
                    lock = FileLocker.lock(context, deviceFile);
                    IOUtils.remove(deviceFile);
                    IOUtils.strToFile(deviceFile, sVirtDevId);
                }
                IOUtils.strToFile(new File(context.getFilesDir(), ".vdevid"), sVirtDevId);
                if (lock != null) {
                    lock.unlock();
                }
            } catch (IOException e) {
                MyLog.w("update vdevid failure :" + e.getMessage());
                if (lock != null) {
                    lock.unlock();
                }
            } catch (Throwable th) {
                if (lock != null) {
                    lock.unlock();
                }
                throw th;
            }
        }
    }

    public static String getSerialNum() {
        if (VERSION.SDK_INT > 8 && VERSION.SDK_INT < 26) {
            return Build.SERIAL;
        }
        if (VERSION.SDK_INT >= 26) {
            return (String) JavaCalls.callStaticMethod("android.os.Build", "getSerial", (Object[]) null);
        }
        return null;
    }

    public static String getAndroidId(Context context) {
        String androidId = null;
        try {
            return Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable e) {
            MyLog.e(e);
            return androidId;
        }
    }

    private static String blockingGetIMEIWhenDeviceRegister(Context context) {
        int cnt = 10;
        String deviceId = quicklyGetIMEI(context);
        while (TextUtils.isEmpty(deviceId)) {
            int cnt2 = cnt - 1;
            if (cnt <= 0) {
                cnt = cnt2;
                break;
            }
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
            }
            deviceId = quicklyGetIMEI(context);
            cnt = cnt2;
        }
        return deviceId;
    }

    public static String blockingGetIMEI(Context context) {
        String deviceId = quicklyGetIMEI(context);
        int cnt = 10;
        while (deviceId == null) {
            int cnt2 = cnt - 1;
            if (cnt <= 0) {
                break;
            }
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
            }
            deviceId = quicklyGetIMEI(context);
            cnt = cnt2;
        }
        return deviceId;
    }

    public static String quicklyGetIMEI(Context context) {
        if (MIUIUtils.isGDPREnable()) {
            return "";
        }
        if (sCachedIMEI != null) {
            return sCachedIMEI;
        }
        String deviceId = null;
        try {
            if (MIUIUtils.isMIUI()) {
                String className = "miui.telephony.TelephonyManager";
                Object miuiTelephonyManager = JavaCalls.callStaticMethod("miui.telephony.TelephonyManager", "getDefault", new Object[0]);
                if (miuiTelephonyManager != null) {
                    Object deviceIdObj = JavaCalls.callMethod(miuiTelephonyManager, "getMiuiDeviceId", new Object[0]);
                    if (deviceIdObj != null && (deviceIdObj instanceof String)) {
                        deviceId = (String) String.class.cast(deviceIdObj);
                    }
                }
            }
            if (deviceId == null && canReadPhoneState(context)) {
                TelephonyManager tm = (TelephonyManager) context.getSystemService("phone");
                if (VERSION.SDK_INT < 26) {
                    deviceId = tm.getDeviceId();
                } else if (1 == tm.getPhoneType()) {
                    deviceId = (String) JavaCalls.callMethod(tm, "getImei", (Object[]) null);
                } else if (2 == tm.getPhoneType()) {
                    deviceId = (String) JavaCalls.callMethod(tm, "getMeid", (Object[]) null);
                }
            }
            if (!verifyImei(deviceId)) {
                return "";
            }
            sCachedIMEI = deviceId;
            return deviceId;
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    public static String blockingGetSubIMEISMd5(Context context) {
        String subImeisMd5 = quicklyGetSubIMEISMd5(context);
        int cnt = 10;
        while (subImeisMd5 == null) {
            int cnt2 = cnt - 1;
            if (cnt <= 0) {
                break;
            }
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
            }
            subImeisMd5 = quicklyGetSubIMEISMd5(context);
            cnt = cnt2;
        }
        return subImeisMd5;
    }

    public static String quicklyGetSubIMEIS(Context context) {
        if (MIUIUtils.isGDPREnable()) {
            return "";
        }
        if (VERSION.SDK_INT < 22) {
            return "";
        }
        if (!TextUtils.isEmpty(sCachedSubIMEIS)) {
            return sCachedSubIMEIS;
        }
        if (!canReadPhoneState(context)) {
            return "";
        }
        quicklyGetIMEI(context);
        if (TextUtils.isEmpty(sCachedIMEI)) {
            return "";
        }
        try {
            TelephonyManager tm = (TelephonyManager) context.getSystemService("phone");
            Integer count = (Integer) JavaCalls.callMethod(tm, "getPhoneCount", new Object[0]);
            if (count == null || count.intValue() <= 1) {
                return "";
            }
            String subImei = null;
            for (int i = 0; i < count.intValue(); i++) {
                if (VERSION.SDK_INT < 26) {
                    subImei = (String) JavaCalls.callMethod(tm, "getDeviceId", Integer.valueOf(i));
                } else if (1 == tm.getPhoneType()) {
                    subImei = (String) JavaCalls.callMethod(tm, "getImei", Integer.valueOf(i));
                } else if (2 == tm.getPhoneType()) {
                    subImei = (String) JavaCalls.callMethod(tm, "getMeid", Integer.valueOf(i));
                }
                if (!(TextUtils.isEmpty(subImei) || TextUtils.equals(sCachedIMEI, subImei) || !verifyImei(subImei))) {
                    sCachedSubIMEIS += subImei + ",";
                }
            }
            int length = sCachedSubIMEIS.length();
            if (length > 0) {
                sCachedSubIMEIS = sCachedSubIMEIS.substring(0, length - 1);
            }
            return sCachedSubIMEIS;
        } catch (Exception e) {
            MyLog.e(e.toString());
            return "";
        }
    }

    public static String quicklyGetSubIMEISMd5(Context context) {
        quicklyGetSubIMEIS(context);
        if (TextUtils.isEmpty(sCachedSubIMEIS)) {
            return "";
        }
        String result = "";
        for (String subImei : sCachedSubIMEIS.split(",")) {
            if (verifyImei(subImei)) {
                result = result + XMStringUtils.getMd5Digest(subImei) + ",";
            }
        }
        int length = result.length();
        if (length > 0) {
            return result.substring(0, length - 1);
        }
        return result;
    }

    public static ArrayList<String> getIMEIList(Context context) {
        quicklyGetIMEI(context);
        quicklyGetSubIMEIS(context);
        if (TextUtils.isEmpty(sCachedIMEI)) {
            return null;
        }
        ArrayList<String> imeiList = new ArrayList();
        imeiList.add(sCachedIMEI);
        if (TextUtils.isEmpty(sCachedSubIMEIS)) {
            return imeiList;
        }
        for (String subImei : sCachedSubIMEIS.split(",")) {
            imeiList.add(subImei);
        }
        return imeiList;
    }

    private static boolean canReadPhoneState(Context context) {
        String permissionName = "android.permission.READ_PHONE_STATE";
        return context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) == 0;
    }

    public static synchronized String getSimpleDeviceId(Context context) {
        String str;
        synchronized (DeviceInfo.class) {
            if (sCachedSimpleDeviceId != null) {
                str = sCachedSimpleDeviceId;
            } else {
                String androidId = getAndroidId(context);
                sCachedSimpleDeviceId = XMStringUtils.getSHA1Digest(androidId + getSerialNum());
                str = sCachedSimpleDeviceId;
            }
        }
        return str;
    }

    public static String getSimOperatorName(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getSimOperatorName();
    }

    @TargetApi(17)
    public static int getSpaceId() {
        if (VERSION.SDK_INT < 17) {
            return -1;
        }
        Object myUserId = JavaCalls.callStaticMethod("android.os.UserHandle", "myUserId", new Object[0]);
        if (myUserId != null) {
            return ((Integer) Integer.class.cast(myUserId)).intValue();
        }
        return -1;
    }

    public static String getMacAddress(Context context) {
        if (MIUIUtils.isGDPREnable()) {
            return "";
        }
        try {
            String macString = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (verifyMac(macString)) {
                return XMStringUtils.toUpperCase(macString);
            }
            return "";
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    private static boolean verifyImei(String imeiString) {
        if (!TextUtils.isEmpty(imeiString) && imeiString.length() <= 15 && imeiString.length() >= 14 && XMStringUtils.isNumberAndLetter(imeiString) && !XMStringUtils.isTheSameChars(imeiString)) {
            return true;
        }
        return false;
    }

    private static boolean verifyMac(String macStr) {
        if (TextUtils.isEmpty(macStr) || macStr.length() != 17 || !Pattern.compile("^([A-Fa-f0-9]{2}[-,:]){5}[A-Fa-f0-9]{2}$").matcher(macStr).matches()) {
            return false;
        }
        boolean isInvalid = true;
        char char0 = macStr.charAt(0);
        if (char0 == '0' || char0 == 'f' || char0 == 'F') {
            int i = 1;
            while (i < macStr.length()) {
                if (macStr.charAt(i) != char0) {
                    isInvalid = false;
                    break;
                }
                if (i < macStr.length() - 1 && (macStr.charAt(i + 1) == '-' || macStr.charAt(i + 1) == ':')) {
                    i++;
                }
                i++;
            }
        }
        if (isInvalid) {
            return false;
        }
        return true;
    }
}
