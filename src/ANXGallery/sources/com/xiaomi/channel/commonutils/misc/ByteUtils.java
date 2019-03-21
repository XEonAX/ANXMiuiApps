package com.xiaomi.channel.commonutils.misc;

public class ByteUtils {
    public static byte[] parseInt(int i) {
        return new byte[]{(byte) (i >> 24), (byte) (i >> 16), (byte) (i >> 8), (byte) i};
    }

    public static int toInt(byte[] bytes) {
        if (bytes.length == 4) {
            return (((0 | ((bytes[0] & 255) << 24)) | ((bytes[1] & 255) << 16)) | ((bytes[2] & 255) << 8)) | (bytes[3] & 255);
        }
        throw new IllegalArgumentException("the length of bytes must be 4");
    }
}
