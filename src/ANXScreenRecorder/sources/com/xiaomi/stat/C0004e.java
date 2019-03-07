package com.xiaomi.stat;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.SystemClock;
import com.xiaomi.stat.a.l;
import com.xiaomi.stat.b.e;
import com.xiaomi.stat.c.i;
import com.xiaomi.stat.d.c;
import com.xiaomi.stat.d.k;
import com.xiaomi.stat.d.m;
import com.xiaomi.stat.d.n;
import com.xiaomi.stat.d.r;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: com.xiaomi.stat.e */
public class C0004e {
    private boolean a;
    private String b;
    private String c;
    private Context d;
    private Executor e;
    private long f;
    private Map<String, Long> g;
    private J h;
    private int i;
    private int j;
    private int k;
    private long l;

    public C0004e(Context context, String str, String str2, boolean z) {
        this(context, str, str2, z, null);
    }

    public C0004e(Context context, String str, String str2, boolean z, String str3) {
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.a = true;
        a(context, str, str2, z, str3);
    }

    public C0004e(Context context, String str, String str2, String str3, boolean z) {
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.a = false;
        this.b = str3;
        a(context, str, str2, z, null);
    }

    private void a(Context context, String str, String str2, boolean z, String str3) {
        this.d = context.getApplicationContext();
        I.a(context.getApplicationContext(), str, str2);
        if (!this.a) {
            str = this.b;
        }
        this.c = str;
        this.e = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
        if (this.a) {
            e();
        }
        r.a();
        this.e.execute(new C0005f(this, str3, z));
    }

    private long d() {
        return r.b();
    }

    private void e() {
        ((Application) this.d).registerActivityLifecycleCallbacks(new q(this));
    }

    private void a(String str, long j, long j2) {
        this.e.execute(new t(this, str, j, j2));
    }

    public void a(boolean z) {
        if (this.a) {
            this.e.execute(new u(this, z));
        }
    }

    public void b(boolean z) {
        if (this.a) {
            this.e.execute(new v(this, z));
        }
    }

    public void a(String str) {
        if (this.g == null) {
            this.g = new HashMap();
        }
        this.g.put(str, Long.valueOf(SystemClock.elapsedRealtime()));
    }

    public void b(String str) {
        a(str, null);
    }

    public void a(String str, MiStatParams miStatParams) {
        if (this.g != null) {
            Long l = (Long) this.g.get(str);
            if (l != null) {
                this.g.remove(str);
                if (!n.a(str)) {
                    return;
                }
                if (miStatParams == null || c(miStatParams)) {
                    long elapsedRealtime = SystemClock.elapsedRealtime() - l.longValue();
                    this.e.execute(new w(this, str, d(), elapsedRealtime, miStatParams));
                }
            }
        }
    }

    public void c(String str) {
        a(str, null, null);
    }

    public void a(String str, String str2) {
        a(str, str2, null);
    }

    public void b(String str, MiStatParams miStatParams) {
        a(str, null, miStatParams);
    }

    public void a(String str, String str2, MiStatParams miStatParams) {
        a(str, str2, miStatParams, false);
    }

    private void a(String str, String str2, MiStatParams miStatParams, boolean z) {
        if (!n.a(str)) {
            n.e(str);
        } else if (str2 != null && !n.a(str2)) {
            n.e(str2);
        } else if (miStatParams == null || c(miStatParams)) {
            this.e.execute(new x(this, z, str, str2, miStatParams));
        }
    }

    public void d(String str) {
        b(str, null, null);
    }

    public void b(String str, String str2) {
        b(str, str2, null);
    }

    public void c(String str, MiStatParams miStatParams) {
        a(str, null, miStatParams);
    }

    public void b(String str, String str2, MiStatParams miStatParams) {
        a(str, str2, miStatParams, true);
    }

    public void c(boolean z) {
        if (this.a) {
            C0001b.d(z);
            if (this.h != null) {
                this.h.a(z);
            } else if (z) {
                this.h = new J(this);
                this.h.a();
            }
        }
    }

    public void a(Throwable th) {
        a(th, null);
    }

    public void a(Throwable th, String str) {
        a(th, str, true);
    }

    void a(Throwable th, String str, boolean z) {
        if (th != null) {
            this.e.execute(new y(this, th, str, z));
        }
    }

    public void c(String str, String str2) {
        if (!n.a(str)) {
            n.e(str);
        } else if (n.b(str2)) {
            MiStatParams miStatParams = new MiStatParams();
            miStatParams.putString(str, str2);
            a(miStatParams);
        } else {
            n.f(str2);
        }
    }

