package com.alipay.sdk.auth;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import com.alipay.sdk.cons.c;
import com.alipay.sdk.packet.b;
import com.alipay.sdk.packet.impl.a;
import java.util.List;

final class i implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ StringBuilder b;
    final /* synthetic */ APAuthInfo c;

    i(Activity activity, StringBuilder stringBuilder, APAuthInfo aPAuthInfo) {
        this.a = activity;
        this.b = stringBuilder;
        this.c = aPAuthInfo;
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        int i = 0;
        try {
            b bVar = null;
            try {
                bVar = new a().a(this.a, this.b.toString());
            } catch (Throwable th) {
            }
            if (h.c != null) {
                h.c.b();
                h.c = null;
            }
            if (bVar == null) {
                h.d = this.c.getRedirectUri() + "?resultCode=202";
                h.a(this.a, h.d);
                if (h.c != null) {
                    h.c.b();
                    return;
                }
                return;
            }
            List a = com.alipay.sdk.protocol.b.a(bVar.a().optJSONObject(c.c).optJSONObject(c.d));
            while (true) {
                int i2 = i;
                if (i2 >= a.size()) {
                    break;
                } else if (((com.alipay.sdk.protocol.b) a.get(i2)).a == com.alipay.sdk.protocol.a.WapPay) {
                    h.d = ((com.alipay.sdk.protocol.b) a.get(i2)).b[0];
                    break;
                } else {
                    i = i2 + 1;
                }
            }
            if (TextUtils.isEmpty(h.d)) {
                h.d = this.c.getRedirectUri() + "?resultCode=202";
                h.a(this.a, h.d);
                if (h.c != null) {
                    h.c.b();
                    return;
                }
                return;
            }
            Intent intent = new Intent(this.a, AuthActivity.class);
            intent.putExtra("params", h.d);
            intent.putExtra("redirectUri", this.c.getRedirectUri());
            this.a.startActivity(intent);
            if (h.c != null) {
                h.c.b();
            }
        } catch (Exception e) {
            if (h.c != null) {
                h.c.b();
            }
        } catch (Throwable th2) {
            if (h.c != null) {
                h.c.b();
            }
            throw th2;
        }
    }
}
