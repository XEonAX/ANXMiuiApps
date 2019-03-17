package com.alibaba.baichuan.trade.common.utils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import mtopsdk.common.util.SymbolExpUtil;

public class ReflectionUtils {
    private static final Map<String, Class<?>> a = new HashMap();
    private static final Map<String, Class<?>> b = new HashMap();
    private static final Map<String, Method> c = new HashMap();
    private static final Map<String, Field> d = new HashMap();
    private static final String e = ReflectionUtils.class.getSimpleName();

    static {
        a.put("short", Short.TYPE);
        a.put("int", Integer.TYPE);
        a.put("long", Long.TYPE);
        a.put("double", Double.TYPE);
        a.put("float", Float.TYPE);
        a.put("char", Character.TYPE);
    }

    public static Field getField(Class<?> cls, String str) {
        if (cls == null) {
            return null;
        }
        try {
            String str2 = cls.getName() + str;
            Field field = (Field) d.get(str2);
            if (field != null) {
                return field;
            }
            field = cls.getDeclaredField(str);
            field.setAccessible(true);
            d.put(str2, field);
            return field;
        } catch (Exception e) {
            return getField(cls.getSuperclass(), str);
        }
    }

    public static Object getFieldValue(Object obj, String str) {
        if (obj == null) {
            return null;
        }
        String str2 = obj.getClass().getName() + str;
        try {
            Field field = (Field) d.get(str2);
            if (field == null) {
                field = obj.getClass().getDeclaredField(str);
                field.setAccessible(true);
                d.put(str2, field);
            }
            return field.get(obj);
        } catch (Exception e) {
            return getField(obj.getClass().getSuperclass(), str);
        }
    }

    public static Method getMethod(Class<?> cls, String str, Class<?>... clsArr) {
        if (cls == null) {
            return null;
        }
        try {
            StringBuffer stringBuffer = new StringBuffer();
            if (clsArr.length > 0) {
                for (Class name : clsArr) {
                    stringBuffer.append(name.getName());
                }
            }
            String str2 = cls.getName() + str + stringBuffer.toString();
            Method method = (Method) c.get(str2);
            if (method != null) {
                return method;
            }
            method = cls.getDeclaredMethod(str, clsArr);
            method.setAccessible(true);
            c.put(str2, method);
            return method;
        } catch (Exception e) {
            return getMethod(cls.getSuperclass(), str, new Class[0]);
        }
    }

    public static Object invoke(String str, String str2, String[] strArr, Object obj, Object[] objArr) {
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
            method = (strArr == null || strArr.length == 0) ? cls2.getMethod(str2, new Class[0]) : cls2.getMethod(str2, toClasses(strArr));
            if (method != null) {
                c.put(append2, method);
                return method.invoke(obj, objArr);
            }
            return null;
        } catch (Exception e) {
            AlibcLogger.e(e, "Fail to invoke the " + str + SymbolExpUtil.SYMBOL_DOT + str2 + ", the error is " + e.getMessage());
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
            } catch (Exception e) {
                AlibcLogger.e(e, "Fail to create the instance of type " + (cls != null ? cls.getName() : null) + ", the error is " + e.getMessage());
                return null;
            }
        }
        return cls.newInstance();
    }

    public static Object newInstance(String str, String[] strArr, Object[] objArr) {
        try {
            return newInstance(Class.forName(str), toClasses(strArr), objArr);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            AlibcLogger.e(e, "Fail to create the instance of type " + str + ", the error is " + e2.getMessage());
            return null;
        }
    }

    public static void set(Object obj, String str, Object obj2) {
        try {
            Field field = (Field) d.get(obj.getClass().getName() + str);
            if (field == null) {
                field = obj.getClass().getField(str);
                field.setAccessible(true);
                d.put(obj.getClass().getName() + str, field);
            }
            field.set(obj, obj2);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        }
    }

    public static Class<?>[] toClasses(String[] strArr) {
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
