package com.miui.privacy;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.content.MiuiIntent;

class XmsHelper implements IPrivacyHelper {
    XmsHelper() {
    }

    public void startSetPrivacyPasswordActivity(Fragment fragment, int requestCode) {
        Intent intent = new Intent();
        intent.setPackage("com.xiaomi.privacypassword");
        intent.setAction(MiuiIntent.ACTION_PRIVACY_PASSWORD_CHOOSE_ACCESS_CONTROL);
        intent.putExtra("android.intent.extra.shortcut.NAME", fragment.getActivity().getPackageName());
        fragment.startActivityForResult(intent, requestCode);
    }

    public void startAuthenticatePasswordActivity(Fragment fragment, int requestCode) {
        Intent intent = new Intent();
        intent.setPackage("com.xiaomi.privacypassword");
        intent.setAction(MiuiIntent.ACTION_PRIVACY_PASSWORD_CHECK_ACCESS_CONTROL);
        intent.putExtra("android.intent.extra.shortcut.NAME", fragment.getActivity().getPackageName());
        fragment.startActivityForResult(intent, requestCode);
    }

    public void confirmPrivateGalleryPassword(Fragment fragment, int requestCode) {
    }

    public void startAuthenticatePasswordActivity(Activity activity, int requestCode) {
        Intent intent = new Intent();
        intent.setPackage("com.xiaomi.privacypassword");
        intent.setAction(MiuiIntent.ACTION_PRIVACY_PASSWORD_CHECK_ACCESS_CONTROL);
        intent.putExtra("android.intent.extra.shortcut.NAME", activity.getPackageName());
        activity.startActivityForResult(intent, requestCode);
    }
}
