package com.miui.gallery.util;

import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;

public class FeatureUtil {
    public static boolean isSupportBackupOnlyWifi() {
        return CloudControlStrategyHelper.getSyncStrategy().isSupportBackupOnlyWifi();
    }
}
