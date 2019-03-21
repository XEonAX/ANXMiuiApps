package cn.kuaipan.android.utils;

import android.util.Log;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.security.MessageDigest;

public class Encode {
    static final String[] HEXDIGITS = new String[]{"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};

    public static byte[] hexStringToByteArray(String string) {
        byte[] bytes = new byte[(string.length() / 2)];
        for (int i = 0; i < bytes.length; i++) {
            bytes[i] = (byte) ((Character.digit(string.charAt(i * 2), 16) * 16) + Character.digit(string.charAt((i * 2) + 1), 16));
        }
        return bytes;
    }

    public static String byteArrayToHexString(byte[] b) {
        if (b == null) {
            return null;
        }
        StringBuffer resultSB = new StringBuffer(b.length * 2);
        for (int i = 0; i < b.length; i++) {
            resultSB.append(HEXDIGITS[(b[i] >>> 4) & 15]);
            resultSB.append(HEXDIGITS[b[i] & 15]);
        }
        return resultSB.toString();
    }

    public static String MD5Encode(byte[] oriData) {
        try {
            return byteArrayToHexString(MessageDigest.getInstance("MD5").digest(oriData));
        } catch (Exception e) {
            Log.e("Encode", "MD5Encode failed.", e);
            return null;
        }
    }

    public static String SHA1Encode(InputStream in, int size) {
        try {
            MessageDigest md = MessageDigest.getInstance("sha1");
            byte[] buf = new byte[16384];
            int pos = 0;
            do {
                int len = in.read(buf, 0, Math.min(buf.length, size - pos));
                if (len < 0) {
                    break;
                }
                md.update(buf, 0, len);
                pos += len;
            } while (size - pos > 0);
            return byteArrayToHexString(md.digest());
        } catch (Exception e) {
            Log.e("Encode", "SHA1Encode failed.", e);
            return null;
        }
    }

    public static String SHA1Encode(RandomAccessFile file, long start, long len) {
        try {
            MessageDigest md = MessageDigest.getInstance("sha1");
            byte[] buf = new byte[8192];
            long end = start + len;
            long pos = start;
            file.seek(pos);
            do {
                int l = file.read(buf, 0, (int) Math.min((long) buf.length, end - pos));
                if (l < 0) {
                    break;
                }
                md.update(buf, 0, l);
                pos += (long) l;
            } while (pos < end);
            if (pos >= end) {
                return byteArrayToHexString(md.digest());
            }
            Log.w("Encode", "File size may not enough for sha1.");
            return null;
        } catch (Exception e) {
            Log.e("Encode", "SHA1Encode failed.", e);
            return null;
        }
    }
}
