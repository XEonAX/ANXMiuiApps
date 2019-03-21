package com.xiaomi.metoknlp.devicediscover;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: WifiCampStatistics */
class k extends BroadcastReceiver {
    final /* synthetic */ f S;

    k(f fVar) {
        this.S = fVar;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            if (this.S.L.hasMessages(1)) {
                this.S.L.removeMessages(1);
            }
            this.S.L.sendMessageDelayed(this.S.L.obtainMessage(1), 10000);
        }
    }
}
