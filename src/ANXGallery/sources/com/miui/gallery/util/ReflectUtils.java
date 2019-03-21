package com.miui.gallery.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class ReflectUtils {
    public static Object getInstance(String className, Object... params) {
        if (className == null || className.equals("")) {
            throw new IllegalArgumentException("className can not be null");
        }
        try {
            Class<?> c = Class.forName(className);
            Constructor constructor;
            if (params != null) {
                int plength = params.length;
                Class[] paramsTypes = new Class[plength];
                for (int i = 0; i < plength; i++) {
                    paramsTypes[i] = params[i].getClass();
                }
                constructor = c.getDeclaredConstructor(paramsTypes);
                constructor.setAccessible(true);
                return constructor.newInstance(params);
            }
            constructor = c.getDeclaredConstructor(new Class[0]);
            constructor.setAccessible(true);
            return constructor.newInstance(new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Object invoke(String className, Object instance, String methodName, Object... params) {
        if (className == null || className.equals("")) {
            throw new IllegalArgumentException("className can not be null");
        } else if (methodName == null || methodName.equals("")) {
            throw new IllegalArgumentException("methodNamecan not be null");
        } else {
            try {
                Class<?> c = Class.forName(className);
                Method method;
                if (params != null) {
                    int plength = params.length;
                    Class[] paramsTypes = new Class[plength];
                    for (int i = 0; i < plength; i++) {
                        paramsTypes[i] = params[i].getClass();
                    }
                    method = c.getDeclaredMethod(methodName, paramsTypes);
                    method.setAccessible(true);
                    return method.invoke(instance, params);
                }
                method = c.getDeclaredMethod(methodName, new Class[0]);
                method.setAccessible(true);
                return method.invoke(instance, new Object[0]);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    public static Object invokeMethod(Object instance, Method m, Object... params) {
        if (m == null) {
            throw new IllegalArgumentException("method can not be null");
        }
        m.setAccessible(true);
        try {
            return m.invoke(instance, params);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Object getField(String className, Object instance, String fieldName) {
        if (className == null || className.equals("")) {
            throw new IllegalArgumentException("className can not be null");
        } else if (fieldName == null || fieldName.equals("")) {
            throw new IllegalArgumentException("fieldName can not be null");
        } else {
            try {
                Field field = Class.forName(className).getDeclaredField(fieldName);
                field.setAccessible(true);
                return field.get(instance);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    public static Method getMethod(String className, String methodName, Class... paramsType) {
        if (className == null || className.equals("")) {
            throw new IllegalArgumentException("className can not be null");
        } else if (methodName == null || methodName.equals("")) {
            throw new IllegalArgumentException("methodName can not be null");
        } else {
            try {
                return Class.forName(className).getDeclaredMethod(methodName, paramsType);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }
}
