package com.milink.api.v1;

import android.os.Handler;
import android.os.RemoteException;
import com.milink.api.v1.aidl.IMcsDeviceListener.Stub;
import com.milink.api.v1.type.DeviceType;

public class McsDeviceListener extends Stub {
    private MilinkClientManagerDelegate mDelegate = null;
    private Handler mHandler = new Handler();

    public void setDelegate(MilinkClientManagerDelegate delegate) {
        this.mDelegate = delegate;
    }

    public void onDeviceFound(final String deviceId, final String name, final String type) throws RemoteException {
        if (this.mDelegate != null) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    if (McsDeviceListener.this.mDelegate != null) {
                        McsDeviceListener.this.mDelegate.onDeviceFound(deviceId, name, DeviceType.create(type));
                    }
                }
            });
        }
    }

    public void onDeviceLost(final String deviceId) throws RemoteException {
        if (this.mDelegate != null) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    if (McsDeviceListener.this.mDelegate != null) {
                        McsDeviceListener.this.mDelegate.onDeviceLost(deviceId);
                    }
                }
            });
        }
    }
}
