package org.android.spdy;

import java.util.Random;
import java.util.TreeSet;

public class SpdyBytePool {
    private static volatile SpdyBytePool gInstance = null;
    private static Object lock = new Object();
    private static Random rand = new Random();
    private TreeSet<SpdyByteArray> pool;
    private long reused;
    private SpdyByteArray std;

    private SpdyBytePool() {
        this.pool = null;
        this.std = new SpdyByteArray();
        this.reused = 0;
        this.pool = new TreeSet();
    }

    public static SpdyBytePool getInstance() {
        if (gInstance == null) {
            synchronized (lock) {
                if (gInstance == null) {
                    gInstance = new SpdyBytePool();
                }
            }
        }
        return gInstance;
    }

    SpdyByteArray getSpdyByteArray(int length) {
        SpdyByteArray ret;
        synchronized (lock) {
            this.std.length = length;
            ret = (SpdyByteArray) this.pool.ceiling(this.std);
            if (ret == null) {
                ret = new SpdyByteArray(length);
            } else {
                this.pool.remove(ret);
                this.reused += (long) length;
            }
        }
        spduLog.Logi("libeasy", "getSpdyByteArray: " + ret);
        spduLog.Logi("libeasy", "reused: " + this.reused);
        return ret;
    }

    void recycle(SpdyByteArray m) {
        synchronized (lock) {
            this.pool.add(m);
            while (this.pool.size() > 100) {
                if (rand.nextBoolean()) {
                    this.pool.pollFirst();
                } else {
                    this.pool.pollLast();
                }
            }
        }
    }
}
