package com.xiaomi.channel.commonutils.string;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5 {
    private static String byte2Hex(byte b) {
        int value = (b & BaiduSceneResult.BANK_CARD) + (b < (byte) 0 ? 128 : 0);
        return (value < 16 ? "0" : "") + Integer.toHexString(value).toLowerCase();
    }

    public static String MD5_32(String passwd) {
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            StringBuffer strbuf = new StringBuffer();
            md5.update(passwd.getBytes(), 0, passwd.length());
            byte[] digest = md5.digest();
            for (byte byte2Hex : digest) {
                strbuf.append(byte2Hex(byte2Hex));
            }
            return strbuf.toString();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static String MD5_16(String passwd) {
        return MD5_32(passwd).subSequence(8, 24).toString();
    }
}
