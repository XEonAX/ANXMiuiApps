package com.alibaba.fastjson.util;

import java.lang.ref.SoftReference;
import java.nio.charset.CharsetDecoder;

public class ThreadLocalCache {
    static final /* synthetic */ boolean $assertionsDisabled = (!ThreadLocalCache.class.desiredAssertionStatus());
    public static final int BYTES_CACH_INIT_SIZE = 1024;
    public static final int BYTES_CACH_INIT_SIZE_EXP = 10;
    public static final int BYTES_CACH_MAX_SIZE = 131072;
    public static final int BYTES_CACH_MAX_SIZE_EXP = 17;
    public static final int CHARS_CACH_INIT_SIZE = 1024;
    public static final int CHARS_CACH_INIT_SIZE_EXP = 10;
    public static final int CHARS_CACH_MAX_SIZE = 131072;
    public static final int CHARS_CACH_MAX_SIZE_EXP = 17;
    private static final ThreadLocal<SoftReference<byte[]>> bytesBufLocal = new ThreadLocal();
    private static final ThreadLocal<SoftReference<char[]>> charsBufLocal = new ThreadLocal();
    private static final ThreadLocal<CharsetDecoder> decoderLocal = new ThreadLocal();

    public static CharsetDecoder getUTF8Decoder() {
        CharsetDecoder decoder = (CharsetDecoder) decoderLocal.get();
        if (decoder != null) {
            return decoder;
        }
        decoder = new UTF8Decoder();
        decoderLocal.set(decoder);
        return decoder;
    }

    public static void clearChars() {
        charsBufLocal.set(null);
    }

    public static char[] getChars(int length) {
        SoftReference<char[]> ref = (SoftReference) charsBufLocal.get();
        if (ref == null) {
            return allocate(length);
        }
        char[] chars = (char[]) ref.get();
        if (chars == null) {
            return allocate(length);
        }
        if (chars.length < length) {
            return allocate(length);
        }
        return chars;
    }

    private static char[] allocate(int length) {
        if (length > 131072) {
            return new char[length];
        }
        char[] chars = new char[getAllocateLengthExp(10, 17, length)];
        charsBufLocal.set(new SoftReference(chars));
        return chars;
    }

    private static int getAllocateLengthExp(int minExp, int maxExp, int length) {
        if (!$assertionsDisabled && (1 << maxExp) < length) {
            throw new AssertionError();
        } else if ((length >>> minExp) <= 0) {
            return 1 << minExp;
        } else {
            return 1 << (32 - Integer.numberOfLeadingZeros(length - 1));
        }
    }

    public static void clearBytes() {
        bytesBufLocal.set(null);
    }

    public static byte[] getBytes(int length) {
        SoftReference<byte[]> ref = (SoftReference) bytesBufLocal.get();
        if (ref == null) {
            return allocateBytes(length);
        }
        byte[] bytes = (byte[]) ref.get();
        if (bytes == null) {
            return allocateBytes(length);
        }
        if (bytes.length < length) {
            return allocateBytes(length);
        }
        return bytes;
    }

    private static byte[] allocateBytes(int length) {
        if (length > 131072) {
            return new byte[length];
        }
        byte[] chars = new byte[getAllocateLengthExp(10, 17, length)];
        bytesBufLocal.set(new SoftReference(chars));
        return chars;
    }
}
