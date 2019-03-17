package com.ali.auth.third.core.util;

import com.ali.auth.third.core.trace.SDKLogger;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import mtopsdk.common.util.SymbolExpUtil;

public class ReflectionUtils {
    private static final Map<String, Class<?>> a = new HashMap();
    private static final String b = ReflectionUtils.class.getSimpleName();

    static {
        a.put("short", Short.TYPE);
        a.put("int", Integer.TYPE);
        a.put("long", Long.TYPE);
        a.put("double", Double.TYPE);
        a.put("float", Float.TYPE);
        a.put("char", Character.TYPE);
        a.put("boolean", Boolean.TYPE);
    }

    public static Object invoke(String str, String str2, String[] strArr, Object obj, Object[] objArr) {
        try {
            Class cls = Class.forName(str);
            Method method = (strArr == null || strArr.length == 0) ? cls.getMethod(str2, new Class[0]) : cls.getMethod(str2, toClasses(strArr));
            return method.invoke(obj, objArr);
        } catch (Throwable e) {
            SDKLogger.e(b, "Fail to invoke the " + str + SymbolExpUtil.SYMBOL_DOT + str2 + ", the error is " + e.getMessage());
            throw new RuntimeException(e);
        }
    }

    public static Class<?> loadClassQuietly(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    public static <T> T newInstance(Class<T> cls, Class<?>[] clsArr, Object[] objArr) {
        if (clsArr != null) {
            try {
                if (clsArr.length != 0) {
                    return cls.getConstructor(clsArr).newInstance(objArr);
                }
            } catch (Throwable e) {
                SDKLogger.e(b, "Fail to create the instance of type " + cls.getName() + ", the error is " + e.getMessage());
                throw new RuntimeException(e);
            }
        }
        return cls.newInstance();
    }

    public static Object newInstance(String str, String[] strArr, Object[] objArr) {
        try {
            return newInstance(Class.forName(str), toClasses(strArr), objArr);
        } catch (RuntimeException e) {
            throw e;
        } catch (Throwable e2) {
            SDKLogger.e(b, "Fail to create the instance of type " + str + ", the error is " + e2.getMessage());
            throw new RuntimeException(e2);
        }
    }

    public static Class<?>[] toClasses(String[] strArr) throws Exception {
        if (strArr == null) {
            return null;
        }
        Class<?>[] clsArr = new Class[strArr.length];
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            if (str.length() < 8) {
                clsArr[i] = (Class) a.get(str);
            }
            if (clsArr[i] == null) {
                clsArr[i] = Class.forName(str);
            }
        }
        return clsArr;
    }
}
