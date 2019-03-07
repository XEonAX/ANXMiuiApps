package com.miui.screenrecorder.compat;

public class MiuiSettingsCompat {

    public static class System extends android.provider.SystemSettings.System {
        public static final String HAS_SCREENSHOT_SOUND = "has_screenshot_sound";
        public static final boolean HAS_SCREENSHOT_SOUND_DEFAULT = true;
    }
}
