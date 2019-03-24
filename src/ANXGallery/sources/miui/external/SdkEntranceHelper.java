package miui.external;

import android.util.Log;
import com.miui.internal.util.PackageConstants;

/* compiled from: SdkConstants */
class SdkEntranceHelper implements SdkConstants {
    public static Class<?> getSdkEntrance() throws ClassNotFoundException {
        try {
            return Class.forName("miui.core.SdkManager");
        } catch (ClassNotFoundException e) {
            try {
                Class<?> clazz = Class.forName("com.miui.internal.core.SdkManager");
                Log.w(PackageConstants.LOG_TAG, "using legacy sdk");
                return clazz;
            } catch (ClassNotFoundException e1) {
                Log.e(PackageConstants.LOG_TAG, "no sdk found");
                throw e1;
            }
        }
    }
}
