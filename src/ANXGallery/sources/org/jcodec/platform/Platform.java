package org.jcodec.platform;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

public class Platform {
    private static final Map<Class, Class> boxed2primitive = new HashMap();

    static {
        boxed2primitive.put(Void.class, Void.TYPE);
        boxed2primitive.put(Byte.class, Byte.TYPE);
        boxed2primitive.put(Short.class, Short.TYPE);
        boxed2primitive.put(Character.class, Character.TYPE);
        boxed2primitive.put(Integer.class, Integer.TYPE);
        boxed2primitive.put(Long.class, Long.TYPE);
        boxed2primitive.put(Float.class, Float.TYPE);
        boxed2primitive.put(Double.class, Double.TYPE);
    }

    public static <T> T newInstance(Class<T> clazz, Object[] params) {
        try {
            return clazz.getConstructor(classes(params)).newInstance(params);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static Class[] classes(Object[] params) {
        Class[] classes = new Class[params.length];
        for (int i = 0; i < params.length; i++) {
            Class<?> cls = params[i].getClass();
            if (boxed2primitive.containsKey(cls)) {
                classes[i] = (Class) boxed2primitive.get(cls);
            } else {
                classes[i] = cls;
            }
        }
        return classes;
    }

    public static String stringFromCharset(byte[] data, String charset) {
        return new String(data, Charset.forName(charset));
    }

    public static byte[] getBytes(String fourcc) {
        try {
            return fourcc.getBytes("iso8859-1");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public static String stringFromBytes(byte[] bytes) {
        try {
            return new String(bytes, "iso8859-1");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public static boolean isAssignableFrom(Class class1, Class class2) {
        if (class1 == class2 || class1.equals(class2)) {
            return true;
        }
        return class1.isAssignableFrom(class2);
    }

    public static long unsignedInt(int signed) {
        return ((long) signed) & 4294967295L;
    }
}
