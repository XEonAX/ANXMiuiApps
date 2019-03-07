package com.xiaomi.analytics.internal.util;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

public class IOUtil {
    private static final String TAG = "IOUtil";

    public static byte[] inputStream2ByteArray(InputStream is) throws IOException {
        return inputStream2ByteArray(is, 1024);
    }

    public static byte[] inputStream2ByteArray(InputStream is, int bufferSize) throws IOException {
        if (is == null) {
            return null;
        }
        if (bufferSize < 1) {
            bufferSize = 1;
        }
        ByteArrayOutputStream byteBuffer = new ByteArrayOutputStream();
        byte[] buffer = new byte[bufferSize];
        while (true) {
            int len = is.read(buffer);
            if (len != -1) {
                byteBuffer.write(buffer, 0, len);
            } else {
                byteBuffer.close();
                is.close();
                return byteBuffer.toByteArray();
            }
        }
    }

    public static void closeSafely(Closeable closeable) {
        if (closeable != null && (closeable instanceof Closeable)) {
            try {
                closeable.close();
            } catch (Exception e) {
                Log.e(ALog.addPrefix(TAG), "closeSafely e", e);
            }
        }
    }
}
