package com.xiaomi.metoknlp.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import miui.hybrid.Response;

/* compiled from: ConnectivityMonitor */
class e extends BroadcastReceiver {
    final /* synthetic */ c af;

    private e(c cVar) {
        this.af = cVar;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (action != null && action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                if (networkInfo == null) {
                    return;
                }
                if (networkInfo.isConnected()) {
                    this.af.mHandler.obtainMessage(Response.CODE_GENERIC_ERROR, networkInfo).sendToTarget();
                } else if (networkInfo.getState() == State.DISCONNECTED) {
                    this.af.mHandler.obtainMessage(Response.CODE_CONFIG_ERROR, networkInfo).sendToTarget();
                }
            }
        }
    }
}
