package com.xiaomi.metoknlp.geofencing;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public interface IGeoFencing extends IInterface {

    public static abstract class Stub extends Binder implements IGeoFencing {

        private static class Proxy implements IGeoFencing {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public void setLocationListener(List<String> ssids, String location) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    _data.writeStringList(ssids);
                    _data.writeString(location);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void unsetLocationListener(String location) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    _data.writeString(location);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public String getDeviceLocation() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public List<String> getLocationSsids(String location) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    _data.writeString(location);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    List<String> _result = _reply.createStringArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int getVersion() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void registerFenceListener(double latitude, double longitude, float radius, long expiration, String packageName, String describe, String coordinate) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    _data.writeDouble(latitude);
                    _data.writeDouble(longitude);
                    _data.writeFloat(radius);
                    _data.writeLong(expiration);
                    _data.writeString(packageName);
                    _data.writeString(describe);
                    _data.writeString(coordinate);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void registerFenceListenerByIntent(double latitude, double longitude, float radius, long expiration, PendingIntent intent, String packageName, String describe) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    _data.writeDouble(latitude);
                    _data.writeDouble(longitude);
                    _data.writeFloat(radius);
                    _data.writeLong(expiration);
                    if (intent != null) {
                        _data.writeInt(1);
                        intent.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeString(packageName);
                    _data.writeString(describe);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void unregisterFenceListener(String packageName, String describe) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    _data.writeString(packageName);
                    _data.writeString(describe);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void unregisterFenceListenerByIntent(PendingIntent intent) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    if (intent != null) {
                        _data.writeInt(1);
                        intent.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        public static IGeoFencing asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("com.xiaomi.metoknlp.geofencing.IGeoFencing");
            if (iin == null || !(iin instanceof IGeoFencing)) {
                return new Proxy(obj);
            }
            return (IGeoFencing) iin;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    setLocationListener(data.createStringArrayList(), data.readString());
                    return true;
                case 2:
                    data.enforceInterface("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    unsetLocationListener(data.readString());
                    return true;
                case 3:
                    data.enforceInterface("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    String _result = getDeviceLocation();
                    reply.writeNoException();
                    reply.writeString(_result);
                    return true;
                case 4:
                    data.enforceInterface("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    List<String> _result2 = getLocationSsids(data.readString());
                    reply.writeNoException();
                    reply.writeStringList(_result2);
                    return true;
                case 5:
                    data.enforceInterface("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    int _result3 = getVersion();
                    reply.writeNoException();
                    reply.writeInt(_result3);
                    return true;
                case 6:
                    data.enforceInterface("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    registerFenceListener(data.readDouble(), data.readDouble(), data.readFloat(), data.readLong(), data.readString(), data.readString(), data.readString());
                    return true;
                case 7:
                    PendingIntent _arg4;
                    data.enforceInterface("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    double _arg0 = data.readDouble();
                    double _arg1 = data.readDouble();
                    float _arg2 = data.readFloat();
                    long _arg3 = data.readLong();
                    if (data.readInt() != 0) {
                        _arg4 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(data);
                    } else {
                        _arg4 = null;
                    }
                    registerFenceListenerByIntent(_arg0, _arg1, _arg2, _arg3, _arg4, data.readString(), data.readString());
                    return true;
                case 8:
                    data.enforceInterface("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    unregisterFenceListener(data.readString(), data.readString());
                    return true;
                case 9:
                    PendingIntent _arg02;
                    data.enforceInterface("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    if (data.readInt() != 0) {
                        _arg02 = (PendingIntent) PendingIntent.CREATOR.createFromParcel(data);
                    } else {
                        _arg02 = null;
                    }
                    unregisterFenceListenerByIntent(_arg02);
                    return true;
                case 1598968902:
                    reply.writeString("com.xiaomi.metoknlp.geofencing.IGeoFencing");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    String getDeviceLocation() throws RemoteException;

    List<String> getLocationSsids(String str) throws RemoteException;

    int getVersion() throws RemoteException;

    void registerFenceListener(double d, double d2, float f, long j, String str, String str2, String str3) throws RemoteException;

    void registerFenceListenerByIntent(double d, double d2, float f, long j, PendingIntent pendingIntent, String str, String str2) throws RemoteException;

    void setLocationListener(List<String> list, String str) throws RemoteException;

    void unregisterFenceListener(String str, String str2) throws RemoteException;

    void unregisterFenceListenerByIntent(PendingIntent pendingIntent) throws RemoteException;

    void unsetLocationListener(String str) throws RemoteException;
}
