package com.alipay.sdk.app.statistic;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.packet.impl.d;
import com.alipay.sdk.util.i;
import java.io.IOException;

final class b implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ String b;

    b(Context context, String str) {
        this.a = context;
        this.b = str;
    }

    public final void run() {
        d dVar = new d();
        try {
            String b = i.b(this.a, a.a, null);
            if (!(TextUtils.isEmpty(b) || dVar.a(this.a, b) == null)) {
                i.a(this.a, a.a);
            }
        } catch (Throwable th) {
        }
        try {
            if (!TextUtils.isEmpty(this.b)) {
                dVar.a(this.a, this.b);
            }
        } catch (IOException e) {
            i.a(this.a, a.a, this.b);
        } catch (Throwable th2) {
        }
    }
}
