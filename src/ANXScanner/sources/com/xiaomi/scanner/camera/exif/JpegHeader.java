package com.xiaomi.scanner.camera.exif;

class JpegHeader {
    public static final short APP0 = (short) -32;
    public static final short APP1 = (short) -31;
    public static final short DAC = (short) -52;
    public static final short DHT = (short) -60;
    public static final short EOI = (short) -39;
    public static final short JPG = (short) -56;
    public static final short SOF0 = (short) -64;
    public static final short SOF15 = (short) -49;
    public static final short SOI = (short) -40;

    JpegHeader() {
    }

    public static final boolean isSofMarker(short marker) {
        return (marker < (short) -64 || marker > (short) -49 || marker == (short) -60 || marker == (short) -56 || marker == (short) -52) ? false : true;
    }
}
