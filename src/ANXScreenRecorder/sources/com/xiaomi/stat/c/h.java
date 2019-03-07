package com.xiaomi.stat.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xiaomi.stat.d.l;
import com.xiaomi.stat.d.r;

class h extends BroadcastReceiver {
    final /* synthetic */ g a;

    h(g gVar) {
        this.a = gVar;
    }

    public void onReceive(Context context, Intent intent) {
        Object obj = r.b() - this.a.n > ((long) this.a.k) ? 1 : null;
        if (l.a() && this.a.l && obj != null) {
            this.a.b();
            this.a.n = r.b();
        }
    }
}
