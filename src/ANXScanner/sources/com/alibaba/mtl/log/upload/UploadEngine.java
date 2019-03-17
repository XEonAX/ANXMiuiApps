package com.alibaba.mtl.log.upload;

import com.alibaba.mtl.log.a.a;
import com.alibaba.mtl.log.d.b;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.r;
import java.util.Random;

public class UploadEngine {
    static UploadEngine a = new UploadEngine();
    private int A;
    private boolean G = false;
    protected long z = a.a();

    public static UploadEngine getInstance() {
        return a;
    }

    public synchronized void start() {
        this.G = true;
        if (r.a().b(2)) {
            r.a().f(2);
        }
        c();
        Random random = new Random();
        if (!a.isRunning()) {
            r.a().a(2, new a() {
                public void H() {
                    if (UploadEngine.this.c()) {
                        com.alibaba.mtl.log.b.a.D();
                        UploadEngine.this.c();
                        i.a("UploadTask", "mPeriod:", Long.valueOf(UploadEngine.this.z));
                        if (r.a().b(2)) {
                            r.a().f(2);
                        }
                        if (!a.isRunning()) {
                            r.a().a(2, this, UploadEngine.this.z);
                        }
                    }
                }

                public void I() {
                    UploadEngine.this.refreshInterval();
                }
            }, (long) random.nextInt((int) this.z));
        }
    }

    public void refreshInterval() {
        if (this.A == 0) {
            this.A = 7000;
        } else {
            this.A = 0;
        }
    }

    public synchronized void stop() {
        this.G = false;
        r.a().f(2);
    }

    private long c() {
        long b;
        boolean z = true;
        i.a("UploadEngine", "UTDC.bBackground:", Boolean.valueOf(com.alibaba.mtl.log.a.o), "AppInfoUtil.isForeground(UTDC.getContext()) ", Boolean.valueOf(b.b(com.alibaba.mtl.log.a.getContext())));
        if (b.b(com.alibaba.mtl.log.a.getContext())) {
            z = false;
        }
        com.alibaba.mtl.log.a.o = z;
        z = com.alibaba.mtl.log.a.o;
        a.a();
        if (z) {
            b = a.b() + ((long) this.A);
        } else {
            b = a.a() + ((long) this.A);
        }
        this.z = b;
        if (a.e()) {
            this.z = 3000;
        }
        return this.z;
    }
}
