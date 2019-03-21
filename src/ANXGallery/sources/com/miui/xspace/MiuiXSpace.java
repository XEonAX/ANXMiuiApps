package com.miui.xspace;

import android.content.ContentResolver;
import android.content.Context;
import android.util.Log;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class MiuiXSpace implements IXSpaceWrapper {
    MiuiXSpace() {
    }

    public boolean isXSpaceEnable(Context context) {
        try {
            return ((Boolean) invokeSafely(Class.forName("android.provider.MiuiSettings$Secure"), "getBoolean", new Class[]{ContentResolver.class, String.class, Boolean.TYPE}, context.getContentResolver(), "xspace_enabled", Boolean.valueOf(false))).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public File getXSpacePath() {
        try {
            return (File) invokeSafely(Class.forName("android.os.Environment$UserEnvironment").getDeclaredConstructor(new Class[]{Integer.TYPE}).newInstance(new Object[]{Integer.valueOf(999)}), "getExternalStorageDirectory", null, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static Method getDeclaredMethod(Object target, String methodName, Class<?>[] parameterTypes) {
        if (target instanceof Class) {
            try {
                return ((Class) target).getMethod(methodName, parameterTypes);
            } catch (Exception e) {
            }
        } else {
            Class<?> clazz = target.getClass();
            while (clazz != Object.class) {
                try {
                    return clazz.getDeclaredMethod(methodName, parameterTypes);
                } catch (Exception e2) {
                    clazz = clazz.getSuperclass();
                }
            }
            return null;
        }
    }

    private static Object invokeSafely(Object target, String methodName, Class<?>[] parameterTypes, Object... parameters) {
        try {
            Method method = getDeclaredMethod(target, methodName, parameterTypes);
            if (method != null) {
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                return method.invoke(target, parameters);
            }
        } catch (SecurityException e) {
            Log.e("MiuiXSpace", "", e);
        } catch (IllegalAccessException e2) {
            Log.e("MiuiXSpace", "", e2);
        } catch (IllegalArgumentException e3) {
            Log.e("MiuiXSpace", "", e3);
        } catch (InvocationTargetException e4) {
            Log.e("MiuiXSpace", "", e4);
        } catch (Exception e5) {
            Log.e("MiuiXSpace", "", e5);
        }
        return null;
    }
}
