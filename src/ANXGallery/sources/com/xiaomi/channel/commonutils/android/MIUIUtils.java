package com.xiaomi.channel.commonutils.android;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.reflect.JavaCalls;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class MIUIUtils {
    private static int isGDPREnable = -1;
    private static int isInXMS = -1;
    private static int isMIUI = 0;
    private static Map<String, Region> locale2RegionMap = null;

    public static synchronized boolean isMIUI() {
        boolean z = true;
        synchronized (MIUIUtils.class) {
            if (getIsMIUI() != 1) {
                z = false;
            }
        }
        return z;
    }

    public static synchronized boolean isNotMIUI() {
        boolean z;
        synchronized (MIUIUtils.class) {
            z = getIsMIUI() == 2;
        }
        return z;
    }

    public static synchronized int getIsMIUI() {
        int i = 1;
        boolean isMIUIBool = false;
        synchronized (MIUIUtils.class) {
            if (isMIUI == 0) {
                try {
                    if (!(TextUtils.isEmpty(getProperty("ro.miui.ui.version.code")) && TextUtils.isEmpty(getProperty("ro.miui.ui.version.name")))) {
                        isMIUIBool = true;
                    }
                    if (!isMIUIBool) {
                        i = 2;
                    }
                    isMIUI = i;
                } catch (Throwable e) {
                    MyLog.e("get isMIUI failed", e);
                    isMIUI = 0;
                }
                MyLog.i("isMIUI's value is: " + isMIUI);
            }
            i = isMIUI;
        }
        return i;
    }

    public static synchronized String getMIUIType() {
        String str;
        synchronized (MIUIUtils.class) {
            int miuiTypeInt = SystemUtils.getMIUIType();
            if (!isMIUI() || miuiTypeInt <= 0) {
                str = "";
            } else if (miuiTypeInt < 2) {
                str = "alpha";
            } else if (miuiTypeInt < 3) {
                str = "development";
            } else {
                str = "stable";
            }
        }
        return str;
    }

    public static String getProperty(String key) {
        String value = null;
        try {
            return (String) JavaCalls.callStaticMethod("android.os.SystemProperties", "get", key, "");
        } catch (Throwable e) {
            MyLog.e(e);
            return value;
        } catch (Throwable th) {
            return value;
        }
    }

    public static boolean isXMS() {
        if (isInXMS < 0) {
            Object result = JavaCalls.callStaticMethod("miui.external.SdkHelper", "isMiuiSystem", new Object[0]);
            isInXMS = 0;
            if (!(result == null || !(result instanceof Boolean) || ((Boolean) Boolean.class.cast(result)).booleanValue())) {
                isInXMS = 1;
            }
        }
        return isInXMS > 0;
    }

    public static String getCountryCode() {
        String region = SystemProperties.get("ro.miui.region", "");
        if (TextUtils.isEmpty(region)) {
            region = SystemProperties.get("ro.product.locale.region", "");
        }
        if (TextUtils.isEmpty(region)) {
            region = SystemProperties.get("persist.sys.country", "");
        }
        if (TextUtils.isEmpty(region)) {
            return Locale.getDefault().getCountry();
        }
        return region;
    }

    public static boolean isGDPREnable() {
        if (isGDPREnable < 0) {
            if (Region.Europe.name().equalsIgnoreCase(getRegion(getCountryCode()).name()) && isMIUI()) {
                isGDPREnable = 1;
            } else {
                isGDPREnable = 0;
            }
        }
        if (isGDPREnable > 0) {
            return true;
        }
        return false;
    }

    public static Region getRegion(String locale) {
        Region region = findServerRegionByLocale(locale);
        if (region == null) {
            return Region.Global;
        }
        return region;
    }

    private static Region findServerRegionByLocale(String locale) {
        initLocale2RegionMap();
        return (Region) locale2RegionMap.get(locale.toUpperCase());
    }

    private static void initLocale2RegionMap() {
        if (locale2RegionMap == null) {
            locale2RegionMap = new HashMap();
            locale2RegionMap.put("CN", Region.China);
            locale2RegionMap.put("FI", Region.Europe);
            locale2RegionMap.put("SE", Region.Europe);
            locale2RegionMap.put("NO", Region.Europe);
            locale2RegionMap.put("FO", Region.Europe);
            locale2RegionMap.put("EE", Region.Europe);
            locale2RegionMap.put("LV", Region.Europe);
            locale2RegionMap.put("LT", Region.Europe);
            locale2RegionMap.put("BY", Region.Europe);
            locale2RegionMap.put("MD", Region.Europe);
            locale2RegionMap.put("UA", Region.Europe);
            locale2RegionMap.put("PL", Region.Europe);
            locale2RegionMap.put("CZ", Region.Europe);
            locale2RegionMap.put("SK", Region.Europe);
            locale2RegionMap.put("HU", Region.Europe);
            locale2RegionMap.put("DE", Region.Europe);
            locale2RegionMap.put("AT", Region.Europe);
            locale2RegionMap.put("CH", Region.Europe);
            locale2RegionMap.put("LI", Region.Europe);
            locale2RegionMap.put("GB", Region.Europe);
            locale2RegionMap.put("IE", Region.Europe);
            locale2RegionMap.put("NL", Region.Europe);
            locale2RegionMap.put("BE", Region.Europe);
            locale2RegionMap.put("LU", Region.Europe);
            locale2RegionMap.put("FR", Region.Europe);
            locale2RegionMap.put("RO", Region.Europe);
            locale2RegionMap.put("BG", Region.Europe);
            locale2RegionMap.put("RS", Region.Europe);
            locale2RegionMap.put("MK", Region.Europe);
            locale2RegionMap.put("AL", Region.Europe);
            locale2RegionMap.put("GR", Region.Europe);
            locale2RegionMap.put("SI", Region.Europe);
            locale2RegionMap.put("HR", Region.Europe);
            locale2RegionMap.put("IT", Region.Europe);
            locale2RegionMap.put("SM", Region.Europe);
            locale2RegionMap.put("MT", Region.Europe);
            locale2RegionMap.put("ES", Region.Europe);
            locale2RegionMap.put("PT", Region.Europe);
            locale2RegionMap.put("AD", Region.Europe);
            locale2RegionMap.put("CY", Region.Europe);
            locale2RegionMap.put("DK", Region.Europe);
            locale2RegionMap.put("RU", Region.Russia);
            locale2RegionMap.put("IN", Region.India);
        }
    }
}
