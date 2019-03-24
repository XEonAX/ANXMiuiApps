package com.miui.internal.server;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;

public final class CoreService extends Service {
    public static final String ACTION_BIND_SERVICE = "com.miui.internal.action.BIND_SERVICE";
    public static final String EXTRA_SERVICE_NAME = "extra_service_name";
    IBinder hC = new Binder();

    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        return 1;
    }

    public IBinder onBind(Intent intent) {
        if (Receiver.isActionEquals(intent, ACTION_BIND_SERVICE)) {
            if (DropBoxManagerService.SERVICE_NAME.equals(intent.getStringExtra(EXTRA_SERVICE_NAME))) {
                return DropBoxManagerService.getInstance();
            }
        }
        return this.hC;
    }
}
