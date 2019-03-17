package com.kingsoft.iciba.powerwordocrjar;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class g {
    private static MessageDigest a;

    public static String a(String str) {
        try {
            return a(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return "";
    }

    public static synchronized String a(byte[] bArr) {
        String a;
        synchronized (g.class) {
            try {
                a = MessageDigest.getInstance("MD5");
                a.reset();
                a.update(bArr);
                a = l.a(a.digest());
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return a;
        a = "";
        return a;
    }
}
