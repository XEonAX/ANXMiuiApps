package com.xiaomi.scanner.settings;

import android.content.Context;
import com.xiaomi.scanner.util.AppUtil;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.Util;

public class FeatureManager {
    public static boolean isCodeModuleAvailable() {
        return true;
    }

    public static boolean isShoppingModuleAvailable() {
        return !DeviceUtil.isInternationalBuild();
    }

    public static boolean isAmazonShoppingModuleAvailable(Context context) {
        return DeviceUtil.isInternationalBuild() && AppUtil.isPackageAvailable(context, Util.AMAZON_ASSISTANT_PACKAGE);
    }

    public static boolean isPaytmAvailable() {
        return DeviceUtil.isInternationalBuild() && DeviceUtil.checkRegion("IN");
    }

    public static boolean isTranslationModuleAvailable() {
        return !DeviceUtil.isInternationalBuild();
    }

    public static boolean isBusinessCardModuleAvailable() {
        return !DeviceUtil.isInternationalBuild();
    }

    public static boolean isStudyModuleAvailable() {
        return !DeviceUtil.isInternationalBuild();
    }

    public static boolean isDocumentModuleAvailable() {
        return true;
    }

    public static boolean isCaptureSoundEnabled() {
        return DeviceUtil.isInternationalBuild();
    }
}
