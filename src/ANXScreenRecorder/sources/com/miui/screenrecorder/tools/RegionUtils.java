package com.miui.screenrecorder.tools;

import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import miui.os.SystemProperties;

public class RegionUtils {
    private static final Set<String> EU = new HashSet(Arrays.asList(new String[]{"AT", "BE", "BG", "CY", "CZ", "DE", "DK", "EE", "ES", "FI", "FR", "GB", "GR", "HR", "HU", "IE", "IT", "LT", "LU", "LV", "MT", "NL", "PL", "PT", "RO", "SE", "SI", "SK"}));

    public static boolean isInEURegion() {
        String country = SystemProperties.get("ro.miui.region", EnvironmentCompat.MEDIA_UNKNOWN);
        if (TextUtils.isEmpty(country) || TextUtils.equals(country, EnvironmentCompat.MEDIA_UNKNOWN)) {
            return true;
        }
        return EU.contains(country);
    }

    public static boolean isInARLan() {
        return Locale.getDefault().getLanguage().equalsIgnoreCase("ar");
    }

    public static boolean isInFaIRLan() {
        return Locale.getDefault().getLanguage().equalsIgnoreCase("fa");
    }

    public static boolean isInThisCountry(String country) {
        if (TextUtils.isEmpty(country)) {
            return false;
        }
        return getRegion().equals(country);
    }

    public static String getRegion() {
        String region = SystemProperties.get("ro.miui.region");
        if (!TextUtils.isEmpty(region)) {
            return region;
        }
        region = SystemProperties.get("ro.product.locale.region");
        if (!TextUtils.isEmpty(region)) {
            return region;
        }
        region = SystemProperties.get("persist.sys.country");
        if (TextUtils.isEmpty(region)) {
            return Locale.getDefault().getCountry();
        }
        return region;
    }
}
