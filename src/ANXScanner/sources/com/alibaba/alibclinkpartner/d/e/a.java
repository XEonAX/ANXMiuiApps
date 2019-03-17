package com.alibaba.alibclinkpartner.d.e;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.f.b;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.i;
import java.util.HashMap;
import java.util.Map;

public class a {
    private Map<String, String> a = new HashMap();
    private String b;

    private a() {
    }

    public static a a() {
        return new a();
    }

    private String c() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(String.format("https://wgo.mmstat.com/%s?", new Object[]{this.b})).append(i.a(this.a));
        return stringBuffer.toString();
    }

    public a a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.b = str;
        }
        return this;
    }

    public a a(Map<String, String> map) {
        if (map != null) {
            this.a.putAll(map);
        }
        return this;
    }

    public boolean b() {
        b bVar = new b();
        bVar.a = c();
        bVar.c = 0;
        e.b("ALPAplus", "send", "url = " + bVar.a);
        com.alibaba.alibclinkpartner.b.a.b(new b(this, bVar));
        return true;
    }
}
