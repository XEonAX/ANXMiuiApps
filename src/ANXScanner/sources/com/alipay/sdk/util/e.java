package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.content.ServiceConnection;
import com.alipay.android.app.IAlixPay;
import com.alipay.android.app.IRemoteServiceCallback;
import com.alipay.sdk.app.statistic.c;
import mtopsdk.common.util.SymbolExpUtil;

public class e {
    public static final String b = "failed";
    public Activity a;
    private IAlixPay c;
    private final Object d = IAlixPay.class;
    private boolean e;
    private a f;
    private ServiceConnection g = new f(this);
    private IRemoteServiceCallback h = new g(this);

    public interface a {
        void a();
    }

    public e(Activity activity, a aVar) {
        this.a = activity;
        this.f = aVar;
    }

    public final String a(String str) {
        try {
            com.alipay.sdk.util.l.a a = l.a(this.a);
            if (a.a()) {
                return b;
            }
            if (a != null && a.b > 78) {
                String a2 = l.a();
                Intent intent = new Intent();
                intent.setClassName(a2, "com.alipay.android.app.TransProcessPayActivity");
                this.a.startActivity(intent);
                Thread.sleep(200);
            }
            return b(str);
        } catch (Throwable th) {
            com.alipay.sdk.app.statistic.a.a(c.b, c.D, th);
        }
    }

    private void a(com.alipay.sdk.util.l.a aVar) throws InterruptedException {
        if (aVar != null && aVar.b > 78) {
            String a = l.a();
            Intent intent = new Intent();
            intent.setClassName(a, "com.alipay.android.app.TransProcessPayActivity");
            this.a.startActivity(intent);
            Thread.sleep(200);
        }
    }

    private String b(String str) {
        Intent intent = new Intent();
        String a = l.a();
        intent.setPackage(a);
        intent.setAction(a + ".IAlixPay");
        a = l.h(this.a);
        try {
            String str2;
            if (this.a.getApplicationContext().bindService(intent, this.g, 1)) {
                synchronized (this.d) {
                    if (this.c == null) {
                        try {
                            this.d.wait((long) com.alipay.sdk.data.a.b().a());
                        } catch (Throwable e) {
                            com.alipay.sdk.app.statistic.a.a(c.b, c.B, e);
                        }
                    }
                }
                try {
                    if (this.c == null) {
                        com.alipay.sdk.app.statistic.a.a(c.b, c.v, a + SymbolExpUtil.SYMBOL_VERTICALBAR + l.h(this.a) + SymbolExpUtil.SYMBOL_VERTICALBAR + l.i(this.a));
                        str2 = b;
                        try {
                            this.c.unregisterCallback(this.h);
                        } catch (Throwable th) {
                        }
                        try {
                            this.a.getApplicationContext().unbindService(this.g);
                        } catch (Throwable th2) {
                        }
                        this.f = null;
                        this.h = null;
                        this.g = null;
                        this.c = null;
                        if (!this.e || this.a == null) {
                            return str2;
                        }
                        this.a.setRequestedOrientation(0);
                        this.e = false;
                        return str2;
                    }
                    if (this.f != null) {
                        this.f.a();
                    }
                    if (this.a.getRequestedOrientation() == 0) {
                        this.a.setRequestedOrientation(1);
                        this.e = true;
                    }
                    this.c.registerCallback(this.h);
                    str2 = this.c.Pay(str);
                    try {
                        this.c.unregisterCallback(this.h);
                    } catch (Throwable th3) {
                    }
                    try {
                        this.a.getApplicationContext().unbindService(this.g);
                    } catch (Throwable th4) {
                    }
                    this.f = null;
                    this.h = null;
                    this.g = null;
                    this.c = null;
                    if (!this.e || this.a == null) {
                        return str2;
                    }
                    this.a.setRequestedOrientation(0);
                    this.e = false;
                    return str2;
                } catch (Throwable th5) {
                }
            } else {
                throw new Throwable("bindService fail");
            }
            this.f = null;
            this.h = null;
            this.g = null;
            this.c = null;
            if (!this.e && this.a != null) {
                this.a.setRequestedOrientation(0);
                this.e = false;
                return str2;
            }
            this.a.getApplicationContext().unbindService(this.g);
            this.f = null;
            this.h = null;
            this.g = null;
            this.c = null;
            return !this.e ? str2 : str2;
        } catch (Throwable e2) {
            com.alipay.sdk.app.statistic.a.a(c.b, c.A, e2);
            return b;
        }
    }

    private void a() {
        this.a = null;
    }
}
