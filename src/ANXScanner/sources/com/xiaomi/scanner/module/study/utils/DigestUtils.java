package com.xiaomi.scanner.module.study.utils;

import com.taobao.ma.decode.DecodeType;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class DigestUtils {
    private static final char[] DIGITS_LOWER = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final char[] DIGITS_UPPER = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final Tag TAG = new Tag(DigestUtils.class.getSimpleName());

    public static String digestSHA1(String data) {
        return digest(data.getBytes(), "SHA1", false);
    }

    public static String digestSHA1(byte[] data) {
        return digest(data, "SHA1", false);
    }

    public static String digestMD5Hex(byte[] data) {
        return digest(data, "MD5", true);
    }

    private static String digest(byte[] data, String alg, boolean toUpperCase) {
        String str = null;
        if (data == null) {
            return str;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(alg);
            messageDigest.update(data);
            return toHexString(messageDigest.digest(), toUpperCase);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
            return str;
        }
    }

    private static String toHexString(byte[] bytes, boolean toUpperCase) {
        int len = bytes.length;
        StringBuilder buf = new StringBuilder(len * 2);
        char[] array = toUpperCase ? DIGITS_UPPER : DIGITS_LOWER;
        for (int j = 0; j < len; j++) {
            buf.append(array[(bytes[j] >> 4) & 15]);
            buf.append(array[bytes[j] & 15]);
        }
        return buf.toString();
    }

    public static String MD5_32(String passwd) {
        if (passwd == null) {
            return null;
        }
        return getBytesMD5(passwd.getBytes());
    }

    private static String getBytesMD5(byte[] bytes) {
        if (bytes == null || bytes.length == 0) {
            return null;
        }
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            md5.update(bytes, 0, bytes.length);
            byte[] digest = md5.digest();
            StringBuffer strbuf = new StringBuffer();
            for (byte byte2Hex : digest) {
                strbuf.append(byte2Hex(byte2Hex));
            }
            return strbuf.toString();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    private static String byte2Hex(byte b) {
        int value = (b & DecodeType.ONE) + (b < (byte) 0 ? 128 : 0);
        return (value < 16 ? "0" : "") + Integer.toHexString(value).toLowerCase();
    }
}
