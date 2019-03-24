package com.miui.internal.component.module;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexClassLoader;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Collections;

public class ModuleClassLoader {
    private static final String TAG = "ModuleClassLoader";
    private static final String dA = "dexElements";
    private static final String dB = "nativeLibraryPathElements";
    private static final String dx = "dalvik.system.DexPathList";
    private static final String dy = "dalvik.system.DexPathList$Element";
    private static final String dz = "dalvik.system.DexPathList$NativeLibraryElement";

    public static boolean load(String str, String str2, String str3, ClassLoader classLoader) {
        return a(str, str2, str3, classLoader, null);
    }

    static boolean a(String str, String str2, String str3, ClassLoader classLoader, Context context) {
        if (str == null && (str3 == null || context == null)) {
            return false;
        }
        try {
            String str4;
            Object a = a(classLoader);
            if (str != null) {
                str4 = str;
            } else if (VERSION.SDK_INT < 23) {
                a(a, str3);
                return true;
            } else {
                str4 = context.getApplicationInfo().sourceDir;
                str2 = null;
            }
            if (VERSION.SDK_INT < 28) {
                ClassLoader pathClassLoader;
                if (str2 == null) {
                    pathClassLoader = new PathClassLoader(str4, str3, classLoader.getParent());
                } else {
                    pathClassLoader = new DexClassLoader(str4, str2, str3, classLoader.getParent());
                }
                Object a2 = a(pathClassLoader);
                if (str != null) {
                    a(a, a2);
                }
                if (str3 != null) {
                    a(a, a2, str3);
                }
            } else {
                if (str4 != null) {
                    a(classLoader, str4);
                }
                if (str3 != null) {
                    b(classLoader, str3);
                }
            }
            return true;
        } catch (Throwable e) {
            Log.e(TAG, "Illegal arguments", e);
            return false;
        } catch (Throwable e2) {
            Log.e(TAG, "Illegal access", e2);
            return false;
        } catch (Throwable e22) {
            Log.e(TAG, "No class found", e22);
            return false;
        } catch (Throwable e222) {
            Log.e(TAG, "No field found", e222);
            return false;
        } catch (Throwable e2222) {
            Log.e(TAG, "no method found", e2222);
            return false;
        } catch (Throwable e22222) {
            Log.e(TAG, "Invocation target", e22222);
            return false;
        }
    }

    private static Object a(ClassLoader classLoader) throws NoSuchFieldException {
        if (classLoader instanceof BaseDexClassLoader) {
            Field[] declaredFields = BaseDexClassLoader.class.getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            while (i < length) {
                Field field = declaredFields[i];
                if (dx.equals(field.getType().getName())) {
                    field.setAccessible(true);
                    try {
                        return field.get(classLoader);
                    } catch (IllegalArgumentException e) {
                    } catch (IllegalAccessException e2) {
                    }
                } else {
                    i++;
                }
            }
        }
        throw new NoSuchFieldException("dexPathList field not found.");
    }

    private static void a(Object obj, Object obj2) throws NoSuchFieldException, IllegalAccessException, ClassNotFoundException {
        a(obj, obj2, dA, dy);
    }

    private static void a(Object obj, Object obj2, String str) throws NoSuchFieldException, IllegalAccessException, ClassNotFoundException {
        if (VERSION.SDK_INT >= 26) {
            a(obj, obj2, dB, dz);
        } else if (VERSION.SDK_INT >= 23) {
            a(obj, obj2, dB, dy);
        } else {
            a(obj, str);
        }
    }

    private static void a(Object obj, Object obj2, String str, String str2) throws NoSuchFieldException, IllegalAccessException, ClassNotFoundException {
        Object[] objArr = (Object[]) a(obj2, str, str2).get(obj2);
        Field a = a(obj, str, str2);
        Object[] objArr2 = (Object[]) a.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(Class.forName(str2), objArr2.length + 1);
        objArr3[0] = objArr[0];
        System.arraycopy(objArr2, 0, objArr3, 1, objArr2.length);
        a.set(obj, objArr3);
    }

    private static Field a(Object obj, String str, String str2) throws NoSuchFieldException {
        for (Field field : obj.getClass().getDeclaredFields()) {
            if (field.getName().equals(str)) {
                Class type = field.getType();
                if (type.isArray() && str2.equals(type.getComponentType().getName())) {
                    field.setAccessible(true);
                    return field;
                }
            }
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(" field not found.");
        throw new NoSuchFieldException(stringBuilder.toString());
    }

    private static void a(Object obj, String str) throws NoSuchFieldException, IllegalAccessException {
        Field a = a(obj);
        File[] fileArr = (File[]) a.get(obj);
        Object obj2 = new File[(fileArr.length + 1)];
        obj2[0] = new File(str);
        System.arraycopy(fileArr, 0, obj2, 1, fileArr.length);
        a.set(obj, obj2);
    }

    private static Field a(Object obj) throws NoSuchFieldException {
        for (Field field : obj.getClass().getDeclaredFields()) {
            Class type = field.getType();
            if (type.isArray() && type.getComponentType() == File.class) {
                field.setAccessible(true);
                return field;
            }
        }
        throw new NoSuchFieldException("nativeLibraryDirectories field not found.");
    }

    private static void a(ClassLoader classLoader, String str) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (classLoader instanceof BaseDexClassLoader) {
            Method method = Class.forName(classLoader.getClass().getName()).getMethod("addDexPath", new Class[]{String.class});
            method.setAccessible(true);
            method.invoke(classLoader, new Object[]{str});
            return;
        }
        throw new NoSuchMethodException("addDexPath method not found.");
    }

    private static void b(ClassLoader classLoader, String str) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (classLoader instanceof BaseDexClassLoader) {
            Method method = Class.forName(classLoader.getClass().getName()).getMethod("addNativePath", new Class[]{Collection.class});
            method.setAccessible(true);
            method.invoke(classLoader, new Object[]{Collections.singletonList(str)});
            return;
        }
        throw new NoSuchMethodException("addNativePath method not found.");
    }
}
