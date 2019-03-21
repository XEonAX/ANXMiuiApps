package org.jcodec.common;

import org.jcodec.platform.Platform;

public class Fourcc {
    public static final int free = intFourcc("free");
    public static final int ftyp = intFourcc("ftyp");
    public static final int mdat = intFourcc("mdat");
    public static final int moov = intFourcc("moov");
    public static final int wide = intFourcc("wide");

    public static int makeInt(byte b3, byte b2, byte b1, byte b0) {
        return (((b3 << 24) | ((b2 & 255) << 16)) | ((b1 & 255) << 8)) | (b0 & 255);
    }

    public static int intFourcc(String string) {
        byte[] b = Platform.getBytes(string);
        return makeInt(b[0], b[1], b[2], b[3]);
    }
}
