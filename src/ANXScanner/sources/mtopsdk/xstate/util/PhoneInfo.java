package mtopsdk.xstate.util;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.Base64;
import java.util.Random;
import mtopsdk.common.util.ConfigStoreManager;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;

public class PhoneInfo {
    private static final String IMEI = "mtopsdk_imei";
    private static final String IMSI = "mtopsdk_imsi";
    private static final String MACADDRESS = "mtopsdk_mac_address";
    private static final String TAG = "mtopsdk.PhoneInfo";
    private static ConfigStoreManager storeManager = ConfigStoreManager.getInstance();

    private static String generateImei() {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            String valueOf = String.valueOf(currentTimeMillis);
            stringBuffer.append(valueOf.substring(valueOf.length() - 5));
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(Build.MODEL.replaceAll(" ", ""));
            while (stringBuffer2.length() < 6) {
                stringBuffer2.append('0');
            }
            stringBuffer.append(stringBuffer2.substring(0, 6));
            Random random = new Random(currentTimeMillis);
            currentTimeMillis = 0;
            while (currentTimeMillis < 4096) {
                currentTimeMillis = random.nextLong();
            }
            stringBuffer.append(Long.toHexString(currentTimeMillis).substring(0, 4));
        } catch (Throwable th) {
            TBSdkLog.e(TAG, "[generateImei] error --->" + th.toString());
        }
        return stringBuffer.toString();
    }

    public static String getImei(Context context) {
        Throwable th;
        String str;
        String str2 = "";
        try {
            str2 = storeManager.getConfigItem(context, ConfigStoreManager.MTOP_CONFIG_STORE, ConfigStoreManager.PHONE_INFO_STORE_PREFIX, IMEI);
            if (StringUtils.isNotBlank(str2)) {
                return new String(Base64.decode(str2, 0));
            }
            str2 = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            if (StringUtils.isBlank(str2)) {
                str2 = generateImei();
            }
            String trim = str2.replaceAll(" ", "").trim();
            while (trim.length() < 15) {
                try {
                    trim = "0" + trim;
                } catch (Throwable th2) {
                    th = th2;
                    str = trim;
                    TBSdkLog.e(TAG, "[getImei] error ---" + th.toString());
                    return str;
                }
            }
            storeManager.saveConfigItem(context, ConfigStoreManager.MTOP_CONFIG_STORE, ConfigStoreManager.PHONE_INFO_STORE_PREFIX, IMEI, Base64.encodeToString(trim.getBytes(), 0));
            return trim == null ? "" : trim.trim();
        } catch (Throwable th22) {
            Throwable th3 = th22;
            str = str2;
            th = th3;
            TBSdkLog.e(TAG, "[getImei] error ---" + th.toString());
            return str;
        }
    }

    public static String getImsi(Context context) {
        String str = "";
        try {
            str = storeManager.getConfigItem(context, ConfigStoreManager.MTOP_CONFIG_STORE, ConfigStoreManager.PHONE_INFO_STORE_PREFIX, IMSI);
            if (StringUtils.isNotBlank(str)) {
                return new String(Base64.decode(str, 0));
            }
            str = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
            if (StringUtils.isBlank(str)) {
                str = generateImei();
            }
            str = str.replaceAll(" ", "").trim();
            while (str.length() < 15) {
                str = "0" + str;
            }
            storeManager.saveConfigItem(context, ConfigStoreManager.MTOP_CONFIG_STORE, ConfigStoreManager.PHONE_INFO_STORE_PREFIX, IMSI, Base64.encodeToString(str.getBytes(), 0));
            return str;
        } catch (Throwable th) {
            Throwable th2 = th;
            String str2 = str;
            TBSdkLog.e(TAG, "[getImsi]error ---" + th2.toString());
            return str2;
        }
    }

    public static String getPhoneBaseInfo(Context context) {
        String str = "";
        try {
            String str2 = VERSION.RELEASE;
            String str3 = Build.MANUFACTURER;
            String str4 = Build.MODEL;
            StringBuilder stringBuilder = new StringBuilder("MTOPSDK/open_1.3.1");
            stringBuilder.append(" (").append("Android").append(";");
            stringBuilder.append(str2).append(";");
            stringBuilder.append(str3).append(";");
            stringBuilder.append(str4).append(")");
            return stringBuilder.toString();
        } catch (Throwable th) {
            TBSdkLog.e(TAG, "[getPhoneBaseInfo] error ---" + th.toString());
            return str;
        }
    }

    public static String getOriginalImei(Context context) {
        String deviceId;
        Throwable th;
        if (context == null) {
            return null;
        }
        try {
            deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            if (deviceId == null) {
                return deviceId;
            }
            try {
                return deviceId.trim();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            deviceId = null;
            th = th4;
        }
        TBSdkLog.e(TAG, "[getOriginalImei]error ---" + th.toString());
        return deviceId;
    }

    public static String getOriginalImsi(Context context) {
        String subscriberId;
        Throwable th;
        if (context == null) {
            return null;
        }
        try {
            subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
            if (subscriberId == null) {
                return subscriberId;
            }
            try {
                return subscriberId.trim();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            subscriberId = null;
            th = th4;
        }
        TBSdkLog.e(TAG, "[getOriginalImsi]error ---" + th.toString());
        return subscriberId;
    }

    public static String getSerialNum() {
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class, String.class}).invoke(cls, new Object[]{"ro.serialno", "unknown"});
        } catch (Throwable th) {
            TBSdkLog.e(TAG, "[getSerialNum]error ---" + th.toString());
            return null;
        }
    }

    public static String getAndroidId(Context context) {
        String str = null;
        if (context == null) {
            return str;
        }
        try {
            return Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable th) {
            TBSdkLog.e(TAG, "[getAndroidId]error ---" + th.toString());
            return str;
        }
    }

    public static String getLocalMacAddress(Context context) {
        if (context == null) {
            return "";
        }
        String str = "";
        try {
            str = storeManager.getConfigItem(context, ConfigStoreManager.MTOP_CONFIG_STORE, ConfigStoreManager.PHONE_INFO_STORE_PREFIX, MACADDRESS);
            if (StringUtils.isNotBlank(str)) {
                return new String(Base64.decode(str, 0));
            }
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (wifiManager != null) {
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                if (connectionInfo != null) {
                    str = connectionInfo.getMacAddress();
                }
            }
            if (StringUtils.isNotBlank(str)) {
                storeManager.saveConfigItem(context, ConfigStoreManager.MTOP_CONFIG_STORE, ConfigStoreManager.PHONE_INFO_STORE_PREFIX, MACADDRESS, Base64.encodeToString(str.getBytes(), 0));
            }
            return str;
        } catch (Throwable th) {
            Throwable th2 = th;
            String str2 = str;
            TBSdkLog.e(TAG, "[getLocalMacAddress]error ---" + th2.toString());
            return str2;
        }
    }
}
