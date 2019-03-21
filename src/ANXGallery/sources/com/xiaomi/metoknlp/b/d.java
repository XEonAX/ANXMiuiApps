package com.xiaomi.metoknlp.b;

import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: ConnectivityMonitor */
class d extends Handler {
    final /* synthetic */ c af;

    public d(c cVar, Looper looper) {
        this.af = cVar;
        super(looper);
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 200:
                synchronized (this.af.j) {
                    for (a a : this.af.j) {
                        a.a((NetworkInfo) message.obj);
                    }
                }
                return;
            case 201:
                synchronized (this.af.j) {
                    for (a a2 : this.af.j) {
                        a2.b((NetworkInfo) message.obj);
                    }
                }
                return;
            default:
                return;
        }
    }
}
