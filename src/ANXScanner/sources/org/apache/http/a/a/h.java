package org.apache.http.a.a;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Random;
import mtopsdk.network.util.Constants.Protocol;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.a.a.a.c;
import org.apache.http.message.BasicHeader;

public final class h implements HttpEntity {
    private static final char[] a = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    private final c b;
    private final Header c;
    private long d;
    private volatile boolean e;

    public h() {
        this(e.a, null, null);
    }

    private h(int i, String str, Charset charset) {
        Charset charset2 = null;
        String a = a();
        if (i == 0) {
            i = e.a;
        }
        this.b = new c("form-data", charset2, a, i);
        String str2 = Protocol.CONTENT_TYPE;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("multipart/form-data; boundary=");
        stringBuilder.append(a);
        if (charset2 != null) {
            stringBuilder.append("; charset=");
            stringBuilder.append(charset2.name());
        }
        this.c = new BasicHeader(str2, stringBuilder.toString());
        this.e = true;
    }

    private static String a() {
        StringBuilder stringBuilder = new StringBuilder();
        Random random = new Random();
        int nextInt = random.nextInt(11) + 30;
        for (int i = 0; i < nextInt; i++) {
            stringBuilder.append(a[random.nextInt(a.length)]);
        }
        return stringBuilder.toString();
    }

    public final void a(String str, c cVar) {
        this.b.a(new a(str, cVar));
        this.e = true;
    }

    public final void consumeContent() {
        if (isStreaming()) {
            throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
        }
    }

    public final InputStream getContent() {
        throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
    }

    public final Header getContentEncoding() {
        return null;
    }

    public final long getContentLength() {
        if (this.e) {
            this.d = this.b.b();
            this.e = false;
        }
        return this.d;
    }

    public final Header getContentType() {
        return this.c;
    }

    public final boolean isChunked() {
        return !isRepeatable();
    }

    public final boolean isRepeatable() {
        for (a a : this.b.a()) {
            if (a.a().e() < 0) {
                return false;
            }
        }
        return true;
    }

    public final boolean isStreaming() {
        return !isRepeatable();
    }

    public final void writeTo(OutputStream outputStream) {
        this.b.a(outputStream);
    }
}
