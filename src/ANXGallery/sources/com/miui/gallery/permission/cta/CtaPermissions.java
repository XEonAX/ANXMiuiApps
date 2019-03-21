package com.miui.gallery.permission.cta;

import android.text.TextUtils;
import com.miui.gallery.preference.BaseGalleryPreferences.PermissionIntroduction;

public class CtaPermissions {
    private static final String[] CTA_PRIVACY_PERMISSIONS = new String[]{"android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS", "android.permission.CAMERA", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.SEND_SMS", "android.permission.RECEIVE_SMS", "android.permission.READ_SMS", "android.permission.RECORD_AUDIO", "android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG"};

    public static boolean isPrivacyAllowed(String permission) {
        if (TextUtils.isEmpty(permission)) {
            return true;
        }
        for (String privacyPermission : CTA_PRIVACY_PERMISSIONS) {
            if (TextUtils.equals(permission, privacyPermission)) {
                return PermissionIntroduction.isCtaPrivacyPermissionsAllowed(permission);
            }
        }
        return true;
    }
}
