package com.alibaba.mtl.log.d;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ReflectUtils */
public final class o {
    public static Object a(Class cls, String str) {
        Object obj = null;
        try {
            Method declaredMethod = cls.getDeclaredMethod(str, new Class[0]);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(null, new Object[0]);
        } catch (SecurityException e) {
            e.printStackTrace();
            return obj;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            return obj;
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return obj;
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
            return obj;
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            return obj;
        }
    }

    public static Object a(Object obj, String str, Object[] objArr, Class... clsArr) {
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod(str, clsArr);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, objArr);
        } catch (SecurityException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
        }
        return null;
    }

    public static Object a(Object obj, String str) {
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod(str, new Class[0]);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, new Object[0]);
        } catch (SecurityException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
        }
        return null;
    }

    public static Object a(String str, String str2) {
        try {
            Class cls = Class.forName(str);
            if (cls != null) {
                return a(cls, str2);
            }
            return null;
        } catch (ClassNotFoundException e) {
            return null;
        }
    }
}
