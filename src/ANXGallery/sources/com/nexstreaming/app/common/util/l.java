package com.nexstreaming.app.common.util;

/* compiled from: Stopwatch */
public class l {
    private long a;
    private long b;
    private boolean c;

    public void a() {
        if (!this.c) {
            this.c = true;
            this.a = System.nanoTime();
        }
    }

    public void b() {
        if (this.c) {
            this.c = false;
            this.b += System.nanoTime() - this.a;
        }
    }

    public void c() {
        this.c = false;
        this.b = 0;
    }

    public long d() {
        if (this.c) {
            return this.b + (System.nanoTime() - this.a);
        }
        return this.b;
    }

    public String toString() {
        return String.format("%1$,.3f", new Object[]{Double.valueOf(((double) d()) / 1000000.0d)});
    }
}
