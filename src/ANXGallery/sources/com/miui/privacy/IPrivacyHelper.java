package com.miui.privacy;

import android.app.Activity;
import android.app.Fragment;

interface IPrivacyHelper {
    void confirmPrivateGalleryPassword(Fragment fragment, int i);

    void startAuthenticatePasswordActivity(Activity activity, int i);

    void startAuthenticatePasswordActivity(Fragment fragment, int i);

    void startSetPrivacyPasswordActivity(Fragment fragment, int i);
}
