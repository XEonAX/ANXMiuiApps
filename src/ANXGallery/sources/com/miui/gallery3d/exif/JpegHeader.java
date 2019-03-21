package com.miui.gallery3d.exif;

class JpegHeader {
    public static final boolean isSofMarker(short marker) {
        return (marker < (short) -64 || marker > (short) -49 || marker == (short) -60 || marker == (short) -56 || marker == (short) -52) ? false : true;
    }
}
