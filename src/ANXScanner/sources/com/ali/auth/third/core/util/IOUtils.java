package com.ali.auth.third.core.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.InputStream;

public class IOUtils {
    private static final String a = IOUtils.class.getSimpleName();

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
            }
        }
    }

    public static String toString(InputStream inputStream, String str) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr, 0, 1024);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String str2 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                    closeQuietly(inputStream);
                    return str2;
                }
            }
        } catch (Throwable e) {
            throw new RuntimeException(e);
        } catch (Throwable th) {
            closeQuietly(inputStream);
        }
    }
}
