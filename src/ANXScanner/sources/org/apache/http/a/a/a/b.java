package org.apache.http.a.a.a;

import java.io.OutputStream;

public final class b extends a {
    private final byte[] a;
    private final String b;

    public b(byte[] bArr, String str) {
        this(bArr, "application/octet-stream", str);
    }

    private b(byte[] bArr, String str, String str2) {
        super(str);
        if (bArr == null) {
            throw new IllegalArgumentException("byte[] may not be null");
        }
        this.a = bArr;
        this.b = str2;
    }

    public final void a(OutputStream outputStream) {
        outputStream.write(this.a);
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return null;
    }

    public final String d() {
        return "binary";
    }

    public final long e() {
        return (long) this.a.length;
    }
}
