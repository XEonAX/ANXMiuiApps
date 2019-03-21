package com.xiaomi.mistatistic.sdk.controller;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.xiaomi.mistatistic.sdk.b;
import com.xiaomi.mistatistic.sdk.controller.e.a;
import com.xiaomi.mistatistic.sdk.data.StatEventPojo;
import java.util.Iterator;
import java.util.List;

/* compiled from: UploadPolicyEngine */
public class s {
    private static volatile s a = null;
    private int b;
    private int c;
    private long d;
    private long e;
    private long f;
    private long g;
    private long h;
    private long i;
    private Handler j = new Handler(e.c()) {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    s.this.l();
                    s.this.s();
                    return;
                case 2:
                    s.this.m();
                    return;
                case 3:
                    if (s.this.o()) {
                        s.this.p();
                    }
                    s.this.t();
                    return;
                case 4:
                    s.this.p();
                    s.this.q();
                    return;
                default:
                    return;
            }
        }
    };

    public static s a() {
        if (a == null) {
            synchronized (s.class) {
                if (a == null) {
                    a = new s();
                }
            }
        }
        return a;
    }

    private s() {
    }

    public void b() {
        e.a().a(new a() {
            public void execute() {
                Context a = d.a();
                s.this.c = m.a(a, "upload_policy", 0);
                if (s.this.c == 0) {
                    s.this.d = m.a(a, "upload_interval", 90000);
                    j.c("UPE", "Upload policy is UPLOAD_POLICY_INTERVAL and interval is " + s.this.d);
                    s.this.j();
                } else if (s.this.c == 1) {
                    s.this.e = m.a(a, "upload_size", 3072);
                    j.c("UPE", "Upload policy is UPLOAD_POLICY_BATCH and size is " + s.this.e);
                }
                s.this.b = m.a(a, "upload_network", 31);
                j.c("UPE", "Upload network is " + s.this.b);
                s.this.n();
            }
        });
        this.j.sendEmptyMessageDelayed(2, 5000);
    }

    public void a(final int i, final long j) {
        e.a().a(new a() {
            public void execute() {
                j.b("UPE", "Set new policy, policy: %d, value: %d", Integer.valueOf(i), Long.valueOf(j));
                s.this.c = i;
                Context a = d.a();
                m.b(a, "upload_policy", i);
                if (s.this.c == 0) {
                    s.this.d = j;
                    m.b(a, "upload_interval", s.this.d);
                    s.this.j();
                } else if (s.this.c == 1) {
                    s.this.e = j;
                    m.b(a, "upload_size", s.this.e);
                    s.this.k();
                }
            }
        });
    }

    public void c() {
        if (this.c == 1 && !this.j.hasMessages(1)) {
            this.j.sendEmptyMessage(1);
        }
    }

    public void d() {
        this.f = System.currentTimeMillis();
        e.b().a(new a() {
            public void execute() {
                if (b.e() && !b.d()) {
                    for (b.a a : b.b()) {
                        b.a(a, false);
                    }
                    b.c();
                }
            }
        });
    }

    public long e() {
        return this.d;
    }

    public int f() {
        return this.c;
    }

    private void j() {
        if (!this.j.hasMessages(1)) {
            this.j.sendEmptyMessageDelayed(1, this.d);
            this.g = System.currentTimeMillis() + this.d;
            j.a("UPE", "start the polling job to upload ALL events.");
        }
    }

    private void k() {
        if (this.j.hasMessages(1)) {
            this.j.removeMessages(1);
            j.a("UPE", "stop the polling job to upload ALL events.");
        }
    }

    private void l() {
        if (o.b()) {
            j.d("UPE", "The job of Uploading is running when trigger upload ALL events.");
            return;
        }
        switch (this.c) {
            case 0:
                h hVar = new h();
                int a = hVar.a(1);
                boolean c = hVar.c();
                if ((a != 1 || c) && a <= 1) {
                    j.d("UPE", "There is no event(exclude mistat_monitor) in db, so don't trigger the uploading job.");
                    return;
                } else {
                    new o(1).a();
                    return;
                }
            case 1:
                List a2 = new h().a(Long.MAX_VALUE);
                long j = 0;
                Iterator it = a2.iterator();
                while (true) {
                    long j2 = j;
                    if (it.hasNext()) {
                        j = ((StatEventPojo) it.next()).a() + j2;
                    } else {
                        j.b("UPE", "total bytes is " + j2);
                        if (j2 >= this.e) {
                            new o(1).a();
                            return;
                        } else {
                            j.d("UPE", "The size is not enough, so don't trigger the uploading job.");
                            return;
                        }
                    }
                }
            default:
                return;
        }
    }

    private void m() {
        if (new h().a(1) <= 0 || o.b()) {
            j.d("UPE", "triggerUploadAllEventsForInitialization: The condition is NOT sufficient.");
            return;
        }
        j.a("UPE", "Upload ALL events during initialization.");
        new o(1).a();
    }

    private void n() {
        Context a = d.a();
        this.h = m.a(a, "upload_interval_basic", 90000);
        this.i = m.a(a, "upload_interval_min", 15000);
        j.a("UPE", "initUploadIntervalForBasicEvent: basicInterval=" + this.h + " minInterval=" + this.i);
    }

    public void a(long j, long j2) {
        if (j <= 0 || j2 <= 0 || j < j2 || j > 3600000) {
            j.d("UPE", "basicInterval or minInterval is wrong");
            return;
        }
        Context a = d.a();
        m.b(a, "upload_interval_basic", j);
        m.b(a, "upload_interval_min", j2);
        this.h = j;
        this.i = j2;
        j.a("UPE", "updateUploadIntervalForBasicEvent: basicInterval=" + this.h + " minInterval=" + this.i);
    }

    private boolean o() {
        if (!t.a(this.f, this.i)) {
            j.a("UPE", String.format("The interval to last uploading < %d.", new Object[]{Long.valueOf(this.i)}));
            return false;
        } else if (this.c != 0 || t.a(this.g, this.i)) {
            return true;
        } else {
            j.a("UPE", String.format("The interval to next uploading < %d.", new Object[]{Long.valueOf(this.i)}));
            return false;
        }
    }

    private void p() {
        if (o.b()) {
            j.d("UPE", "The job of Uploading is running when trigger upload BASIC events.");
            return;
        }
        h hVar = new h();
        int a = hVar.a(2);
        boolean c = hVar.c();
        if ((a != 1 || c) && a <= 1) {
            j.d("UPE", "No basic event(exclude mistat_monitor) in DB, so don't trigger the uploading job.");
        } else {
            new o(2).a();
        }
    }

    private void q() {
        if (this.j.hasMessages(3)) {
            this.j.removeMessages(3);
            j.a("UPE", "stop the polling job to upload BASIC event.");
        }
    }

    private void r() {
        if (!this.j.hasMessages(3)) {
            this.j.sendEmptyMessageDelayed(3, this.h);
            j.a("UPE", "start the polling job to upload BASIC event.");
        }
    }

    private void b(long j) {
        if (!this.j.hasMessages(4)) {
            this.j.sendEmptyMessageDelayed(4, j);
            j.a("UPE", "delay to upload BASIC events.");
        }
    }

    public void g() {
        long currentTimeMillis = System.currentTimeMillis() - this.f;
        if (currentTimeMillis >= this.i) {
            q();
            p();
            return;
        }
        b(this.i - currentTimeMillis);
    }

    public void h() {
        if (this.j.hasMessages(4)) {
            j.a("UPE", "cancel the delayed uploading BASIC event.");
            this.j.removeMessages(4);
            return;
        }
        r();
    }

    public void a(int i) {
        j.b("UPE", "Set new network: %d", Integer.valueOf(i));
        this.b = i;
        m.b(d.a(), "upload_network", this.b);
    }

    private void s() {
        if (this.c == 0) {
            j.a("UPE", "Continue the upload polling for ALL events.");
            this.j.sendEmptyMessageDelayed(1, this.d);
            this.g = System.currentTimeMillis() + this.d;
        }
    }

    private void t() {
        j.a("UPE", "Continue the upload polling for BASIC events.");
        this.j.sendEmptyMessageDelayed(3, this.h);
    }

    public boolean b(int i) {
        switch (i) {
            case 1:
            case 3:
                if ((l.i(d.a()) & this.b) == 0) {
                    j.d("UPE", "Current network does not meet customized setting.");
                    break;
                }
                return true;
            case 2:
            case 4:
            case 5:
                if (!l.a(d.a())) {
                    j.d("UPE", "Current network is not connected.");
                    break;
                }
                return true;
        }
        return false;
    }

    public void a(long j) {
        if (j > this.g) {
            this.g = j;
        }
    }
}
