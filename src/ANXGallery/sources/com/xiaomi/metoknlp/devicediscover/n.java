package com.xiaomi.metoknlp.devicediscover;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: WifiCampStatistics */
class n extends Handler {
    final /* synthetic */ f S;

    public n(f fVar, Looper looper) {
        this.S = fVar;
        super(looper);
    }

    public void handleMessage(Message message) {
        boolean z = false;
        switch (message.what) {
            case 1:
                this.S.a(false);
                return;
            case 2:
                if (message.obj != null) {
                    z = ((Boolean) message.obj).booleanValue();
                }
                this.S.b(z);
                return;
            default:
                return;
        }
    }
}
