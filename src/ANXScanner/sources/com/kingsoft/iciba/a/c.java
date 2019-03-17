package com.kingsoft.iciba.a;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;

public class c {
    private static final String a = c.class.getSimpleName();
    private Context b;
    private long c;
    private Context d;
    private Class e;
    private Object f;

    public c(Context context) {
        this.b = context;
    }

    private void d() {
        try {
            if (this.d == null) {
                this.d = this.b.createPackageContext("com.kingsoft", 3);
                this.e = Class.forName("com.kingsoft.util.SDKSimpleMean", true, this.d.getClassLoader());
                if (this.e != null) {
                    this.f = this.e.newInstance();
                } else {
                    this.d = null;
                }
            }
        } catch (Throwable e) {
            this.d = null;
            Log.e(a, "init ciba context failed", e);
        }
    }

    public final ArrayList a(String str) {
        try {
            d();
            if (!(this.d == null || this.e == null || this.f == null)) {
                return (ArrayList) this.e.getMethod("getSimpleMean", new Class[]{String.class, Context.class}).invoke(this.f, new Object[]{str, this.d});
            }
        } catch (Throwable e) {
            Log.e(a, "Get simple mean failed", e);
        }
        return null;
    }

    public final void a(long j) {
        this.c = j;
        if (b()) {
            new Thread(new d(this)).start();
        }
    }

    public final boolean a() {
        return e.a(this.b, "com.kingsoft");
    }

    public final boolean b() {
        if (!a()) {
            return false;
        }
        d();
        if (this.d == null) {
            return false;
        }
        if (e.d(this.d) >= 84) {
            return true;
        }
        this.d = null;
        return false;
    }
}
