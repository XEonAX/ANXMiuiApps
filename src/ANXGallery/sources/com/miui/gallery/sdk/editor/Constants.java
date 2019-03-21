package com.miui.gallery.sdk.editor;

import miui.external.SdkHelper;

public interface Constants {
    public static final String EXTRA_IS_LONG_SCREENSHOT = (SdkHelper.isMiuiSystem() ? "IsLongScreenshot" : "IsLongScreenshot");
    public static final String EXTRA_IS_SCREENSHOT = (SdkHelper.isMiuiSystem() ? "IsScreenshot" : "IsScreenshot");
}
