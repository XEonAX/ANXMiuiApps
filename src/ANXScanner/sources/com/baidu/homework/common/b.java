package com.baidu.homework.common;

import android.content.Context;
import java.security.MessageDigest;
import java.util.UUID;

public class b {
    private static String a;

    public static String a(Context context) {
        if (a == null) {
            synchronized (b.class) {
                if (a == null) {
                    String c = a.c(context);
                    a = c;
                    if (c.length() == 0) {
                        a = a(UUID.randomUUID().toString());
                        a.a(context, a);
                    }
                }
            }
        }
        return a;
    }

    private static String a(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            StringBuilder stringBuilder = new StringBuilder();
            for (byte b : digest) {
                stringBuilder.append(Integer.toHexString((b & 255) | 256).substring(1));
            }
            return stringBuilder.toString();
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }
}
