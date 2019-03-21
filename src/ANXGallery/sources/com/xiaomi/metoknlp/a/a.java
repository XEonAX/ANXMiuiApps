package com.xiaomi.metoknlp.a;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.Field;

/* compiled from: NLPBuild */
public class a {
    private static boolean DEBUG = false;
    private static String TAG = "NLPBuild";
    private static String k = Build.BRAND;
    private static String l = Build.TYPE;
    private static Class m;
    private static Field n;
    private static Field o;
    private static Field p;
    private static Field q;

    static {
        boolean z = false;
        try {
            m = Class.forName("miui.os.Build");
            n = m.getField("IS_CTA_BUILD");
            o = m.getField("IS_ALPHA_BUILD");
            p = m.getField("IS_DEVELOPMENT_VERSION");
            q = m.getField("IS_STABLE_VERSION");
        } catch (ClassNotFoundException e) {
            z = true;
        } catch (NoSuchFieldException e2) {
            z = true;
        } catch (Exception e3) {
            z = true;
        }
        if (z) {
            m = null;
            n = null;
            o = null;
            p = null;
            q = null;
        }
    }

    public static boolean q() {
        if (DEBUG) {
            Log.d(TAG, "brand=" + k);
        }
        if (k == null || !k.equalsIgnoreCase("xiaomi")) {
            return false;
        }
        return true;
    }

    public static String r() {
        return "3rdROM-" + l;
    }

    public static boolean s() {
        if (!(!q() || m == null || o == null)) {
            try {
                boolean z = o.getBoolean(m);
                if (!DEBUG) {
                    return z;
                }
                Log.d(TAG, "is alpha version=" + z);
                return z;
            } catch (IllegalAccessException e) {
            }
        }
        return false;
    }

    public static boolean t() {
        if (!(!q() || m == null || p == null)) {
            try {
                boolean z = p.getBoolean(m);
                if (!DEBUG) {
                    return z;
                }
                Log.d(TAG, "is dev version=" + z);
                return z;
            } catch (IllegalAccessException e) {
            }
        }
        return false;
    }

    public static boolean u() {
        if (!(!q() || m == null || q == null)) {
            try {
                boolean z = q.getBoolean(m);
                if (!DEBUG) {
                    return z;
                }
                Log.d(TAG, "is stable version=" + z);
                return z;
            } catch (IllegalAccessException e) {
            }
        }
        return false;
    }
}
