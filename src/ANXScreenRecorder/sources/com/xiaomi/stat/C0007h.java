package com.xiaomi.stat;

import android.text.TextUtils;
import com.xiaomi.stat.a.l;

/* renamed from: com.xiaomi.stat.h */
class C0007h implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ C0004e b;

    C0007h(C0004e c0004e, String str) {
        this.b = c0004e;
        this.a = str;
    }

    public void run() {
        if (C0001b.a() && !TextUtils.equals(C0001b.h(), this.a)) {
            C0001b.b(this.a);
            if (this.b.g()) {
                this.b.a(l.a(this.a));
            }
        }
    }
}
