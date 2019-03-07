package com.xiaomi.stat.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xiaomi.stat.d.k;
import com.xiaomi.stat.d.l;

class b extends BroadcastReceiver {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public void onReceive(Context context, Intent intent) {
        try {
            if (this.a.r != 1) {
                context.unregisterReceiver(this.a.u);
            } else if (l.a()) {
                e.a().b().execute(new c(this, goAsync()));
            }
        } catch (Throwable e) {
            k.e("ConfigManager", "mNetReceiver exception", e);
        }
    }
}
