package miui.yellowpage;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import miui.provider.ExtraSettings.System;
import miui.yellowpage.Tag.TagPreference;

public class Permission {
    private static final String ACTION_LOCATION_SETTING = "com.miui.yellowpage.intent.action.LOCATION_SETTING";
    private static final String ACTION_USER_NOTICE = "com.miui.yellowpage.intent.action.USER_NOTICE";
    private static final String ALLOW_NETWORKING_TEMPORARILY = "pref_allow_networking_temporarily";
    private static final String LOCATION_MODE = "location_mode";
    private static final int LOCATION_MODE_HIGH_ACCURACY = 3;

    private Permission() {
    }

    public static void setNetworkingAllowedTemporarily(Context context, boolean allowed) {
        System.putBoolean(context.getContentResolver(), YellowPageUtils.formatPreferenceKey(ALLOW_NETWORKING_TEMPORARILY), allowed);
    }

    private static boolean networkingAllowedTemporarily(Context context) {
        return System.getBoolean(context.getContentResolver(), YellowPageUtils.formatPreferenceKey(ALLOW_NETWORKING_TEMPORARILY), false);
    }

    public static void setNetworkingAllowedPermanently(Context context, boolean allowed) {
        System.putBoolean(context.getContentResolver(), YellowPageUtils.formatPreferenceKey(TagPreference.SHOW_USER_NOTICE_UPDATE_YP_ONLINE), allowed);
    }

    public static boolean networkingAllowedPermanently(Context context) {
        return System.getBoolean(context.getContentResolver(), YellowPageUtils.formatPreferenceKey(TagPreference.SHOW_USER_NOTICE_UPDATE_YP_ONLINE), false);
    }

    public static void setMipubUploadNotified(Context context, boolean notified) {
        System.putBoolean(context.getContentResolver(), YellowPageUtils.formatPreferenceKey(TagPreference.SHOW_USER_NOTICE_MIPUB_UPLOAD), notified);
    }

    public static boolean mipubUploadNotified(Context context) {
        return System.getBoolean(context.getContentResolver(), YellowPageUtils.formatPreferenceKey(TagPreference.SHOW_USER_NOTICE_MIPUB_UPLOAD), false);
    }

    public static void setRollingAdsAllowed(Context context, boolean allowed) {
        System.putBoolean(context.getContentResolver(), YellowPageUtils.formatPreferenceKey(TagPreference.SHOW_ROLLING_ADS), allowed);
    }

    public static boolean rollingAdsAllowed(Context context) {
        return System.getBoolean(context.getContentResolver(), YellowPageUtils.formatPreferenceKey(TagPreference.SHOW_ROLLING_ADS), true);
    }

    public static boolean networkingAllowed(Context context) {
        return networkingAllowedPermanently(context) || networkingAllowedTemporarily(context);
    }

    public static boolean locationingAllowed(Context context) {
        return Secure.isLocationProviderEnabled(context.getContentResolver(), "network");
    }

    public static void enableLocation(Context context) {
        if (VERSION.SDK_INT > 18) {
            Secure.putInt(context.getContentResolver(), LOCATION_MODE, 3);
        } else {
            Secure.setLocationProviderEnabled(context.getContentResolver(), "network", true);
        }
    }

    public static Intent createUserNoticeIntent() {
        return new Intent(ACTION_USER_NOTICE);
    }

    public static Intent createLocationSettingIntent() {
        return new Intent(ACTION_LOCATION_SETTING);
    }
}
