package miui.external;

import android.util.Log;

/* compiled from: SdkConstants */
class SdkEntranceHelper implements SdkConstants {
    public static Class<?> getSdkEntrance() throws ClassNotFoundException {
        try {
            return Class.forName("miui.core.SdkManager");
        } catch (ClassNotFoundException e) {
            try {
                Class<?> clazz = Class.forName("com.miui.internal.core.SdkManager");
                Log.w("miuisdk", "using legacy sdk");
                return clazz;
            } catch (ClassNotFoundException e1) {
                Log.e("miuisdk", "no sdk found");
                throw e1;
            }
        }
    }
}
