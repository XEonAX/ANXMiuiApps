package com.alibaba.wireless.security.framework.utils;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import mtopsdk.common.util.SymbolExpUtil;

public class d {
    private final Object a;
    private final boolean b = false;

    private static class a {
        private a() {
        }
    }

    private d(Object obj) {
        this.a = obj;
    }

    public static d a(Object obj) {
        return new d(obj);
    }

    private static d a(Method method, Object obj, Object... objArr) throws e {
        try {
            a((AccessibleObject) method);
            if (method.getReturnType() != Void.TYPE) {
                return a(method.invoke(obj, objArr));
            }
            method.invoke(obj, objArr);
            return a(obj);
        } catch (Throwable e) {
            throw new e(e);
        }
    }

    public static Class<?> a(Class<?> cls) {
        return cls == null ? null : cls.isPrimitive() ? Boolean.TYPE == cls ? Boolean.class : Integer.TYPE == cls ? Integer.class : Long.TYPE == cls ? Long.class : Short.TYPE == cls ? Short.class : Byte.TYPE == cls ? Byte.class : Double.TYPE == cls ? Double.class : Float.TYPE == cls ? Float.class : Character.TYPE == cls ? Character.class : Void.TYPE == cls ? Void.class : cls : cls;
    }

    public static <T extends AccessibleObject> T a(T t) {
        if (t == null) {
            return null;
        }
        if (t instanceof Member) {
            Member member = (Member) t;
            if (Modifier.isPublic(member.getModifiers()) && Modifier.isPublic(member.getDeclaringClass().getModifiers())) {
                return t;
            }
        }
        if (t.isAccessible()) {
            return t;
        }
        t.setAccessible(true);
        return t;
    }

    private Method a(String str, Class<?>[] clsArr) throws NoSuchMethodException {
        Class b = b();
        try {
            return b.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            do {
                try {
                    return b.getDeclaredMethod(str, clsArr);
                } catch (NoSuchMethodException e2) {
                    b = b.getSuperclass();
                    if (b != null) {
                        throw new NoSuchMethodException();
                    }
                }
            } while (b != null);
            throw new NoSuchMethodException();
        }
    }

    private boolean a(Method method, String str, Class<?>[] clsArr) {
        return method.getName().equals(str) && a(method.getParameterTypes(), (Class[]) clsArr);
    }

    private boolean a(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (clsArr.length != clsArr2.length) {
            return false;
        }
        int i = 0;
        while (i < clsArr2.length) {
            if (clsArr2[i] != a.class && !a(clsArr[i]).isAssignableFrom(a(clsArr2[i]))) {
                return false;
            }
            i++;
        }
        return true;
    }

    private static Class<?>[] a(Object... objArr) {
        int i = 0;
        if (objArr == null) {
            return new Class[0];
        }
        Class<?>[] clsArr = new Class[objArr.length];
        while (i < objArr.length) {
            Object obj = objArr[i];
            clsArr[i] = obj == null ? a.class : obj.getClass();
            i++;
        }
        return clsArr;
    }

    private Method b(String str, Class<?>[] clsArr) throws NoSuchMethodException {
        Class b = b();
        for (Method method : b.getMethods()) {
            if (a(method, str, (Class[]) clsArr)) {
                return method;
            }
        }
        do {
            for (Method method2 : b.getDeclaredMethods()) {
                if (a(method2, str, (Class[]) clsArr)) {
                    return method2;
                }
            }
            b = b.getSuperclass();
        } while (b != null);
        throw new NoSuchMethodException("No similar method " + str + " with params " + Arrays.toString(clsArr) + " could be found on type " + b() + SymbolExpUtil.SYMBOL_DOT);
    }

    public d a(String str, Object... objArr) throws e {
        Class[] a = a(objArr);
        try {
            return a(a(str, a), this.a, objArr);
        } catch (NoSuchMethodException e) {
            try {
                return a(b(str, a), this.a, objArr);
            } catch (Throwable e2) {
                throw new e(e2);
            }
        }
    }

    public <T> T a() {
        return this.a;
    }

    public Class<?> b() {
        return this.b ? (Class) this.a : this.a.getClass();
    }

    public boolean equals(Object obj) {
        return obj instanceof d ? this.a.equals(((d) obj).a()) : false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a.toString();
    }
}
