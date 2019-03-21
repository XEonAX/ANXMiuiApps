package com.miui.gallery.permission.introduction;

import android.app.Activity;
import android.app.DialogFragment;
import com.miui.gallery.permission.core.OnPermissionIntroduced;
import com.miui.gallery.permission.cta.CtaPermissionIntroduceDialog;
import com.miui.gallery.permission.cta.CtaPermissions;

public class CTAPermissionIntroduction {
    public void introduce(Activity activity, String permission, final OnPermissionIntroduced callback) {
        if (CtaPermissions.isPrivacyAllowed(permission)) {
            callback.onPermissionIntroduced(true);
            return;
        }
        String dialogTag = "cta_privacy_permission_dialog_" + permission;
        DialogFragment dialog = (DialogFragment) activity.getFragmentManager().findFragmentByTag(dialogTag);
        if (dialog == null) {
            dialog = CtaPermissionIntroduceDialog.newInstance(permission, new OnPermissionIntroduced() {
                public void onPermissionIntroduced(boolean allowed) {
                    callback.onPermissionIntroduced(allowed);
                }
            });
        }
        if (!dialog.isAdded()) {
            dialog.show(activity.getFragmentManager(), dialogTag);
        }
    }
}
