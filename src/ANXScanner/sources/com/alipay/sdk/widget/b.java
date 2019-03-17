package com.alipay.sdk.widget;

import com.alipay.sdk.widget.a.a;

final class b implements Runnable {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public final void run() {
        if (this.a.f == null) {
            this.a.f = new a(this.a.g);
            this.a.f.setCancelable(this.a.e);
        }
        try {
            if (!this.a.f.isShowing()) {
                this.a.f.show();
            }
        } catch (Exception e) {
        }
    }
}
