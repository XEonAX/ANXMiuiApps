package com.miui.os;

import miui.util.C0016FeatureParser;

public class FeatureHelper {
    public static boolean isPad() {
        return C0016FeatureParser.getBoolean("is_pad", false);
    }

    public static boolean isXiaoMi() {
        return C0016FeatureParser.getBoolean("is_xiaomi", false);
    }
}
