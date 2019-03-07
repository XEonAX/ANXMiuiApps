package com.xiaomi.stat.b;

import android.content.BroadcastReceiver.PendingResult;

class c implements Runnable {
    final /* synthetic */ PendingResult a;
    final /* synthetic */ b b;

    c(b bVar, PendingResult pendingResult) {
        this.b = bVar;
        this.a = pendingResult;
    }

    public void run() {
        this.b.a.a(false, false);
        h.a().a(false);
        d.a().b();
        this.a.finish();
    }
}
