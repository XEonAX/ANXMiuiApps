package com.miui.gallery.util;

import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Collection;

public class BaseMiscUtil {
    private static long[] sCrcTable = new long[256];

    static {
        for (int i = 0; i < 256; i++) {
            long part = (long) i;
            for (int j = 0; j < 8; j++) {
                part = (part >> 1) ^ ((((int) part) & 1) != 0 ? -7661587058870466123L : 0);
            }
            sCrcTable[i] = part;
        }
    }

    public static void closeSilently(Closeable c) {
        if (c != null) {
            try {
                c.close();
            } catch (IOException e) {
                Log.w("BaseMiscUtil", "close fail", e);
            }
        }
    }

    public static boolean isValid(Collection collection) {
        return collection != null && collection.size() > 0;
    }

    public static final long crc64Long(byte[] buffer) {
        long crc = -1;
        for (byte b : buffer) {
            crc = sCrcTable[(((int) crc) ^ b) & 255] ^ (crc >> 8);
        }
        return crc;
    }

    public static boolean floatEquals(float f1, float f2) {
        return floatNear(f1, f2, 1.0E-7f);
    }

    public static boolean doubleEquals(double f1, double f2) {
        return doubleNear(f1, f2, 1.0E-7d);
    }

    public static boolean floatNear(float f1, float f2, float eps) {
        return Math.abs(f1 - f2) < Math.abs(eps);
    }

    public static boolean doubleNear(double f1, double f2, double eps) {
        return Math.abs(f1 - f2) < Math.abs(eps);
    }

    public static boolean equals(Object o1, Object o2) {
        return o1 == o2 || (o1 != null && o1.equals(o2));
    }

    public static float clamp(float x, float min, float max) {
        if (x > max) {
            return max;
        }
        return x < min ? min : x;
    }

    public static int clamp(int x, int min, int max) {
        if (x > max) {
            return max;
        }
        return x < min ? min : x;
    }

    private static Method getDeclaredMethod(Object target, String methodName, Class<?>[] parameterTypes) {
        if (target instanceof Class) {
            try {
                return ((Class) target).getMethod(methodName, parameterTypes);
            } catch (Exception e) {
            }
        } else {
            Class<?> clazz = target.getClass();
            while (clazz != Object.class) {
                try {
                    return clazz.getDeclaredMethod(methodName, parameterTypes);
                } catch (Exception e2) {
                    clazz = clazz.getSuperclass();
                }
            }
            return null;
        }
    }

    public static Object invokeSafely(Object target, String methodName, Class<?>[] parameterTypes, Object... parameters) {
        try {
            Method method = getDeclaredMethod(target, methodName, parameterTypes);
            if (method != null) {
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                return method.invoke(target, parameters);
            }
        } catch (Throwable e) {
            Log.e("BaseMiscUtil", e);
        } catch (Throwable e2) {
            Log.e("BaseMiscUtil", e2);
        } catch (Throwable e22) {
            Log.e("BaseMiscUtil", e22);
        } catch (Throwable e222) {
            Log.e("BaseMiscUtil", e222);
        } catch (Throwable e2222) {
            Log.e("BaseMiscUtil", e2222);
        }
        return null;
    }
}
