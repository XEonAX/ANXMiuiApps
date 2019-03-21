package com.xiaomi.metoknlp.devicediscover;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import com.xiaomi.metoknlp.MetokApplication;
import com.xiaomi.metoknlp.a;
import com.xiaomi.metoknlp.a.d;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: DiscoverService */
public class m {
    private static String Z;
    private static m ae;
    private f aa;
    private c ab = new c();
    private g ac;
    private j ad;
    private Context mContext;
    private Handler mHandler = new a(this);
    private Object mLock = new Object();
    private int mState = 0;

    public static m O() {
        if (ae == null) {
            ae = new m();
        }
        return ae;
    }

    public void a(Context context) {
        this.mContext = context;
        this.ac = new g(this, null);
        this.aa = new f(context);
        this.aa.start();
        this.aa.a(this.ac);
    }

    public void onDestroy() {
        if (this.aa != null) {
            this.aa.stop();
            this.aa.F();
            this.aa = null;
        }
        this.ac = null;
    }

    private void P() {
        l.a(this.mContext, this.mHandler, 0);
    }

    void Q() {
        if (a.g().k()) {
            switch (this.mState) {
                case 0:
                    this.mState = 1;
                    R();
                    if (this.ab != null) {
                        P();
                        return;
                    }
                    return;
                case 1:
                    this.mState = 2;
                    S();
                    return;
                case 2:
                    this.mState = 3;
                    U();
                    return;
                case 3:
                    this.mState = 4;
                    this.ad.cancel(true);
                    this.ad = null;
                    T();
                    return;
                default:
                    return;
            }
        }
    }

    private void R() {
        String e = i.e(this.mContext);
        String a = i.a(this.mContext, 2);
        String a2 = i.a(this.mContext, 1);
        if (e != null && a != null && a2 != null && this.ab != null) {
            this.ab.d(Build.MODEL).e(d.getImei()).f(e).i(a).h(a2).a(this.ac.getStart()).b(this.ac.getDuration());
        }
    }

    private void b(HashMap hashMap) {
        if (hashMap != null) {
            String d = i.d(this.mContext);
            if (!(this.ab == null || d == null)) {
                this.ab.j(d);
                if (hashMap.containsKey(d)) {
                    this.ab.k((String) hashMap.get(d));
                }
            }
            d = i.c(this.mContext);
            if (d != null && hashMap.containsKey(d)) {
                hashMap.remove(d);
            }
            if (this.ab != null && hashMap.size() > 0) {
                this.ab.a(new ArrayList(hashMap.values()));
                Q();
            }
        }
    }

    private void S() {
        Q();
    }

    private void T() {
        if (this.mState == 4 && this.ab != null) {
            ((MetokApplication) this.mContext).notifyDataChange(this.ab.v().y().toString());
        }
    }

    private void U() {
        this.ad = new j(this, null);
        Z = a.g().j();
        String stringBuffer = new StringBuffer(Z).append("/api/v2/realip").toString();
        this.ad.execute(new String[]{stringBuffer});
    }

    public void fecthDeviceImmediately() {
        if (this.aa != null) {
            this.aa.fecthDeviceImmediately();
        }
    }
}
