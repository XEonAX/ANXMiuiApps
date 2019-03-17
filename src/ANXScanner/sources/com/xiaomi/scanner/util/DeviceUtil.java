package com.xiaomi.scanner.util;

import android.os.Build;
import android.text.TextUtils;
import com.xiaomi.scanner.util.ReflectUtil.ReflAgent;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import miui.os.SystemProperties;

public class DeviceUtil {
    private static final Set<String> AMAZON_ASSISTANT_PRELOAD_COUNTRIES = new HashSet(Arrays.asList(new String[]{"ID", "SG", "MY", "VN", "ES", "IT", "PL"}));
    private static final Set<String> EU = new HashSet(Arrays.asList(new String[]{"AT", "BE", "BG", "CY", "CZ", "DE", "DK", "EE", "ES", "FI", "FR", "GB", "GR", "HR", "HU", "IE", "IT", "LT", "LU", "LV", "MT", "NL", "PL", "PT", "RO", "SE", "SI", "SK"}));
    private static final boolean IS_A7 = "capricorn".equals(Build.DEVICE);
    private static final boolean IS_C1 = "sagit".equals(Build.DEVICE);
    private static final boolean IS_C8 = "jason".equals(Build.DEVICE);
    private static final boolean IS_D5 = "chiron".equals(Build.DEVICE);
    private static final boolean IS_E7 = "vince".equals(Build.DEVICE);
    private static final boolean IS_H2X_LC = "lte26007".equals(Build.DEVICE);
    private static final boolean IS_MI3TD = "pisces".equals(Build.DEVICE);
    private static final boolean IS_MI7 = "leo".equals(Build.DEVICE);
    public static final String UNKNOWN = "unknown";

    public static boolean isImageNeedRotate() {
        return IS_H2X_LC || IS_C1 || IS_C8 || IS_D5 || IS_E7;
    }

    public static boolean isLowMemoryDevice() {
        return IS_H2X_LC;
    }

    public static boolean isSurfaceSizeLimited() {
        return IS_MI7;
    }

    public static boolean isMi2() {
        return isDevices("IS_MITWO") || isDevices("IS_MI2A");
    }

    public static boolean isInternationalBuild() {
        return isDevices("IS_INTERNATIONAL_BUILD");
    }

    private static boolean isDevices(String field) {
        return ReflAgent.getClass("miui.os.Build").getStaticFiled(field).booleanResult();
    }

    public static boolean isEURegion() {
        String country = getRegion();
        if (TextUtils.isEmpty(country) || TextUtils.equals(country, "unknown")) {
            return true;
        }
        return EU.contains(country);
    }

    public static boolean isPreLoadRegionAA() {
        String country = getRegion();
        if (TextUtils.isEmpty(country) || TextUtils.equals(country, "unknown")) {
            return true;
        }
        return AMAZON_ASSISTANT_PRELOAD_COUNTRIES.contains(country);
    }

    public static boolean isKoreaRegion() {
        return TextUtils.equals(Locale.KOREA.getCountry(), getRegion());
    }

    public static boolean checkRegion(String region) {
        return ReflAgent.getClass("miui.os.Build").callStaticMethod("checkRegion", new Class[]{String.class}, region).booleanResult();
    }

    public static String getLanguage() {
        return Locale.getDefault().getLanguage();
    }

    public static boolean isSimpleChinese() {
        return Locale.SIMPLIFIED_CHINESE.equals(Locale.getDefault());
    }

    public static boolean isLayoutRtl() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    public static String getRegion() {
        return SystemProperties.get("ro.miui.region", "GB");
    }

    public static String getMiuiVersion() {
        return SystemProperties.get("ro.build.version.incremental", "unknown");
    }
}
