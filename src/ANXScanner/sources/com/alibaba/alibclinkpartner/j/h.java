package com.alibaba.alibclinkpartner.j;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

public class h {
    private static final Map<String, Class<?>> a = new HashMap();
    private static final Map<String, Class<?>> b = new HashMap();
    private static final Map<String, Method> c = new HashMap();
    private static final Map<String, Field> d = new HashMap();
    private static final String e = h.class.getSimpleName();

    static {
        a.put("short", Short.TYPE);
        a.put("int", Integer.TYPE);
        a.put("long", Long.TYPE);
        a.put("double", Double.TYPE);
        a.put("float", Float.TYPE);
        a.put("char", Character.TYPE);
    }

    public static <T> T a(Class<T> cls, Class<?>[] clsArr, Object[] objArr) {
        if (clsArr != null) {
            try {
                if (clsArr.length != 0) {
                    return cls.getConstructor(clsArr).newInstance(objArr);
                }
            } catch (Exception e) {
                e.a("ALPReflectionUtils", "newInstance", "reflection error , errmsg =" + e.toString());
                return null;
            }
        }
        return cls.newInstance();
    }

    public static Object a(String str, String str2, String[] strArr, Object obj, Object[] objArr) {
        try {
            Class cls = (Class) b.get(str);
            if (cls == null) {
                cls = Class.forName(str);
                b.put(str, cls);
            }
            Class cls2 = cls;
            StringBuffer stringBuffer = new StringBuffer();
            if (strArr != null) {
                for (String append : strArr) {
                    stringBuffer.append(append);
                }
            }
            String append2 = str + str2 + stringBuffer.toString();
            Method method = (Method) c.get(append2);
            if (method != null) {
                return method.invoke(obj, objArr);
            }
            method = (strArr == null || strArr.length == 0) ? cls2.getMethod(str2, new Class[0]) : cls2.getMethod(str2, a(strArr));
            if (method != null) {
                c.put(append2, method);
                return method.invoke(obj, objArr);
            }
            return null;
        } catch (Exception e) {
            e.a("ALPReflectionUtils", "invoke", "reflection error , errmsg =" + e.toString());
        }
    }

    public static Object a(String str, String[] strArr, Object[] objArr) {
        try {
            return a(Class.forName(str), a(strArr), objArr);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            e.a("ALPReflectionUtils", "newInstance", "reflection error , errmsg =" + e2.toString());
            return null;
        }
    }

    private static Class<?>[] a(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        Class<?>[] clsArr = new Class[strArr.length];
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            if (str.length() < 7) {
                clsArr[i] = (Class) a.get(str);
            }
            if (clsArr[i] == null) {
                if ("boolean".equals(str)) {
                    clsArr[i] = Boolean.TYPE;
                } else {
                    clsArr[i] = Class.forName(str);
                }
            }
        }
        return clsArr;
    }
}
