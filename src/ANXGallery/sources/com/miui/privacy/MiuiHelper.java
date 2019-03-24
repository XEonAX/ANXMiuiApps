package com.miui.privacy;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.content.MiuiIntent;

class MiuiHelper implements IPrivacyHelper {
    MiuiHelper() {
    }

    public void startSetPrivacyPasswordActivity(Fragment fragment, int requestCode) {
        Intent intent = new Intent();
        intent.setClassName("com.android.settings", "com.android.settings.PrivacyPasswordChooseLockPattern");
        intent.setAction(MiuiIntent.ACTION_PRIVACY_PASSWORD_CHOOSE_ACCESS_CONTROL);
        intent.putExtra("android.intent.extra.shortcut.NAME", fragment.getActivity().getPackageName());
        fragment.startActivityForResult(intent, requestCode);
    }

    public void startAuthenticatePasswordActivity(Fragment fragment, int requestCode) {
        Intent intent = new Intent();
        intent.setClassName("com.android.settings", "com.android.settings.PrivacyPasswordConfirmLockPattern");
        intent.setAction(MiuiIntent.ACTION_PRIVACY_PASSWORD_CHECK_ACCESS_CONTROL);
        intent.putExtra("android.intent.extra.shortcut.NAME", fragment.getActivity().getPackageName());
        fragment.startActivityForResult(intent, requestCode);
    }

    public void confirmPrivateGalleryPassword(Fragment fragment, int requestCode) {
        fragment.startActivityForResult(new Intent("android.app.action.CONFIRM_GALLERY_PASSWORD"), requestCode);
    }

    public void startAuthenticatePasswordActivity(Activity activity, int requestCode) {
        Intent intent = new Intent();
        intent.setClassName("com.android.settings", "com.android.settings.PrivacyPasswordConfirmLockPattern");
        intent.setAction(MiuiIntent.ACTION_PRIVACY_PASSWORD_CHECK_ACCESS_CONTROL);
        intent.putExtra("android.intent.extra.shortcut.NAME", activity.getPackageName());
        activity.startActivityForResult(intent, requestCode);
    }
}
