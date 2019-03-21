package com.alibaba.mtl.appmonitor;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.alibaba.mtl.appmonitor.a.f;
import com.alibaba.mtl.appmonitor.d.j;
import com.alibaba.mtl.log.d.b;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.r;
import mtopsdk.common.util.SymbolExpUtil;

/* compiled from: BackgroundTrigger */
class a implements Runnable {
    private static boolean j = false;
    private static boolean l = false;
    private Application b;
    private boolean k = true;

    @TargetApi(14)
    /* compiled from: BackgroundTrigger */
    class a implements ActivityLifecycleCallbacks {
        /* renamed from: a */
        private Runnable f46a;

        a(Runnable runnable) {
            a.this = runnable;
        }

        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
        }

        public void onActivityPaused(Activity activity) {
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
            r.a().f(4);
            r.a().a(4, a.this, 60000);
        }

        public void onActivityStopped(Activity activity) {
            r.a().f(4);
            r.a().a(4, a.this, 60000);
        }
    }

    @TargetApi(14)
    public static void init(Application application) {
        if (!j) {
            i.a("BackgroundTrigger", "init BackgroundTrigger");
            l = a(application.getApplicationContext());
            Runnable aVar = new a(application);
            if (l) {
                r.a().a(4, aVar, 60000);
            } else if (VERSION.SDK_INT >= 14) {
                aVar.getClass();
                application.registerActivityLifecycleCallbacks(new a(aVar));
            }
            j = true;
        }
    }

    public a(Application application) {
        this.b = application;
    }

    public void run() {
        int i = 0;
        i.a("BackgroundTrigger", "[bg check]");
        boolean b = b.b(this.b.getApplicationContext());
        if (this.k != b) {
            this.k = b;
            f[] a;
            int length;
            f fVar;
            if (b) {
                j.a().j();
                a = f.a();
                length = a.length;
                while (i < length) {
                    fVar = a[i];
                    AppMonitorDelegate.setStatisticsInterval(fVar, fVar.c());
                    i++;
                }
                com.alibaba.mtl.log.a.l();
            } else {
                a = f.a();
                length = a.length;
                while (i < length) {
                    fVar = a[i];
                    AppMonitorDelegate.setStatisticsInterval(fVar, fVar.d());
                    i++;
                }
                AppMonitorDelegate.triggerUpload();
                com.alibaba.mtl.log.a.k();
            }
        }
        if (l) {
            r.a().a(4, this, 60000);
        }
    }

    private static boolean a(Context context) {
        Object a = b.a(context);
        i.a("BackgroundTrigger", "[checkRuningProcess]:", a);
        if (TextUtils.isEmpty(a) || a.indexOf(SymbolExpUtil.SYMBOL_COLON) == -1) {
            return false;
        }
        return true;
    }
}
