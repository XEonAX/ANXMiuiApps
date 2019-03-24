package com.miui.internal.util;

import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ResourcesUtils {
    private static Method jy;
    private static Constructor<AssetManager> jz;

    static {
        try {
            jy = AssetManager.class.getMethod("addAssetPath", new Class[]{String.class});
            jz = AssetManager.class.getConstructor(new Class[0]);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
    }

    private ResourcesUtils() {
    }

    public static Resources createResources(String... strArr) {
        return createResources(null, strArr);
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0040  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0040  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0040  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0040  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0040  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0040  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Resources createResources(Resources resources, String... strArr) {
        AssetManager assetManager;
        InstantiationException e;
        IllegalAccessException e2;
        InvocationTargetException e3;
        try {
            assetManager = (AssetManager) jz.newInstance(new Object[0]);
            try {
                for (Object obj : strArr) {
                    jy.invoke(assetManager, new Object[]{obj});
                }
            } catch (InstantiationException e4) {
                e = e4;
                e.printStackTrace();
                if (resources == null) {
                }
            } catch (IllegalAccessException e5) {
                e2 = e5;
                e2.printStackTrace();
                if (resources == null) {
                }
            } catch (InvocationTargetException e6) {
                e3 = e6;
                e3.printStackTrace();
                if (resources == null) {
                }
            }
        } catch (InstantiationException e7) {
            e = e7;
            assetManager = null;
            e.printStackTrace();
            if (resources == null) {
            }
        } catch (IllegalAccessException e8) {
            e2 = e8;
            assetManager = null;
            e2.printStackTrace();
            if (resources == null) {
            }
        } catch (InvocationTargetException e9) {
            e3 = e9;
            assetManager = null;
            e3.printStackTrace();
            if (resources == null) {
            }
        }
        if (resources == null) {
            return new Resources(assetManager, null, null);
        }
        return new Resources(assetManager, resources.getDisplayMetrics(), resources.getConfiguration());
    }
}
