package com.xiaomi.scanner.util;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ReflectUtil {
    private static final String TAG = "ReflectUtil";

    public static class ReflAgent {
        private Class mClass;
        private Object mObject;
        private Object mResult;

        private ReflAgent() {
        }

        public static ReflAgent getClass(String clsStr) {
            ReflAgent reflAgent = new ReflAgent();
            try {
                reflAgent.mClass = Class.forName(clsStr);
            } catch (ClassNotFoundException e) {
                Log.e(ReflectUtil.TAG, "getClass error", e);
            }
            return reflAgent;
        }

        public static ReflAgent getObject(Object obj) {
            ReflAgent reflAgent = new ReflAgent();
            if (obj != null) {
                reflAgent.mObject = obj;
                reflAgent.mClass = obj.getClass();
            }
            return reflAgent;
        }

        public ReflAgent callMethod(String method, Class<?>[] parameterTypes, Object... values) {
            if (this.mObject != null) {
                try {
                    this.mResult = ReflectUtil.callObjectMethod(this.mObject, method, parameterTypes, values);
                } catch (Exception e) {
                    Log.e(ReflectUtil.TAG, "callObjectMethod error", e);
                }
            }
            return this;
        }

        public ReflAgent callStaticMethod(String method, Class<?>[] parameterTypes, Object... values) {
            if (this.mClass != null) {
                try {
                    this.mResult = ReflectUtil.callStaticObjectMethod(this.mClass, method, parameterTypes, values);
                } catch (Exception e) {
                    Log.e(ReflectUtil.TAG, "callStaticObjectMethod error", e);
                }
            }
            return this;
        }

        public ReflAgent getStaticFiled(String field) {
            if (this.mClass != null) {
                try {
                    this.mResult = ReflectUtil.getStaticObjectField(this.mClass, field);
                } catch (Exception e) {
                    Log.e(ReflectUtil.TAG, "getStaticObjectField error", e);
                }
            }
            return this;
        }

        public ReflAgent getObjectFiled(String field) {
            if (this.mObject != null) {
                try {
                    this.mResult = ReflectUtil.getObjectField(this.mObject, field);
                } catch (Exception e) {
                    Log.e(ReflectUtil.TAG, "getObjectFiled error", e);
                }
            }
            return this;
        }

        public ReflAgent setResultToSelf() {
            this.mObject = this.mResult;
            this.mResult = null;
            return this;
        }

        public String stringResult() {
            if (this.mResult == null) {
                return null;
            }
            return this.mResult.toString();
        }

        public boolean booleanResult() {
            if (this.mResult == null) {
                return false;
            }
            return Boolean.parseBoolean(this.mResult.toString());
        }

        public int intResult() {
            int i = 0;
            if (this.mResult == null) {
                return i;
            }
            try {
                return Integer.parseInt(this.mResult.toString());
            } catch (NumberFormatException e) {
                Log.e(ReflectUtil.TAG, "intResult error", e);
                return i;
            }
        }

        public long longResult() {
            long j = 0;
            if (this.mResult == null) {
                return j;
            }
            try {
                return Long.parseLong(this.mResult.toString());
            } catch (NumberFormatException e) {
                Log.e(ReflectUtil.TAG, "longResult error", e);
                return j;
            }
        }

        public Object resultObject() {
            if (this.mResult == null) {
                return null;
            }
            return this.mResult;
        }
    }

    public static Object callObjectMethod(Object target, String method, Class<?>[] parameterTypes, Object... values) throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class<? extends Object> clazz = target.getClass();
        Method declaredMethod;
        if (parameterTypes == null) {
            declaredMethod = clazz.getDeclaredMethod(method, new Class[0]);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(target, new Object[0]);
        }
        declaredMethod = clazz.getDeclaredMethod(method, parameterTypes);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(target, values);
    }

    public static Object callObjectMethod(Class cls, Object target, String method, Class<?>[] parameterTypes, Object... values) throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method declaredMethod = cls.getDeclaredMethod(method, parameterTypes);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(target, values);
    }

    public static Object callObjectMethod(Object target, String method, Class<?> clazz, Class<?>[] parameterTypes, Object... values) throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method declaredMethod = clazz.getDeclaredMethod(method, parameterTypes);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(target, values);
    }

    public static Object callObjectMethod(Object target, String method) {
        Object obj = null;
        try {
            return callObjectMethod(target, method, null, null);
        } catch (Exception e) {
            Log.e(TAG, "callObjectMethod error", e);
            return obj;
        }
    }

    public static Object callStaticObjectMethod(Class<?> clazz, String method, Class<?>[] parameterTypes, Object... values) throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method declaredMethod = clazz.getDeclaredMethod(method, parameterTypes);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(null, values);
    }

    public static Object getObjectField(Object target, String field) throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException {
        Field declaredField = target.getClass().getDeclaredField(field);
        declaredField.setAccessible(true);
        return declaredField.get(target);
    }

    public static Object getStaticObjectField(Class<?> clazz, String field) throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException {
        Field declaredField = clazz.getDeclaredField(field);
        declaredField.setAccessible(true);
        return declaredField.get(field);
    }
}
