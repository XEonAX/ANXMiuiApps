package com.alibaba.alibclinkpartner.b;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.d.e.a.d;
import com.alibaba.alibclinkpartner.d.e.a.p;
import com.alibaba.alibclinkpartner.d.e.c;
import java.util.List;

public class a {
    public static void a(String str, String str2) {
        d pVar = new p();
        pVar.d = b.a().d;
        pVar.c = str;
        pVar.b = str2;
        pVar.a = String.valueOf(System.currentTimeMillis() / 1000);
        c.a(pVar);
    }

    public static void a(String str, String str2, String str3, List<String> list) {
        if (!TextUtils.isEmpty(str2) && b.i()) {
            b bVar = new b(b.a().b, str2, str, str3, list);
            com.alibaba.alibclinkpartner.j.c.a(b.e(), bVar.a());
            a(bVar.c, bVar.d);
        }
    }
}
