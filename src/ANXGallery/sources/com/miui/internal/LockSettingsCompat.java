package com.miui.internal;

import android.security.ChooseLockSettingsHelper;

public class LockSettingsCompat {
    public static void setPrivateGalleryEnabled(ChooseLockSettingsHelper helper, boolean enabled) {
        helper.setPrivateGalleryEnabled(enabled);
    }
}
