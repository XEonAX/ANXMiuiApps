package com.miui.gallery.permission;

import android.app.Activity;
import com.miui.gallery.agreement.AgreementsUtils;
import com.miui.gallery.permission.core.OnPermissionIntroduced;
import com.miui.gallery.permission.introduction.CTAPermissionIntroduction;
import com.miui.gallery.permission.introduction.RuntimePermissionsIntroduction;
import com.miui.gallery.util.BaseBuildUtil;

public class PermissionIntroductionUtils {
    public static void showPermissionIntroduction(Activity activity, String permission, OnPermissionIntroduced callback) {
        if (AgreementsUtils.isKoreaRegion()) {
            new RuntimePermissionsIntroduction().introduce(activity, permission, callback);
        } else if (BaseBuildUtil.isInternational()) {
            callback.onPermissionIntroduced(true);
        } else {
            new CTAPermissionIntroduction().introduce(activity, permission, callback);
        }
    }
}
