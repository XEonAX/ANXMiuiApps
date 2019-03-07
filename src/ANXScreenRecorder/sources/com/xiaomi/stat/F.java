package com.xiaomi.stat;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import com.xiaomi.stat.d.r;

public class F {
    public static final int a = 1;
    private static final int b = 10000;
    private static final int c = 3;
    private Handler d;
    private Runnable e;
    private HandlerThread f;
    private int g = 3;
    private int h = 10000;
    private int i = 0;
    private boolean j = false;

    class a implements Callback {
        private Handler b;

        /* synthetic */ a(F f, G g) {
            this();
        }

        private a() {
            this.b = null;
        }

        private void a(Handler handler) {
            this.b = handler;
        }

        public boolean handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    int intValue = ((Integer) msg.obj).intValue();
                    if (intValue >= F.this.g) {
                        F.this.b();
                        break;
                    }
                    F.this.e.run();
                    if (F.this.j) {
                        Message obtainMessage = this.b.obtainMessage(1);
                        obtainMessage.obj = Integer.valueOf(intValue + 1);
                        this.b.sendMessageDelayed(obtainMessage, (long) F.this.h);
                        break;
                    }
                    break;
            }
            return true;
        }
    }

    public F(Runnable runnable) {
        this.e = runnable;
    }

    private void d() {
        Object aVar = new a(this, null);
        this.f = new HandlerThread("".concat("_").concat(String.valueOf(r.b())));
        this.f.start();
        this.d = new Handler(this.f.getLooper(), aVar);
        aVar.a(this.d);
    }

    public void a() {
        if (this.d == null || !this.d.hasMessages(1)) {
            d();
            Message obtainMessage = this.d.obtainMessage(1);
            obtainMessage.obj = Integer.valueOf(0);
            this.j = true;
            this.d.sendMessageDelayed(obtainMessage, (long) this.i);
        }
    }

    public void b() {
        this.d.removeMessages(1);
        this.d.getLooper().quit();
        this.j = false;
    }

    public void a(int i) {
        this.i = i;
    }

    public void b(int i) {
        this.g = i;
    }

    public void c(int i) {
        this.h = i;
    }

    public boolean c() {
        return this.j;
    }
}