    public void a(MiStatParams miStatParams) {
        a(miStatParams, false);
    }

    public void d(String str, String str2) {
        if (!n.a(str)) {
            n.e(str);
        } else if (n.b(str2)) {
            MiStatParams miStatParams = new MiStatParams();
            miStatParams.putString(str, str2);
            b(miStatParams);
        } else {
            n.f(str2);
        }
    }

    public void b(MiStatParams miStatParams) {
        a(miStatParams, true);
    }

    private void a(MiStatParams miStatParams, boolean z) {
        if (miStatParams == null || miStatParams.isEmpty()) {
            k.e("set user profile failed: empty property !");
        } else if (c(miStatParams)) {
            this.e.execute(new z(this, z, miStatParams));
        }
    }

    public void e(String str) {
        if (this.a) {
            this.e.execute(new C0007h(this, str));
        }
    }

    public void a(int i) {
        if (this.a) {
            C0001b.a(i);
        }
    }

    public int a() {
        return C0001b.i();
    }

    public void b(int i) {
        if (this.a) {
            C0001b.b(i);
        }
    }

    public int b() {
        return C0001b.j();
    }

    public void d(boolean z) {
        this.e.execute(new C0008i(this, z));
    }

    private void f() {
        if (this.a) {
            int p = C0001b.p();
            int a = c.a();
            if (p == -1) {
                C0001b.e(a);
            } else if (p < a) {
                this.e.execute(new C0009j(this, a, p));
            }
        }
    }

    private boolean g(boolean z) {
        if (C0001b.d(this.c)) {
            if (C0001b.e(this.c) != 2) {
                return true;
            }
            return false;
        } else if (!C0001b.e() || z) {
            return m.b(this.d);
        } else {
            return true;
        }
    }

    private boolean g() {
        if (C0001b.d(this.c) && C0001b.e(this.c) == 2) {
            return false;
        }
        return true;
    }

    private void h() {
        this.e.execute(new k(this));
    }

    private boolean a(long j, long j2) {
        if (j == -1) {
            return true;
        }
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(j);
        Calendar instance2 = Calendar.getInstance();
        instance2.setTimeInMillis(j2);
        if (instance.get(1) == instance2.get(1) && instance.get(6) == instance2.get(6)) {
            return false;
        }
        return true;
    }

    public void a(boolean z, String str) {
        if (this.a) {
            this.e.execute(new l(this, z, str));
        }
    }

    public void a(HttpEvent httpEvent) {
        if (httpEvent != null) {
            this.e.execute(new m(this, httpEvent));
        }
    }

    public String c() {
        Object futureTask = new FutureTask(new n(this));
        e.a().b().execute(futureTask);
        try {
            return (String) futureTask.get(5, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
        } catch (ExecutionException e2) {
        } catch (TimeoutException e3) {
        }
        return null;
    }

    public boolean e(boolean z) {
        if (!i()) {
            return false;
        }
        C0001b.f(z);
        return true;
    }

    private boolean i() {
        int i = 1;
        if ((this.d.getApplicationInfo().flags & 1) == 0) {
            return false;
        }
        PackageManager packageManager = this.d.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(this.d.getPackageName(), 64);
            PackageInfo packageInfo2 = packageManager.getPackageInfo("android", 64);
            if (packageInfo == null) {
                return false;
            }
            int i2;
            if (packageInfo.signatures != null) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (((packageInfo.signatures.length > 0 ? 1 : 0) & i2) == 0 || packageInfo2 == null) {
                return false;
            }
            int i3 = packageInfo2.signatures != null ? 1 : 0;
            if (packageInfo2.signatures.length <= 0) {
                i = 0;
            }
            if ((i & i3) != 0) {
                return packageInfo2.signatures[0].equals(packageInfo.signatures[0]);
            }
            return false;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    private void a(int i, int i2, long j, long j2) {
        this.e.execute(new o(this, i, i2, j, j2));
    }

    public void f(boolean z) {
        k.a(z);
    }

    private boolean c(MiStatParams miStatParams) {
        return miStatParams.getClass().equals(MiStatParams.class) && miStatParams.getParamsNumber() <= 30;
    }

    private void a(l lVar) {
        com.xiaomi.stat.a.c.a().a(lVar);
        i.a().d();
    }

    public void e(String str, String str2) {
        if (!n.a(str)) {
            n.e(str);
        } else if (n.d(str2)) {
            this.e.execute(new p(this, str, str2));
        } else {
            k.e("invalid plain text value for event: " + str);
        }
    }
}
