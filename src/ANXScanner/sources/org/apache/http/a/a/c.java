package org.apache.http.a.a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import mtopsdk.network.util.Constants.Protocol;
import org.apache.http.util.ByteArrayBuffer;

public final class c {
    private static final ByteArrayBuffer a = a(f.a, ": ");
    private static final ByteArrayBuffer b = a(f.a, "\r\n");
    private static final ByteArrayBuffer c = a(f.a, "--");
    private final Charset d;
    private final String e;
    private final List<a> f;
    private final int g;

    public c(String str, Charset charset, String str2, int i) {
        if (str2 == null) {
            throw new IllegalArgumentException("Multipart boundary may not be null");
        }
        if (charset == null) {
            charset = f.a;
        }
        this.d = charset;
        this.e = str2;
        this.f = new ArrayList();
        this.g = i;
    }

    private static ByteArrayBuffer a(Charset charset, String str) {
        ByteBuffer encode = charset.encode(CharBuffer.wrap(str));
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(encode.remaining());
        byteArrayBuffer.append(encode.array(), encode.position(), encode.remaining());
        return byteArrayBuffer;
    }

    private void a(int i, OutputStream outputStream, boolean z) {
        ByteArrayBuffer a = a(this.d, this.e);
        for (a aVar : this.f) {
            a(c, outputStream);
            a(a, outputStream);
            a(b, outputStream);
            b b = aVar.b();
            switch (d.a[i - 1]) {
                case 1:
                    Iterator it = b.iterator();
                    while (it.hasNext()) {
                        g gVar = (g) it.next();
                        a(gVar.a(), outputStream);
                        a(a, outputStream);
                        a(gVar.b(), outputStream);
                        a(b, outputStream);
                    }
                    break;
                case 2:
                    a(aVar.b().a("Content-Disposition"), this.d, outputStream);
                    if (aVar.a().b() != null) {
                        a(aVar.b().a(Protocol.CONTENT_TYPE), this.d, outputStream);
                        break;
                    }
                    break;
            }
            a(b, outputStream);
            if (z) {
                aVar.a().a(outputStream);
            }
            a(b, outputStream);
        }
        a(c, outputStream);
        a(a, outputStream);
        a(c, outputStream);
        a(b, outputStream);
    }

    private static void a(String str, OutputStream outputStream) {
        a(a(f.a, str), outputStream);
    }

    private static void a(String str, Charset charset, OutputStream outputStream) {
        a(a(charset, str), outputStream);
    }

    private static void a(g gVar, Charset charset, OutputStream outputStream) {
        a(gVar.a(), charset, outputStream);
        a(a, outputStream);
        a(gVar.b(), charset, outputStream);
        a(b, outputStream);
    }

    private static void a(ByteArrayBuffer byteArrayBuffer, OutputStream outputStream) {
        outputStream.write(byteArrayBuffer.buffer(), 0, byteArrayBuffer.length());
    }

    public final List<a> a() {
        return this.f;
    }

    public final void a(OutputStream outputStream) {
        a(this.g, outputStream, true);
    }

    public final void a(a aVar) {
        if (aVar != null) {
            this.f.add(aVar);
        }
    }

    public final long b() {
        long j = 0;
        for (a a : this.f) {
            long e = a.a().e();
            if (e < 0) {
                return -1;
            }
            j = e + j;
        }
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            a(this.g, byteArrayOutputStream, false);
            return ((long) byteArrayOutputStream.toByteArray().length) + j;
        } catch (IOException e2) {
            return -1;
        }
    }
}
