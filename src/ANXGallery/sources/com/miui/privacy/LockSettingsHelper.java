package com.miui.privacy;

import android.app.Activity;
import android.app.Fragment;
import com.miui.core.SdkHelper;

public class LockSettingsHelper {
    private static final IPrivacyHelper IMPL = (SdkHelper.IS_MIUI ? new MiuiHelper() : new XmsHelper());
    private final IPrivacyWrapper mImpl;

    public static void startSetPrivacyPasswordActivity(Fragment fragment, int requestCode) {
        IMPL.startSetPrivacyPasswordActivity(fragment, requestCode);
    }

    public static void startAuthenticatePasswordActivity(Fragment fragment, int requestCode) {
        IMPL.startAuthenticatePasswordActivity(fragment, requestCode);
    }

    public static void startAuthenticatePasswordActivity(Activity activity, int requestCode) {
        IMPL.startAuthenticatePasswordActivity(activity, requestCode);
    }

    public static void confirmPrivateGalleryPassword(Fragment fragment, int requestCode) {
        IMPL.confirmPrivateGalleryPassword(fragment, requestCode);
    }

    public LockSettingsHelper(Activity activity) {
        this.mImpl = SdkHelper.IS_MIUI ? new MiuiWrapper(activity) : new XmsWrapper(activity);
    }

    public boolean isPrivacyPasswordEnabled() {
        return this.mImpl.isPrivacyPasswordEnabled();
    }

    public boolean isPrivateGalleryEnabled() {
        return this.mImpl.isPrivateGalleryEnabled();
    }

    public void setPrivateGalleryEnabled(boolean enabled) {
        this.mImpl.setPrivateGalleryEnabled(enabled);
    }
}
