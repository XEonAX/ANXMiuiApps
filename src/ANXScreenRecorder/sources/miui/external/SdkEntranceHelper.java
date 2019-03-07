package miui.external;

import android.util.Log;

/* compiled from: SdkConstants */
class SdkEntranceHelper implements SdkConstants {
    private static final String SDK_ENTRANCE_CLASS = "miui.core.SdkManager";
    private static final String SDK_ENTRANCE_FALLBACK_CLASS = "com.miui.internal.core.SdkManager";

    SdkEntranceHelper() {
    }

    public static Class<?> getSdkEntrance() throws ClassNotFoundException {
        try {
            return Class.forName(SDK_ENTRANCE_CLASS);
        } catch (ClassNotFoundException e) {
            try {
                Class<?> clazz = Class.forName(SDK_ENTRANCE_FALLBACK_CLASS);
                Log.w(SdkConstants.LOG_TAG, "using legacy sdk");
                return clazz;
            } catch (ClassNotFoundException e1) {
                Log.e(SdkConstants.LOG_TAG, "no sdk found");
                throw e1;
            }
        }
    }
}
