package com.alibaba.alibclinkpartner.g;

import android.content.Context;
import com.alibaba.alibclinkpartner.c.b;
import com.alibaba.alibclinkpartner.j.e;

public class f {
    public static int a(Context context, b bVar) {
        d a = e.a(bVar);
        if (a != null) {
            return a.a(context);
        }
        e.a("ALPOpenManager", "openUrl", "ALPOpenClient is null");
        return 303;
    }
}
