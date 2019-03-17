package com.alibaba.fastjson.util;

import com.alibaba.fastjson.asm.ClassReader;
import com.alibaba.fastjson.asm.TypeCollector;
import com.xiaomi.scanner.camera.exif.ExifInterface.GpsLatitudeRef;
import com.xiaomi.scanner.camera.exif.ExifInterface.GpsStatus;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

public class ASMUtils {
    public static final boolean IS_ANDROID = isAndroid(JAVA_VM_NAME);
    public static final String JAVA_VM_NAME = System.getProperty("java.vm.name");

    public static boolean isAndroid(String vmName) {
        if (vmName == null) {
            return false;
        }
        String lowerVMName = vmName.toLowerCase();
        if (lowerVMName.contains("dalvik") || lowerVMName.contains("lemur")) {
            return true;
        }
        return false;
    }

    public static String desc(Method method) {
        Class<?>[] types = method.getParameterTypes();
        StringBuilder buf = new StringBuilder((types.length + 1) << 4);
        buf.append('(');
        for (Class desc : types) {
            buf.append(desc(desc));
        }
        buf.append(')');
        buf.append(desc(method.getReturnType()));
        return buf.toString();
    }

    public static String desc(Class<?> returnType) {
        if (returnType.isPrimitive()) {
            return getPrimitiveLetter(returnType);
        }
        if (returnType.isArray()) {
            return "[" + desc(returnType.getComponentType());
        }
        return "L" + type(returnType) + ";";
    }

    public static String type(Class<?> parameterType) {
        if (parameterType.isArray()) {
            return "[" + desc(parameterType.getComponentType());
        }
        if (parameterType.isPrimitive()) {
            return getPrimitiveLetter(parameterType);
        }
        return parameterType.getName().replace('.', '/');
    }

    public static String getPrimitiveLetter(Class<?> type) {
        if (Integer.TYPE == type) {
            return "I";
        }
        if (Void.TYPE == type) {
            return GpsStatus.INTEROPERABILITY;
        }
        if (Boolean.TYPE == type) {
            return "Z";
        }
        if (Character.TYPE == type) {
            return "C";
        }
        if (Byte.TYPE == type) {
            return "B";
        }
        if (Short.TYPE == type) {
            return GpsLatitudeRef.SOUTH;
        }
        if (Float.TYPE == type) {
            return "F";
        }
        if (Long.TYPE == type) {
            return "J";
        }
        if (Double.TYPE == type) {
            return "D";
        }
        throw new IllegalStateException("Type: " + type.getCanonicalName() + " is not a primitive type");
    }

    public static Type getMethodType(Class<?> clazz, String methodName) {
        try {
            return clazz.getMethod(methodName, new Class[0]).getGenericReturnType();
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean checkName(String name) {
        for (int i = 0; i < name.length(); i++) {
            char c = name.charAt(i);
            if (c < 1 || c > 127 || c == '.') {
                return false;
            }
        }
        return true;
    }

    public static String[] lookupParameterNames(AccessibleObject methodOrCtor) {
        if (IS_ANDROID) {
            return new String[0];
        }
        Class<?>[] types;
        String name;
        Class<?> declaringClass;
        if (methodOrCtor instanceof Method) {
            Method method = (Method) methodOrCtor;
            types = method.getParameterTypes();
            name = method.getName();
            declaringClass = method.getDeclaringClass();
        } else {
            Constructor<?> constructor = (Constructor) methodOrCtor;
            types = constructor.getParameterTypes();
            declaringClass = constructor.getDeclaringClass();
            name = "<init>";
        }
        if (types.length == 0) {
            return new String[0];
        }
        ClassLoader classLoader = declaringClass.getClassLoader();
        if (classLoader == null) {
            classLoader = ClassLoader.getSystemClassLoader();
        }
        InputStream is = classLoader.getResourceAsStream(declaringClass.getName().replace('.', '/') + ".class");
        if (is == null) {
            return new String[0];
        }
        String[] parameterNamesForMethod;
        try {
            ClassReader reader = new ClassReader(is);
            TypeCollector visitor = new TypeCollector(name, types);
            reader.accept(visitor);
            parameterNamesForMethod = visitor.getParameterNamesForMethod();
            return parameterNamesForMethod;
        } catch (IOException e) {
            parameterNamesForMethod = new String[0];
            return parameterNamesForMethod;
        } finally {
            IOUtils.close(is);
        }
    }
}
