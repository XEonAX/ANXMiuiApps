package com.xiaomi.stat.c;

import android.os.IBinder;
import android.os.RemoteException;
import com.xiaomi.a.a.a.a.a;
import com.xiaomi.stat.d.k;

class e implements Runnable {
    final /* synthetic */ IBinder a;
    final /* synthetic */ d b;

    e(d dVar, IBinder iBinder) {
        this.b = dVar;
        this.a = iBinder;
    }

    public void run() {
        try {
            this.b.a[0] = a.a(this.a).a(this.b.b, this.b.c);
            k.b("UploadMode connected, do remote http post " + this.b.a[0]);
            synchronized (i.class) {
                try {
                    i.class.notify();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (RemoteException e2) {
            k.e("UploadMode error while uploading the data by IPC." + e2.toString());
            this.b.a[0] = null;
        }
    }
}
