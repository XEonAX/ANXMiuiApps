package com.xiaomi.stat.b;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class e {
    private static final Object a = new Object();
    private static volatile e b;
    private static volatile ExecutorService c;

    private e() {
    }

    public static e a() {
        if (b == null) {
            synchronized (a) {
                if (b == null) {
                    b = new e();
                }
            }
        }
        return b;
    }

    public synchronized ExecutorService b() {
        if (c == null) {
            c = Executors.newCachedThreadPool();
        }
        return c;
    }
}
