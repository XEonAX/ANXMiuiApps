package com.xiaomi.stat.a;

import android.text.TextUtils;
import com.xiaomi.stat.a.l.a;

public class b {
    public static final int a = 0;
    public static final int b = 1;
    private String c;
    private int d;
    private boolean e;
    private boolean f;

    public b(String str, int i, boolean z) {
        this.c = str;
        this.d = i;
        this.e = z;
        this.f = TextUtils.isEmpty(str);
    }

    public boolean a(String str, String str2, boolean z) {
        if (!TextUtils.equals(str, this.c) || this.e != z) {
            return false;
        }
        if (this.d == 0) {
            return true;
        }
        if (this.f && TextUtils.equals(str2, a.h)) {
            return true;
        }
        return false;
    }

    public String a() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(j.i);
        if (this.f) {
            stringBuilder.append(" is null");
        } else {
            stringBuilder.append(" = \"").append(this.c).append("\"");
        }
        if (this.d != 0) {
            stringBuilder.append(" and ").append("eg").append(" = \"").append(a.h).append("\"");
        }
        stringBuilder.append(" and ").append(j.j).append(" = ").append(this.e ? 1 : 0);
        return stringBuilder.toString();
    }
}
