package com.miui.privacy;

import android.app.Activity;
import android.security.ChooseLockSettingsHelper;
import com.miui.internal.LockSettingsCompat;

class MiuiWrapper implements IPrivacyWrapper {
    private ChooseLockSettingsHelper mHelper;

    public MiuiWrapper(Activity activity) {
        this.mHelper = new ChooseLockSettingsHelper(activity, 2);
    }

    public boolean isPrivacyPasswordEnabled() {
        return this.mHelper.isPrivacyPasswordEnabled();
    }

    public boolean isPrivateGalleryEnabled() {
        return this.mHelper.isPrivateGalleryEnabled();
    }

    public void setPrivateGalleryEnabled(boolean enabled) {
        LockSettingsCompat.setPrivateGalleryEnabled(this.mHelper, enabled);
    }
}
