package com.ali.auth.third.core.cookies;

import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

public class c {
    public String a;
    public String b;
    public String c;
    public String d;
    public long e;
    public boolean f;
    public boolean g;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.c);
        stringBuilder.append("=");
        stringBuilder.append(this.d);
        stringBuilder.append("; ");
        stringBuilder.append("Domain=");
        stringBuilder.append(this.a);
        if (this.e > 0) {
            stringBuilder.append("; ");
            stringBuilder.append("Expires=");
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd-MMM-yyyy HH:mm:ss 'GMT'", Locale.ENGLISH);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+8"));
            stringBuilder.append(simpleDateFormat.format(Long.valueOf(this.e)));
        }
        stringBuilder.append("; ");
        stringBuilder.append("Path=");
        stringBuilder.append(this.b);
        if (this.f) {
            stringBuilder.append("; ");
            stringBuilder.append("Secure");
        }
        if (this.g) {
            stringBuilder.append("; ");
            stringBuilder.append("HttpOnly");
        }
        return stringBuilder.toString();
    }
}
