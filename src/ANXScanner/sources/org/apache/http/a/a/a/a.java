package org.apache.http.a.a.a;

public abstract class a implements c {
    private final String a;

    public a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("MIME type may not be null");
        }
        this.a = str;
        int indexOf = str.indexOf(47);
        if (indexOf != -1) {
            str.substring(0, indexOf);
            str.substring(indexOf + 1);
        }
    }

    public final String a() {
        return this.a;
    }
}
