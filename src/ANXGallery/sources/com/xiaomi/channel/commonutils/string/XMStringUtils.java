package com.xiaomi.channel.commonutils.string;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Random;
import java.util.regex.Pattern;
import org.keyczar.Keyczar;

public class XMStringUtils {
    public static String join(Object[] array, String separator) {
        if (array == null) {
            return null;
        }
        return join(array, separator, 0, array.length);
    }

    public static String join(Object[] array, String separator, int startIndex, int endIndex) {
        if (array == null) {
            return null;
        }
        if (separator == null) {
            separator = "";
        }
        int bufSize = endIndex - startIndex;
        if (bufSize <= 0) {
            return "";
        }
        int i;
        if (array[startIndex] == null) {
            i = 16;
        } else {
            i = array[startIndex].toString().length();
        }
        StringBuffer buf = new StringBuffer(bufSize * (i + separator.length()));
        for (int i2 = startIndex; i2 < endIndex; i2++) {
            if (i2 > startIndex) {
                buf.append(separator);
            }
            if (array[i2] != null) {
                buf.append(array[i2]);
            }
        }
        return buf.toString();
    }

    public static String join(Iterator<?> iterator, String separator) {
        if (iterator == null) {
            return null;
        }
        if (!iterator.hasNext()) {
            return "";
        }
        Object first = iterator.next();
        if (!iterator.hasNext()) {
            return first.toString();
        }
        StringBuffer buf = new StringBuffer(256);
        if (first != null) {
            buf.append(first);
        }
        while (iterator.hasNext()) {
            if (separator != null) {
                buf.append(separator);
            }
            Object obj = iterator.next();
            if (obj != null) {
                buf.append(obj);
            }
        }
        return buf.toString();
    }

    public static String join(Collection<?> collection, String separator) {
        if (collection == null) {
            return null;
        }
        return join(collection.iterator(), separator);
    }

    public static String generateRandomString(int len) {
        String base = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        Random random = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < len; i++) {
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt(random.nextInt("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".length())));
        }
        return sb.toString();
    }

    public static String getMd5Digest(String pInput) {
        if (TextUtils.isEmpty(pInput)) {
            return "";
        }
        try {
            MessageDigest lDigest = MessageDigest.getInstance("MD5");
            lDigest.update(getBytes(pInput));
            BigInteger lHashInt = new BigInteger(1, lDigest.digest());
            return String.format("%1$032X", new Object[]{lHashInt});
        } catch (NoSuchAlgorithmException e) {
            return pInput;
        }
    }

    public static String getSHA1Digest(String pInput) {
        if (pInput == null) {
            return null;
        }
        try {
            MessageDigest lDigest = MessageDigest.getInstance("SHA1");
            lDigest.update(getBytes(pInput));
            BigInteger lHashInt = new BigInteger(1, lDigest.digest());
            return String.format("%1$032X", new Object[]{lHashInt});
        } catch (NoSuchAlgorithmException e) {
            return pInput;
        }
    }

    public static byte[] getBytes(String s) {
        try {
            return s.getBytes(Keyczar.DEFAULT_ENCODING);
        } catch (UnsupportedEncodingException e) {
            return s.getBytes();
        }
    }

    public static String bytesToString(byte[] bytes) {
        if (bytes == null || bytes.length <= 0) {
            return null;
        }
        try {
            return new String(bytes, Keyczar.DEFAULT_ENCODING);
        } catch (UnsupportedEncodingException e) {
            return new String(bytes);
        }
    }

    public static boolean checkAllAscii(String string) {
        if (string != null) {
            for (int i = 0; i < string.length(); i++) {
                char aChar = string.charAt(i);
                if (aChar < 0 || aChar > 127) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isNumberAndLetter(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.compile("^[A-Za-z0-9]+$").matcher(str).matches();
    }

    public static boolean isTheSameChars(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        char char0 = str.charAt(0);
        for (int i = 1; i < str.length(); i++) {
            if (str.charAt(i) != char0) {
                return false;
            }
        }
        return true;
    }

    public static String obfuscateString(String origin, int interval) {
        if (TextUtils.isEmpty(origin)) {
            return "";
        }
        StringBuilder resultSb = new StringBuilder();
        int length = origin.length();
        if (interval <= 0 || length < interval) {
            int sq = length / 3;
            if (sq > 1) {
                interval = sq;
            } else {
                interval = 1;
            }
            if (interval > 3) {
                interval = 3;
            }
        }
        for (int i = 0; i < length; i++) {
            if ((i + 1) % interval == 0) {
                resultSb.append("*");
            } else {
                resultSb.append(origin.charAt(i));
            }
        }
        return resultSb.toString();
    }

    public static String toUpperCase(String origin) {
        if (TextUtils.isEmpty(origin)) {
            return "";
        }
        return origin.toUpperCase();
    }
}
