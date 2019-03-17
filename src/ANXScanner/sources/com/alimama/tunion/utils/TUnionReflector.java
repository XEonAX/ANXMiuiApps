package com.alimama.tunion.utils;

import android.text.TextUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class TUnionReflector {
    public static String LOG_TITLE_REFLECTOR = "Reflector";

    public static boolean isExistClass(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (a(str) != null) {
                return true;
            }
            return false;
        } catch (Exception e) {
            TULog.e("Judge class exist failed,ex:" + e.toString(), new Object[0]);
            return false;
        }
    }

    public static Class<?> getClass(String str) {
        Class<?> cls = null;
        if (TextUtils.isEmpty(str)) {
            return cls;
        }
        try {
            return a(str);
        } catch (Exception e) {
            TULog.e("Get class failed,ex:" + e.toString(), new Object[0]);
            return cls;
        }
    }

    public static Object getCallbackImp(String str, InvocationHandler invocationHandler) {
        try {
            if (TextUtils.isEmpty(str) || invocationHandler == null) {
                return null;
            }
            Class cls = getClass(str);
            if (cls == null) {
                return null;
            }
            return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler);
        } catch (Exception e) {
            TULog.e("Get getCallbackImp failed,ex:" + e.toString(), new Object[0]);
            return null;
        }
    }

    public static Object getRefClassObj(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Class a = a(str);
            Constructor declaredConstructor = a != null ? a.getDeclaredConstructor(new Class[0]) : null;
            if (declaredConstructor == null) {
                return null;
            }
            declaredConstructor.setAccessible(true);
            return declaredConstructor.newInstance(new Object[0]);
        } catch (Exception e) {
            TULog.e("Get class object failed,ex:" + e.toString(), new Object[0]);
            return null;
        }
    }

    public static Method getStaticMethod(String str, String str2, Class<?>[] clsArr) {
        if (!(TextUtils.isEmpty(str) || TextUtils.isEmpty(str2))) {
            try {
                return a(str).getMethod(str2, clsArr);
            } catch (Exception e) {
                TULog.e("Get class method failed,ex:" + e.toString(), new Object[0]);
            }
        }
        return null;
    }

    public static Method getRefMethod(Object obj, String str, Class<?>[] clsArr) {
        if (!(obj == null || TextUtils.isEmpty(str))) {
            try {
                return obj.getClass().getDeclaredMethod(str, clsArr);
            } catch (Exception e) {
                TULog.e("Get class method failed,ex:" + e.toString(), new Object[0]);
            }
        }
        return null;
    }

    public static void doVoid(Object obj, Method method, Object[] objArr) {
        if (method != null) {
            try {
                method.invoke(obj, objArr);
            } catch (Exception e) {
                TULog.e("Do void method failed,ex:" + e.toString(), new Object[0]);
            }
        }
    }

    public static boolean doBoolean(Object obj, Method method, Object[] objArr) {
        if (method != null) {
            try {
                return ((Boolean) method.invoke(obj, objArr)).booleanValue();
            } catch (Exception e) {
                TULog.e("Do boolean method failed,ex:" + e.toString(), new Object[0]);
            }
        }
        return false;
    }

    public static Object doObject(Object obj, Method method, Object[] objArr) {
        if (method != null) {
            try {
                return method.invoke(obj, objArr);
            } catch (Exception e) {
                TULog.e("Do Object method failed,ex:" + e.toString(), new Object[0]);
            }
        }
        return null;
    }

    public static String doString(Object obj, Method method, Object[] objArr) {
        if (!(method == null || obj == null)) {
            try {
                return (String) method.invoke(obj, objArr);
            } catch (Exception e) {
                TULog.e(LOG_TITLE_REFLECTOR, "Do String method failed,ex:" + e.toString());
            }
        }
        return "";
    }

    private static Class<?> a(String str) throws ClassNotFoundException {
        return getClass(str);
    }
}
