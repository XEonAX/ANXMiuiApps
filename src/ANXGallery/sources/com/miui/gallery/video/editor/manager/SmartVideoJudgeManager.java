package com.miui.gallery.video.editor.manager;

import android.os.Build;

public class SmartVideoJudgeManager {
    private static boolean sLoaded;
    private static final String[] sWhiteList = new String[]{"dipper", "ursa", "equuleus", "perseus", "sirius", "lavender", "cepheus", "violet", "onc", "grus"};

    static {
        int i = 0;
        sLoaded = false;
        String[] strArr = sWhiteList;
        int length = strArr.length;
        while (i < length) {
            if (Build.DEVICE.equals(strArr[i])) {
                sLoaded = true;
            }
            i++;
        }
    }

    public static boolean isAvailable() {
        return sLoaded;
    }
}
