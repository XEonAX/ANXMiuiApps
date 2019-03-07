package com.xiaomi.stat;

import android.text.TextUtils;
import com.xiaomi.stat.b.f;
import com.xiaomi.stat.d.m;

class l implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ String b;
    final /* synthetic */ C0004e c;

    l(C0004e c0004e, boolean z, String str) {
        this.c = c0004e;
        this.a = z;
        this.b = str;
    }

    public void run() {
        if (!m.a()) {
            C0001b.c(this.a);
            f.a().a(this.a);
        }
        if (C0001b.e() && !TextUtils.isEmpty(this.b)) {
            C0001b.a(this.b);
            f.a().a(this.b);
        }
    }
}
