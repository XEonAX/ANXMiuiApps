package com.miui.gallery.video.editor.sdk;

import com.miui.core.SdkHelper;

public abstract class Build {
    public static boolean supportVideoEditor() {
        return !android.os.Build.DEVICE.equals("meri") && SdkHelper.IS_MIUI;
    }
}
