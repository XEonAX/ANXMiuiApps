package com.miui.os;

import miui.util.FeatureParser;

public class FeatureHelper {
    public static boolean isPad() {
        return FeatureParser.getBoolean("is_pad", false);
    }

    public static boolean isXiaoMi() {
        return FeatureParser.getBoolean("is_xiaomi", false);
    }
}
