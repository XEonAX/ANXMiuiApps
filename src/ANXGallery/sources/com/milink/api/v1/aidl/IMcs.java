package com.milink.api.v1.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IMcs extends IInterface {

    public static abstract class Stub extends Binder implements IMcs {
        private static final String DESCRIPTOR = "com.milink.api.v1.aidl.IMcs";
        static final int TRANSACTION_connect = 8;
        static final int TRANSACTION_disconnect = 9;
        static final int TRANSACTION_getPlaybackDuration = 23;
        static final int TRANSACTION_getPlaybackProgress = 22;
        static final int TRANSACTION_getPlaybackRate = 20;
        static final int TRANSACTION_getVolume = 25;
        static final int TRANSACTION_rotatePhoto = 26;
        static final int TRANSACTION_setDataSource = 3;
        static final int TRANSACTION_setDelegate = 5;
        static final int TRANSACTION_setDeviceListener = 1;
        static final int TRANSACTION_setDeviceName = 7;
        static final int TRANSACTION_setPlaybackProgress = 21;
        static final int TRANSACTION_setPlaybackRate = 19;
        static final int TRANSACTION_setVolume = 24;
        static final int TRANSACTION_show = 11;
        static final int TRANSACTION_startPlayAudio = 17;
        static final int TRANSACTION_startPlayAudioEx = 28;
        static final int TRANSACTION_startPlayVideo = 16;
        static final int TRANSACTION_startPlayVideoEx = 27;
        static final int TRANSACTION_startShow = 10;
        static final int TRANSACTION_startSlideshow = 14;
        static final int TRANSACTION_stopPlay = 18;
        static final int TRANSACTION_stopShow = 13;
        static final int TRANSACTION_stopSlideshow = 15;
        static final int TRANSACTION_unsetDataSource = 4;
        static final int TRANSACTION_unsetDelegate = 6;
        static final int TRANSACTION_unsetDeviceListener = 2;
        static final int TRANSACTION_zoomPhoto = 12;

        private static class Proxy implements IMcs {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            public void setDeviceListener(IMcsDeviceListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void unsetDeviceListener(IMcsDeviceListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void setDataSource(IMcsDataSource dataSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(dataSource != null ? dataSource.asBinder() : null);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void unsetDataSource(IMcsDataSource dataSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(dataSource != null ? dataSource.asBinder() : null);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void setDelegate(IMcsDelegate delegate) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(delegate != null ? delegate.asBinder() : null);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void unsetDelegate(IMcsDelegate delegate) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(delegate != null ? delegate.asBinder() : null);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void setDeviceName(String deviceName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(deviceName);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int connect(String deviceId, int timeout) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(deviceId);
                    _data.writeInt(timeout);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int disconnect() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int startShow() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int show(String photoUri) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(photoUri);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int zoomPhoto(String photoUri, int x, int y, int screenWidth, int screenHeight, int orgPhotoWidth, int orgPhotoHeight, float scale) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(photoUri);
                    _data.writeInt(x);
                    _data.writeInt(y);
                    _data.writeInt(screenWidth);
                    _data.writeInt(screenHeight);
                    _data.writeInt(orgPhotoWidth);
                    _data.writeInt(orgPhotoHeight);
                    _data.writeFloat(scale);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int stopShow() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int startSlideshow(int duration, boolean isRecyle) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(duration);
                    _data.writeInt(isRecyle);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int stopSlideshow() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int startPlayVideo(String url, String title, int iPosition, double dPosition) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(url);
                    _data.writeString(title);
                    _data.writeInt(iPosition);
                    _data.writeDouble(dPosition);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int startPlayAudio(String url, String title, int iPosition, double dPosition) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(url);
                    _data.writeString(title);
                    _data.writeInt(iPosition);
                    _data.writeDouble(dPosition);
                    this.mRemote.transact(17, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int stopPlay() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(18, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int setPlaybackRate(int rate) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(rate);
                    this.mRemote.transact(19, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int getPlaybackRate() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int setPlaybackProgress(int position) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(position);
                    this.mRemote.transact(21, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int getPlaybackProgress() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int getPlaybackDuration() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(23, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int setVolume(int volume) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(volume);
                    this.mRemote.transact(24, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int getVolume() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(25, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int rotatePhoto(String photoUri, boolean flag, float degree) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(photoUri);
                    _data.writeInt(flag);
                    _data.writeFloat(degree);
                    this.mRemote.transact(26, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int startPlayVideoEx(String url, String title, String extra, int iPosition, double dPosition) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(url);
                    _data.writeString(title);
                    _data.writeString(extra);
                    _data.writeInt(iPosition);
                    _data.writeDouble(dPosition);
                    this.mRemote.transact(27, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int startPlayAudioEx(String url, String title, String extra, int iPosition, double dPosition) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(url);
                    _data.writeString(title);
                    _data.writeString(extra);
                    _data.writeInt(iPosition);
                    _data.writeDouble(dPosition);
                    this.mRemote.transact(28, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMcs asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IMcs)) {
                return new Proxy(obj);
            }
            return (IMcs) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            int i = code;
            Parcel parcel = data;
            Parcel parcel2 = reply;
            String descriptor = DESCRIPTOR;
            if (i != 1598968902) {
                boolean _arg1 = false;
                int _result;
                int _result2;
                int _result3;
                switch (i) {
                    case 1:
                        parcel.enforceInterface(descriptor);
                        setDeviceListener(com.milink.api.v1.aidl.IMcsDeviceListener.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface(descriptor);
                        unsetDeviceListener(com.milink.api.v1.aidl.IMcsDeviceListener.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface(descriptor);
                        setDataSource(com.milink.api.v1.aidl.IMcsDataSource.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface(descriptor);
                        unsetDataSource(com.milink.api.v1.aidl.IMcsDataSource.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface(descriptor);
                        setDelegate(com.milink.api.v1.aidl.IMcsDelegate.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        return true;
                    case 6:
                        parcel.enforceInterface(descriptor);
                        unsetDelegate(com.milink.api.v1.aidl.IMcsDelegate.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        return true;
                    case 7:
                        parcel.enforceInterface(descriptor);
                        setDeviceName(data.readString());
                        reply.writeNoException();
                        return true;
                    case 8:
                        parcel.enforceInterface(descriptor);
                        _result = connect(data.readString(), data.readInt());
                        reply.writeNoException();
                        parcel2.writeInt(_result);
                        return true;
                    case 9:
                        parcel.enforceInterface(descriptor);
                        _result2 = disconnect();
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 10:
                        parcel.enforceInterface(descriptor);
                        _result2 = startShow();
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 11:
                        parcel.enforceInterface(descriptor);
                        _result3 = show(data.readString());
                        reply.writeNoException();
                        parcel2.writeInt(_result3);
                        return true;
                    case 12:
                        parcel.enforceInterface(descriptor);
                        _result2 = zoomPhoto(data.readString(), data.readInt(), data.readInt(), data.readInt(), data.readInt(), data.readInt(), data.readInt(), data.readFloat());
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 13:
                        parcel.enforceInterface(descriptor);
                        _result2 = stopShow();
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 14:
                        parcel.enforceInterface(descriptor);
                        _result3 = data.readInt();
                        if (data.readInt() != 0) {
                            _arg1 = true;
                        }
                        _result = startSlideshow(_result3, _arg1);
                        reply.writeNoException();
                        parcel2.writeInt(_result);
                        return true;
                    case 15:
                        parcel.enforceInterface(descriptor);
                        _result2 = stopSlideshow();
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 16:
                        parcel.enforceInterface(descriptor);
                        _result2 = startPlayVideo(data.readString(), data.readString(), data.readInt(), data.readDouble());
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 17:
                        parcel.enforceInterface(descriptor);
                        _result2 = startPlayAudio(data.readString(), data.readString(), data.readInt(), data.readDouble());
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 18:
                        parcel.enforceInterface(descriptor);
                        _result2 = stopPlay();
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 19:
                        parcel.enforceInterface(descriptor);
                        _result3 = setPlaybackRate(data.readInt());
                        reply.writeNoException();
                        parcel2.writeInt(_result3);
                        return true;
                    case 20:
                        parcel.enforceInterface(descriptor);
                        _result2 = getPlaybackRate();
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 21:
                        parcel.enforceInterface(descriptor);
                        _result3 = setPlaybackProgress(data.readInt());
                        reply.writeNoException();
                        parcel2.writeInt(_result3);
                        return true;
                    case 22:
                        parcel.enforceInterface(descriptor);
                        _result2 = getPlaybackProgress();
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 23:
                        parcel.enforceInterface(descriptor);
                        _result2 = getPlaybackDuration();
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 24:
                        parcel.enforceInterface(descriptor);
                        _result3 = setVolume(data.readInt());
                        reply.writeNoException();
                        parcel2.writeInt(_result3);
                        return true;
                    case 25:
                        parcel.enforceInterface(descriptor);
                        _result2 = getVolume();
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 26:
                        parcel.enforceInterface(descriptor);
                        String _arg0 = data.readString();
                        if (data.readInt() != 0) {
                            _arg1 = true;
                        }
                        int _result4 = rotatePhoto(_arg0, _arg1, data.readFloat());
                        reply.writeNoException();
                        parcel2.writeInt(_result4);
                        return true;
                    case 27:
                        parcel.enforceInterface(descriptor);
                        _result2 = startPlayVideoEx(data.readString(), data.readString(), data.readString(), data.readInt(), data.readDouble());
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    case 28:
                        parcel.enforceInterface(descriptor);
                        _result2 = startPlayAudioEx(data.readString(), data.readString(), data.readString(), data.readInt(), data.readDouble());
                        reply.writeNoException();
                        parcel2.writeInt(_result2);
                        return true;
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            }
            parcel2.writeString(descriptor);
            return true;
        }
    }

    int connect(String str, int i) throws RemoteException;

    int disconnect() throws RemoteException;

    int getPlaybackDuration() throws RemoteException;

    int getPlaybackProgress() throws RemoteException;

    int getPlaybackRate() throws RemoteException;

    int getVolume() throws RemoteException;

    int rotatePhoto(String str, boolean z, float f) throws RemoteException;

    void setDataSource(IMcsDataSource iMcsDataSource) throws RemoteException;

    void setDelegate(IMcsDelegate iMcsDelegate) throws RemoteException;

    void setDeviceListener(IMcsDeviceListener iMcsDeviceListener) throws RemoteException;

    void setDeviceName(String str) throws RemoteException;

    int setPlaybackProgress(int i) throws RemoteException;

    int setPlaybackRate(int i) throws RemoteException;

    int setVolume(int i) throws RemoteException;

    int show(String str) throws RemoteException;

    int startPlayAudio(String str, String str2, int i, double d) throws RemoteException;

    int startPlayAudioEx(String str, String str2, String str3, int i, double d) throws RemoteException;

    int startPlayVideo(String str, String str2, int i, double d) throws RemoteException;

    int startPlayVideoEx(String str, String str2, String str3, int i, double d) throws RemoteException;

    int startShow() throws RemoteException;

    int startSlideshow(int i, boolean z) throws RemoteException;

    int stopPlay() throws RemoteException;

    int stopShow() throws RemoteException;

    int stopSlideshow() throws RemoteException;

    void unsetDataSource(IMcsDataSource iMcsDataSource) throws RemoteException;

    void unsetDelegate(IMcsDelegate iMcsDelegate) throws RemoteException;

    void unsetDeviceListener(IMcsDeviceListener iMcsDeviceListener) throws RemoteException;

    int zoomPhoto(String str, int i, int i2, int i3, int i4, int i5, int i6, float f) throws RemoteException;
}
