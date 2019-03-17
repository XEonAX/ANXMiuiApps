package com.taobao.applink.util;

import android.util.Log;
import java.security.MessageDigest;

public class c {
    public static String a(String str) {
        if (e.a(str)) {
            return null;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            StringBuffer stringBuffer = new StringBuffer();
            byte[] digest = instance.digest();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= digest.length) {
                    return stringBuffer.toString();
                }
                i = digest[i2];
                if (i < 0) {
                    i += 256;
                }
                if (i < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i));
                i = i2 + 1;
            }
        } catch (Throwable th) {
            Log.d(TBAppLinkUtil.TAG, th.toString());
            return null;
        }
    }

    public static String a(byte[] bArr) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(bArr);
            StringBuilder stringBuilder = new StringBuilder(digest.length * 2);
            for (byte b : digest) {
                if ((b & 255) < 16) {
                    stringBuilder.append("0");
                }
                stringBuilder.append(Integer.toHexString(b & 255));
            }
            return stringBuilder.toString();
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }
}
