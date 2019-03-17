package android.support.v4.app;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class BundleCompat {

    static class BundleCompatBaseImpl {
        private static final String TAG = "BundleCompatBaseImpl";
        private static Method sGetIBinderMethod;
        private static boolean sGetIBinderMethodFetched;
        private static Method sPutIBinderMethod;
        private static boolean sPutIBinderMethodFetched;

        BundleCompatBaseImpl() {
        }

        public static IBinder getBinder(Bundle bundle, String key) {
            Exception e;
            if (!sGetIBinderMethodFetched) {
                try {
                    sGetIBinderMethod = Bundle.class.getMethod("getIBinder", new Class[]{String.class});
                    sGetIBinderMethod.setAccessible(true);
                } catch (NoSuchMethodException e2) {
                    Log.i(TAG, "Failed to retrieve getIBinder method", e2);
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
            Log.i(TAG, "Failed to invoke getIBinder via reflection", e);
            sGetIBinderMethod = null;
            return null;
        }

        public static void putBinder(Bundle bundle, String key, IBinder binder) {
            Exception e;
            if (!sPutIBinderMethodFetched) {
                try {
                    sPutIBinderMethod = Bundle.class.getMethod("putIBinder", new Class[]{String.class, IBinder.class});
                    sPutIBinderMethod.setAccessible(true);
                } catch (NoSuchMethodException e2) {
                    Log.i(TAG, "Failed to retrieve putIBinder method", e2);
                }
                sPutIBinderMethodFetched = true;
            }
            if (sPutIBinderMethod != null) {
                try {
                    sPutIBinderMethod.invoke(bundle, new Object[]{key, binder});
                    return;
                } catch (InvocationTargetException e3) {
                    e = e3;
                } catch (IllegalAccessException e4) {
                    e = e4;
                } catch (IllegalArgumentException e5) {
                    e = e5;
                }
            } else {
                return;
            }
            Log.i(TAG, "Failed to invoke putIBinder via reflection", e);
            sPutIBinderMethod = null;
        }
    }

    private BundleCompat() {
    }

    public static IBinder getBinder(Bundle bundle, String key) {
        if (VERSION.SDK_INT >= 18) {
            return bundle.getBinder(key);
        }
        return BundleCompatBaseImpl.getBinder(bundle, key);
    }

    public static void putBinder(Bundle bundle, String key, IBinder binder) {
        if (VERSION.SDK_INT >= 18) {
            bundle.putBinder(key, binder);
        } else {
            BundleCompatBaseImpl.putBinder(bundle, key, binder);
        }
    }
}
