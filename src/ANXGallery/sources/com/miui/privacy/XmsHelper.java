package com.miui.privacy;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;

class XmsHelper implements IPrivacyHelper {
    XmsHelper() {
    }

    public void startSetPrivacyPasswordActivity(Fragment fragment, int requestCode) {
        Intent intent = new Intent();
        intent.setPackage("com.xiaomi.privacypassword");
        intent.setAction("android.app.action.PRIVACY_PASSWORD_SET_NEW_PASSWORD");
        intent.putExtra("android.intent.extra.shortcut.NAME", fragment.getActivity().getPackageName());
        fragment.startActivityForResult(intent, requestCode);
    }

    public void startAuthenticatePasswordActivity(Fragment fragment, int requestCode) {
        Intent intent = new Intent();
        intent.setPackage("com.xiaomi.privacypassword");
        intent.setAction("android.app.action.PRIVACY_PASSWORD_CONFIRM_PASSWORD");
        intent.putExtra("android.intent.extra.shortcut.NAME", fragment.getActivity().getPackageName());
        fragment.startActivityForResult(intent, requestCode);
    }

    public void confirmPrivateGalleryPassword(Fragment fragment, int requestCode) {
    }

    public void startAuthenticatePasswordActivity(Activity activity, int requestCode) {
        Intent intent = new Intent();
        intent.setPackage("com.xiaomi.privacypassword");
        intent.setAction("android.app.action.PRIVACY_PASSWORD_CONFIRM_PASSWORD");
        intent.putExtra("android.intent.extra.shortcut.NAME", activity.getPackageName());
        activity.startActivityForResult(intent, requestCode);
    }
}
