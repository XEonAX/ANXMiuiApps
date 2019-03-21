package com.xiaomi.metoknlp.devicediscover;

import java.net.InetAddress;

/* compiled from: Scanner */
class d implements Runnable {
    private String E;
    final /* synthetic */ l F;

    public d(l lVar, String str) {
        this.F = lVar;
        this.E = str;
    }

    public void run() {
        try {
            InetAddress.getByName(this.E).isReachable(500);
        } catch (Exception e) {
        }
    }
}
