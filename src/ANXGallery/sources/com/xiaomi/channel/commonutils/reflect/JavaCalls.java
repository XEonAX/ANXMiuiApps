package com.xiaomi.channel.commonutils.reflect;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

public class JavaCalls {
    private static final Map<Class<?>, Class<?>> PRIMITIVE_MAP = new HashMap();

    public static class JavaParam<T> {
        public final Class<? extends T> clazz;
        public final T obj;
    }

    static {
        PRIMITIVE_MAP.put(Boolean.class, Boolean.TYPE);
        PRIMITIVE_MAP.put(Byte.class, Byte.TYPE);
        PRIMITIVE_MAP.put(Character.class, Character.TYPE);
        PRIMITIVE_MAP.put(Short.class, Short.TYPE);
        PRIMITIVE_MAP.put(Integer.class, Integer.TYPE);
        PRIMITIVE_MAP.put(Float.class, Float.TYPE);
        PRIMITIVE_MAP.put(Long.class, Long.TYPE);
        PRIMITIVE_MAP.put(Double.class, Double.TYPE);
        PRIMITIVE_MAP.put(Boolean.TYPE, Boolean.TYPE);
        PRIMITIVE_MAP.put(Byte.TYPE, Byte.TYPE);
        PRIMITIVE_MAP.put(Character.TYPE, Character.TYPE);
        PRIMITIVE_MAP.put(Short.TYPE, Short.TYPE);
        PRIMITIVE_MAP.put(Integer.TYPE, Integer.TYPE);
        PRIMITIVE_MAP.put(Float.TYPE, Float.TYPE);
        PRIMITIVE_MAP.put(Long.TYPE, Long.TYPE);
        PRIMITIVE_MAP.put(Double.TYPE, Double.TYPE);
    }

    public static <T> T getField(Object targetInstance, String fieldName) {
        try {
            return getFieldOrThrow(targetInstance.getClass(), targetInstance, fieldName);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public static <T> T getStaticField(Class<? extends Object> cls, String fieldName) {
        T t = null;
        try {
            return getFieldOrThrow(cls, null, fieldName);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
            return t;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return t;
        }
    }

    public static <T> T getStaticField(String className, String fieldName) {
        T t = null;
        try {
            return getFieldOrThrow(Class.forName(className), null, fieldName);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
            return t;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return t;
        } catch (ClassNotFoundException e3) {
            e3.printStackTrace();
            return t;
        }
    }

    public static <T> T getFieldOrThrow(Class<? extends Object> cls, Object targetInstance, String fieldName) throws NoSuchFieldException, IllegalAccessException {
        Field f = null;
        while (f == null) {
            try {
                f = cls.getDeclaredField(fieldName);
                f.setAccessible(true);
                continue;
            } catch (NoSuchFieldException e) {
                cls = cls.getSuperclass();
                continue;
            }
            if (cls == null) {
                throw new NoSuchFieldException();
            }
        }
        f.setAccessible(true);
        return f.get(targetInstance);
    }

    public static <T> T callMethod(Object targetInstance, String methodName, Object... args) {
        try {
            return callMethodOrThrow(targetInstance, methodName, args);
        } catch (Exception e) {
            Log.w("JavaCalls", "Meet exception when call Method '" + methodName + "' in " + targetInstance, e);
            return null;
        }
    }

    public static <T> T callMethodOrThrow(Object targetInstance, String methodName, Object... args) throws SecurityException, NoSuchMethodException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        return getDeclaredMethod(targetInstance.getClass(), methodName, getParameterTypes(args)).invoke(targetInstance, getParameters(args));
    }

    public static <T> T callStaticMethod(String className, String methodName, Object... args) {
        try {
            return callStaticMethodOrThrow(Class.forName(className), methodName, args);
        } catch (Exception e) {
            Log.w("JavaCalls", "Meet exception when call Method '" + methodName + "' in " + className, e);
            return null;
        }
    }

    private static Method getDeclaredMethod(Class<?> clazz, String name, Class<?>... parameterTypes) throws NoSuchMethodException, SecurityException {
        Method method = findMethodByName(clazz.getDeclaredMethods(), name, parameterTypes);
        if (method != null) {
            method.setAccessible(true);
            return method;
        } else if (clazz.getSuperclass() != null) {
            return getDeclaredMethod(clazz.getSuperclass(), name, parameterTypes);
        } else {
            throw new NoSuchMethodException();
        }
    }

    private static Method findMethodByName(Method[] list, String name, Class<?>[] parameterTypes) {
        if (name == null) {
            throw new NullPointerException("Method name must not be null.");
        }
        for (Method method : list) {
            if (method.getName().equals(name) && compareClassLists(method.getParameterTypes(), parameterTypes)) {
                return method;
            }
        }
        return null;
    }

    private static boolean compareClassLists(Class<?>[] a, Class<?>[] b) {
        if (a == null) {
            boolean z;
            if (b == null || b.length == 0) {
                z = true;
            } else {
                z = false;
            }
            return z;
        } else if (b == null) {
            if (a.length != 0) {
                return false;
            }
            return true;
        } else if (a.length != b.length) {
            return false;
        } else {
            int i = 0;
            while (i < a.length) {
                if (b[i] != null && !a[i].isAssignableFrom(b[i]) && (!PRIMITIVE_MAP.containsKey(a[i]) || !((Class) PRIMITIVE_MAP.get(a[i])).equals(PRIMITIVE_MAP.get(b[i])))) {
                    return false;
                }
                i++;
            }
            return true;
        }
    }

    public static <T> T callStaticMethodOrThrow(Class<?> clazz, String methodName, Object... args) throws SecurityException, NoSuchMethodException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        return getDeclaredMethod(clazz, methodName, getParameterTypes(args)).invoke(null, getParameters(args));
    }

    private static Class<?>[] getParameterTypes(Object... args) {
        Class<?>[] parameterTypes = null;
        if (args != null && args.length > 0) {
            parameterTypes = new Class[args.length];
            for (int i = 0; i < args.length; i++) {
                Object param = args[i];
                if (param == null || !(param instanceof JavaParam)) {
                    parameterTypes[i] = param == null ? null : param.getClass();
                } else {
                    parameterTypes[i] = ((JavaParam) param).clazz;
                }
            }
        }
        return parameterTypes;
    }

    private static Object[] getParameters(Object... args) {
        Object[] parameters = null;
        if (args != null && args.length > 0) {
            parameters = new Object[args.length];
            for (int i = 0; i < args.length; i++) {
                Object param = args[i];
                if (param == null || !(param instanceof JavaParam)) {
                    parameters[i] = param;
                } else {
                    parameters[i] = ((JavaParam) param).obj;
                }
            }
        }
        return parameters;
    }
}
