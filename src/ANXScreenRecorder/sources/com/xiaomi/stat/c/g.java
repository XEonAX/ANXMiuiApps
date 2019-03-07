package com.xiaomi.stat.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.xiaomi.stat.C0001b;
import com.xiaomi.stat.I;
import com.xiaomi.stat.a.c;
import com.xiaomi.stat.d.k;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class g extends Handler {
    private static final String c = "UploadTimer";
    private static final int d = 15000;
    private static final int e = 5;
    private static final int f = 86400;
    private static final int g = 1;
    private static final int h = 2;
    public AtomicBoolean a;
    BroadcastReceiver b;
    private long i;
    private AtomicInteger j;
    private int k;
    private boolean l;
    private long m;
    private long n;
    private boolean o;

    public g(Looper looper) {
        super(looper);
        this.i = 300000;
        this.j = new AtomicInteger();
        this.a = new AtomicBoolean(true);
        this.k = 15000;
        this.l = true;
        this.o = true;
        this.b = new h(this);
        this.k = 60000;
        this.j.set(this.k);
        sendEmptyMessageDelayed(1, (long) this.k);
        a(I.a());
        k.b("UploadTimer UploadTimer: " + this.k);
    }

    private int d() {
        int a = a(C0001b.m());
        if (a > 0) {
            return a * 1000;
        }
        a = a(C0001b.j());
        if (a > 0) {
            return a * 1000;
        }
        return 15000;
    }

    private int a(int i) {
        if (i < 0) {
            return 0;
        }
        if (i <= 0 || i >= 5) {
            return i > f ? f : i;
        } else {
            return 5;
        }
    }

    public void handleMessage(Message msg) {
        super.handleMessage(msg);
        if (msg.what == 1) {
            e();
            this.m = this.l ? (long) this.j.get() : (long) this.k;
            sendEmptyMessageDelayed(1, this.m);
            k.b("UploadTimer handleMessage: " + this.l);
        } else if (msg.what == 2) {
            f();
        }
    }

    private void e() {
        i.a().c();
    }

    public long a() {
        return this.m;
    }

    public void a(boolean z) {
        if (!(z || this.o)) {
            b();
        }
        this.l = z;
        this.o = false;
    }

    public void b() {
        this.k = d();
        this.j.set(this.k);
        removeMessages(1);
        sendEmptyMessageDelayed(1, (long) this.k);
        k.b("UploadTimer resetBackgroundInterval: " + this.k);
    }

    private void a(Context context) {
        if (context != null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            context.registerReceiver(this.b, intentFilter);
        }
    }

    public void b(boolean z) {
        long c = c.a().c();
        if (c == 0) {
            this.a.set(true);
        }
        k.b("UploadTimer totalCount=" + c + " deleteData=" + z);
        if (((long) this.j.get()) < this.i && this.l) {
            if (c == 0 || !z) {
                this.j.addAndGet(this.k);
            }
        }
    }

    public void c() {
        if (this.l && this.a.get()) {
            sendEmptyMessage(2);
        }
    }

    private void f() {
        long c = c.a().c();
        if (c >= 0) {
            if (c > 0) {
                b();
                this.a.set(false);
            } else {
                this.a.set(true);
            }
            k.b("UploadTimer checkDatabase mIsDatabaseEmpty=" + this.a.get());
        }
    }
}
