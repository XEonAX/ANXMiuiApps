package com.alibaba.mtl.appmonitor;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;

public class AppMonitorService extends Service {
    IMonitor a = null;

    public IBinder onBind(Intent intent) {
        if (this.a == null) {
            this.a = new Monitor(getApplication());
        }
        return (IBinder) this.a;
    }

    public void onDestroy() {
        if (this.a != null) {
            try {
                this.a.triggerUpload();
            } catch (RemoteException e) {
            }
        }
        super.onDestroy();
    }

    public void onLowMemory() {
        if (this.a != null) {
            try {
                this.a.triggerUpload();
            } catch (RemoteException e) {
            }
        }
        super.onLowMemory();
    }
}
