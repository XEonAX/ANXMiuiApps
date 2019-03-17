package com.alibaba.alibclinkpartner.d.d;

import com.alibaba.alibclinkpartner.j.e;

public class c {
    private a a = new b();

    public void a(Runnable runnable) {
        if (runnable != null) {
            this.a.a(runnable);
        } else {
            e.a("ALPbcExecutorManager", "postUITask", "runnable is null");
        }
    }

    public void b(Runnable runnable) {
        if (runnable != null) {
            this.a.b(runnable);
        } else {
            e.a("ALPbcExecutorManager", "postAsyncTask", "runnable is null");
        }
    }
}
