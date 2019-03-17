package com.uploader.implement.a;

import java.io.File;
import java.util.Map;

/* compiled from: RequestContent */
public class h {
    public final File a;
    public final long b;
    public final long c;
    public final long d;
    public final Map<String, String> e;
    public final byte[] f;
    public final byte[] g;
    public final byte[] h;

    public h(File file, long lastModified, long offset, long length, Map<String, String> header, byte[] bytes, byte[] tail, byte[] copy) {
        this.a = file;
        this.b = lastModified;
        this.c = offset;
        this.d = length;
        this.e = header;
        this.f = bytes;
        this.g = tail;
        this.h = copy;
    }
}
