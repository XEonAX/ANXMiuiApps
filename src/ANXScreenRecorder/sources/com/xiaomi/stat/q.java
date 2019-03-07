package com.xiaomi.stat;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.os.SystemClock;
import com.xiaomi.stat.d.r;

class q implements ActivityLifecycleCallbacks {
    final /* synthetic */ C0004e a;
    private int b;

    q(C0004e c0004e) {
        this.a = c0004e;
    }

    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
    }

    public void onActivityStarted(Activity activity) {
        if (this.a.i == 0) {
            this.a.l = SystemClock.elapsedRealtime();
            this.a.j = 0;
            this.a.k = 0;
            this.a.e.execute(new r(this));
        }
        this.a.i = this.a.i + 1;
    }

    public void onActivityResumed(Activity activity) {
        this.a.j = this.a.j + 1;
        this.b = System.identityHashCode(activity);
        this.a.f = SystemClock.elapsedRealtime();
        this.a.h();
    }

    public void onActivityPaused(Activity activity) {
        this.a.k = this.a.k + 1;
        if (this.b == System.identityHashCode(activity)) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.a.f;
            long l = this.a.d();
            this.a.a(activity.getClass().getName(), l - elapsedRealtime, l);
        }
    }

    public void onActivityStopped(Activity activity) {
        this.a.i = this.a.i - 1;
        if (this.a.i == 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.a.l;
            long b = r.b();
            this.a.a(this.a.j, this.a.k, b - elapsedRealtime, b);
            this.a.e.execute(new s(this));
        }
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
    }

    public void onActivityDestroyed(Activity activity) {
    }
}
