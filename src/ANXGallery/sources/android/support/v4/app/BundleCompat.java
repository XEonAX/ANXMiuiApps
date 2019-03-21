package android.support.v4.app;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class BundleCompat {

    static class BundleCompatBaseImpl {
        private static Method sGetIBinderMethod;
        private static boolean sGetIBinderMethodFetched;

        public static IBinder getBinder(Bundle bundle, String key) {
            Exception e;
            if (!sGetIBinderMethodFetched) {
                try {
                    sGetIBinderMethod = Bundle.class.getMethod("getIBinder", new Class[]{String.class});
                    sGetIBinderMethod.setAccessible(true);
                } catch (NoSuchMethodException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e2);
                }
                sGetIBinderMethodFetched = true;
            }
            if (sGetIBinderMethod != null) {
                try {
                    return (IBinder) sGetIBinderMethod.invoke(bundle, new Object[]{key});
                } catch (InvocationTargetException e3) {
                    e = e3;
                } catch (IllegalAccessException e4) {
                    e = e4;
                } catch (IllegalArgumentException e5) {
                    e = e5;
                }
            }
            return null;
            Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e);
            sGetIBinderMethod = null;
            return null;
        }
    }

    public static IBinder getBinder(Bundle bundle, String key) {
        if (VERSION.SDK_INT >= 18) {
            return bundle.getBinder(key);
        }
        return BundleCompatBaseImpl.getBinder(bundle, key);
    }
}
