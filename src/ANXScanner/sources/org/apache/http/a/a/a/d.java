package org.apache.http.a.a.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

public final class d extends a {
    private final byte[] a;
    private final Charset b;

    private d(String str, String str2, Charset charset) {
        super(str2);
        if (str == null) {
            throw new IllegalArgumentException("Text may not be null");
        }
        if (charset == null) {
            charset = Charset.forName("US-ASCII");
        }
        this.a = str.getBytes(charset.name());
        this.b = charset;
    }

    public d(String str, Charset charset) {
        this(str, "text/plain", charset);
    }

    public final void a(OutputStream outputStream) {
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        InputStream byteArrayInputStream = new ByteArrayInputStream(this.a);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = byteArrayInputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                outputStream.flush();
                return;
            }
        }
    }

    public final String b() {
        return null;
    }

    public final String c() {
        return this.b.name();
    }

    public final String d() {
        return "8bit";
    }

    public final long e() {
        return (long) this.a.length;
    }
}
