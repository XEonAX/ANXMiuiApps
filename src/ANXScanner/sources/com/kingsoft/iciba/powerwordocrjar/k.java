package com.kingsoft.iciba.powerwordocrjar;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;

public class k {
    public static String a(InputStream inputStream) {
        return b(new GZIPInputStream(inputStream));
    }

    public static void a(InputStream inputStream, OutputStream outputStream) {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read == -1) {
                bufferedInputStream.close();
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
                return;
            }
            bufferedOutputStream.write(bArr, 0, read);
        }
    }

    public static String b(InputStream inputStream) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        a(inputStream, byteArrayOutputStream);
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toString("UTF-8");
    }
}
