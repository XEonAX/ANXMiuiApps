package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.data.c;
import com.alipay.sdk.sys.b;
import com.alipay.sdk.util.e;
import com.alipay.sdk.util.j;
import com.alipay.sdk.util.l;
import com.alipay.sdk.widget.a;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class AuthTask {
    static final Object a = e.class;
    private static final int b = 73;
    private Activity c;
    private a d;

    public AuthTask(Activity activity) {
        this.c = activity;
        b a = b.a();
        Context context = this.c;
        c.a();
        a.a(context);
        com.alipay.sdk.app.statistic.a.a(activity);
        this.d = new a(activity, a.c);
    }

    private e.a a() {
        return new a(this);
    }

    private void b() {
        if (this.d != null) {
            this.d.a();
        }
    }

    private void c() {
        if (this.d != null) {
            this.d.b();
        }
    }

    public synchronized Map<String, String> authV2(String str, boolean z) {
        return j.a(auth(str, z));
    }

    public synchronized String auth(String str, boolean z) {
        String a;
        if (z) {
            b();
        }
        b a2 = b.a();
        Context context = this.c;
        c.a();
        a2.a(context);
        String a3 = i.a();
        try {
            Context context2 = this.c;
            String a4 = new com.alipay.sdk.sys.a(this.c).a(str);
            if (a(context2)) {
                a = new e(context2, new a(this)).a(a4);
                if (!TextUtils.equals(a, e.b)) {
                    if (TextUtils.isEmpty(a)) {
                        a = i.a();
                    }
                }
            }
            a = b(context2, a4);
        } catch (Exception e) {
            a = a3;
            return a;
        } finally {
            com.alipay.sdk.data.a.b().a(this.c);
            c();
            a3 = this.c;
            com.alipay.sdk.app.statistic.a.b(a3, str);
        }
        return a;
    }

    private String a(Activity activity, String str) {
        String a = new com.alipay.sdk.sys.a(this.c).a(str);
        if (!a((Context) activity)) {
            return b(activity, a);
        }
        String a2 = new e(activity, new a(this)).a(a);
        if (TextUtils.equals(a2, e.b)) {
            return b(activity, a);
        }
        if (TextUtils.isEmpty(a2)) {
            return i.a();
        }
        return a2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0050  */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0050  */
    /* JADX WARNING: Missing block: B:7:0x0038, code:
            r0 = a((com.alipay.sdk.protocol.b) r3.get(r2));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private String b(Activity activity, String str) {
        j jVar;
        String e;
        b();
        j jVar2 = null;
        try {
            List a = com.alipay.sdk.protocol.b.a(new com.alipay.sdk.packet.impl.a().a((Context) activity, str).a().optJSONObject(com.alipay.sdk.cons.c.c).optJSONObject(com.alipay.sdk.cons.c.d));
            c();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= a.size()) {
                    c();
                    jVar = null;
                    break;
                } else if (((com.alipay.sdk.protocol.b) a.get(i2)).a == com.alipay.sdk.protocol.a.WapPay) {
                    break;
                } else {
                    i = i2 + 1;
                }
            }
        } catch (IOException e2) {
            e = e2;
            jVar2 = j.a(j.NETWORK_ERROR.h);
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.a, (Throwable) e);
            jVar = jVar2;
            if (jVar == null) {
            }
            return i.a(jVar.h, jVar.i, "");
        } catch (Throwable th) {
            e = th;
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, com.alipay.sdk.app.statistic.c.t, (Throwable) e);
            jVar = jVar2;
            if (jVar == null) {
            }
            return i.a(jVar.h, jVar.i, "");
        } finally {
            c();
        }
        if (jVar == null) {
            jVar = j.a(j.FAILED.h);
        }
        return i.a(jVar.h, jVar.i, "");
        return e;
    }

    private static boolean a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(l.a(), 128);
            if (packageInfo != null && packageInfo.versionCode >= 73) {
                return true;
            }
            return false;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    private String a(com.alipay.sdk.protocol.b bVar) {
        String[] strArr = bVar.b;
        Bundle bundle = new Bundle();
        bundle.putString("url", strArr[0]);
        Intent intent = new Intent(this.c, H5AuthActivity.class);
        intent.putExtras(bundle);
        this.c.startActivity(intent);
        synchronized (a) {
            try {
                a.wait();
            } catch (InterruptedException e) {
                return i.a();
            }
        }
        String str = i.a;
        if (TextUtils.isEmpty(str)) {
            return i.a();
        }
        return str;
    }
}
