package com.xiaomi.stat;

import android.os.FileObserver;

class C extends FileObserver {
    final /* synthetic */ A a;

    C(A a, String str) {
        this.a = a;
        super(str);
    }

    public void onEvent(int event, String path) {
        if (event == 2) {
            synchronized (this.a) {
                this.a.b();
            }
            C0001b.n();
        }
    }
}
