package com.alibaba.alibclinkpartner.d.d;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class b implements a {
    private Handler a = new Handler(Looper.getMainLooper());
    private ExecutorService b = Executors.newCachedThreadPool();

    protected b() {
    }

    public void a(Runnable runnable) {
        if (runnable != null) {
            this.a.post(runnable);
        }
    }

    public void b(Runnable runnable) {
        if (runnable != null) {
            this.b.execute(runnable);
        }
    }
}
