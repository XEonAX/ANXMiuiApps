package com.miui.gallery.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class StreamUtils {
    public static String toString(InputStream is) throws IOException {
        ByteArrayOutputStream baos = toByteArrayOutputStream(is);
        return baos != null ? baos.toString() : null;
    }

    public static ByteArrayOutputStream toByteArrayOutputStream(InputStream is) throws IOException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        byte[] buffer = new byte[512];
        while (true) {
            int length = is.read(buffer);
            if (length == -1) {
                return baos;
            }
            baos.write(buffer, 0, length);
        }
    }
}
