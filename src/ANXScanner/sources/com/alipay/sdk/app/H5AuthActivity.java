package com.alipay.sdk.app;

public class H5AuthActivity extends H5PayActivity {
    public final void a() {
        Object obj = AuthTask.a;
        synchronized (obj) {
            try {
                obj.notify();
            } catch (Exception e) {
            }
        }
    }
}
