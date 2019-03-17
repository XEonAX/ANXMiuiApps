package com.alipay.sdk.auth;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class g implements OnClickListener {
    final /* synthetic */ e a;

    g(e eVar) {
        this.a = eVar;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.a.cancel();
        AuthActivity.this.g = false;
        h.a(AuthActivity.this, AuthActivity.this.d + "?resultCode=150");
        AuthActivity.this.finish();
    }
}
