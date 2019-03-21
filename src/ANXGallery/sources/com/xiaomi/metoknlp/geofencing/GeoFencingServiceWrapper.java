package com.xiaomi.metoknlp.geofencing;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.xiaomi.metoknlp.geofencing.IGeoFencing.Stub;
import java.util.ArrayList;
import java.util.List;

public class GeoFencingServiceWrapper {
    private boolean mBinded = false;
    private Context mContext;
    private IGeoFencing mGeoFencingService;
    private Handler mHandler;
    private List<PendingFence> mPendingDelFence = new ArrayList();
    private List<PendingFence> mPendingFence = new ArrayList();
    private final ServiceConnection mServiceConnection = new ServiceConnection() {
        public void onServiceConnected(ComponentName name, IBinder service) {
            Log.v("GeoFencingServiceWrapper", "*** GeoFencingService connected ***");
            GeoFencingServiceWrapper.this.mGeoFencingService = Stub.asInterface(service);
            if (GeoFencingServiceWrapper.this.mHandler != null) {
                GeoFencingServiceWrapper.this.mHandler.sendEmptyMessage(3);
                GeoFencingServiceWrapper.this.mHandler.sendEmptyMessageDelayed(2, 60000);
            }
        }

        public void onServiceDisconnected(ComponentName name) {
            Log.v("GeoFencingServiceWrapper", "*** GeoFencingService disconnected ***");
            GeoFencingServiceWrapper.this.mGeoFencingService = null;
        }
    };
    private int mTryCount = 0;

    private class BinderServiceHandler extends Handler {
        public BinderServiceHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    GeoFencingServiceWrapper.this.mTryCount = GeoFencingServiceWrapper.this.mTryCount + 1;
                    GeoFencingServiceWrapper.this.bindService(GeoFencingServiceWrapper.this.mContext);
                    Log.w("GeoFencingServiceWrapper", "Try bindService count=" + GeoFencingServiceWrapper.this.mTryCount + ",mBinded=" + GeoFencingServiceWrapper.this.mBinded);
                    if (!GeoFencingServiceWrapper.this.mBinded && GeoFencingServiceWrapper.this.mHandler != null && GeoFencingServiceWrapper.this.mTryCount < 10) {
                        GeoFencingServiceWrapper.this.mHandler.sendEmptyMessageDelayed(1, 10000);
                        return;
                    }
                    return;
                case 2:
                    GeoFencingServiceWrapper.this.registerPendingFence();
                    return;
                case 3:
                    GeoFencingServiceWrapper.this.unregisterPendingFence();
                    return;
                default:
                    Log.w("GeoFencingServiceWrapper", "unknown message type ");
                    return;
            }
        }
    }

    private class PendingFence {
        public String mCoordinate;
        public String mDescribe;
        public long mExpiration;
        public double mLatitude;
        public double mLongitude;
        public String mPackageName;
        public float mRadius;

        public PendingFence(double latitude, double longitude, float radius, long expiration, String packageName, String describe, String coordinate) {
            this.mLatitude = latitude;
            this.mLongitude = longitude;
            this.mRadius = radius;
            this.mExpiration = expiration;
            this.mPackageName = packageName;
            this.mDescribe = describe;
            this.mCoordinate = coordinate;
        }
    }

    public GeoFencingServiceWrapper(Context context) {
        this.mContext = context;
        this.mBinded = false;
        bindService(context);
        HandlerThread handlerThread = new HandlerThread("GeoFencingServiceWrapper");
        handlerThread.start();
        this.mHandler = new BinderServiceHandler(handlerThread.getLooper());
        if (!this.mBinded) {
            this.mHandler.sendEmptyMessageDelayed(1, 10000);
        }
    }

    private void registerPendingFence() {
        int size;
        if (this.mPendingFence == null) {
            size = 0;
        } else {
            size = this.mPendingFence.size();
        }
        Log.d("GeoFencingServiceWrapper", "try registerPendingFence size=" + size);
        for (PendingFence fence : this.mPendingFence) {
            if (!(fence == null || this.mGeoFencingService == null)) {
                try {
                    this.mGeoFencingService.registerFenceListener(fence.mLatitude, fence.mLongitude, fence.mRadius, fence.mExpiration, fence.mPackageName, fence.mDescribe, fence.mCoordinate);
                } catch (RemoteException e) {
                    Log.w("GeoFencingServiceWrapper", "registerPendingFence:" + e);
                }
            }
        }
        if (this.mPendingFence != null) {
            this.mPendingFence.clear();
        }
    }

    private void unregisterPendingFence() {
        int size;
        if (this.mPendingDelFence == null) {
            size = 0;
        } else {
            size = this.mPendingDelFence.size();
        }
        Log.d("GeoFencingServiceWrapper", "try unregisterPendingFence size=" + size);
        for (PendingFence fence : this.mPendingDelFence) {
            if (!(fence == null || this.mGeoFencingService == null)) {
                try {
                    this.mGeoFencingService.unregisterFenceListener(fence.mPackageName, fence.mDescribe);
                } catch (RemoteException e) {
                    Log.w("GeoFencingServiceWrapper", "unregisterPendingFence:" + e);
                }
            }
        }
        if (this.mPendingDelFence != null) {
            this.mPendingDelFence.clear();
        }
    }

    public void registerFenceListener(Context context, double latitude, double longitude, float radius, long expiration, String packageName, String describe, String coordinate) {
        bindService(context);
        if (this.mGeoFencingService != null) {
            try {
                this.mGeoFencingService.registerFenceListener(latitude, longitude, radius, expiration, packageName, describe, coordinate);
                Log.d("GeoFencingServiceWrapper", "calling registerFenceListener success");
                return;
            } catch (RemoteException e) {
                throw new RuntimeException("GeoFencingService has died", e);
            }
        }
        Log.d("GeoFencingServiceWrapper", "registerFenceListener service not ready, add to pending list.");
        this.mPendingFence.add(new PendingFence(latitude, longitude, radius, expiration, packageName, describe, coordinate));
    }

    public void unregisterFenceListener(Context context, String packageName, String describe) {
        bindService(context);
        if (this.mGeoFencingService != null) {
            try {
                this.mGeoFencingService.unregisterFenceListener(packageName, describe);
                Log.d("GeoFencingServiceWrapper", "calling unregisterFenceListener success");
                return;
            } catch (RemoteException e) {
                throw new RuntimeException("GeoFencingService has died", e);
            }
        }
        Log.d("GeoFencingServiceWrapper", "unregisterFenceListener service not ready, add to pending list.");
        this.mPendingDelFence.add(new PendingFence(0.0d, 0.0d, 0.0f, -1, packageName, describe, ""));
    }

    public void bindService(Context context) {
        if (!this.mBinded && context != null) {
            if (this.mGeoFencingService == null) {
                Intent intent = new Intent("com.xiaomi.metoknlp.GeoFencingService");
                intent.setPackage("com.xiaomi.metoknlp");
                try {
                    if (context.bindService(intent, this.mServiceConnection, 1)) {
                        Log.d("GeoFencingServiceWrapper", "GeoFencingService started");
                        this.mBinded = true;
                        return;
                    }
                    Log.d("GeoFencingServiceWrapper", "Can't bind GeoFencingService");
                    this.mBinded = false;
                    return;
                } catch (SecurityException e) {
                    Log.e("GeoFencingServiceWrapper", "SecurityException:" + e);
                    return;
                }
            }
            Log.d("GeoFencingServiceWrapper", "GeoFencingService already started");
        }
    }
}
