package com.xiaomi.stat;

import java.lang.Thread.UncaughtExceptionHandler;

public class J implements UncaughtExceptionHandler {
    private C0004e a;
    private UncaughtExceptionHandler b;
    private boolean c = true;

    public J(C0004e c0004e) {
        this.a = c0004e;
    }

    public void a() {
        UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (!(defaultUncaughtExceptionHandler instanceof J)) {
            this.b = defaultUncaughtExceptionHandler;
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    public void a(boolean z) {
        this.c = z;
    }

    public void uncaughtException(Thread t, Throwable e) {
        if (this.c) {
            this.a.a(e, null, false);
        }
        if (this.b != null) {
            this.b.uncaughtException(t, e);
        }
    }
}
