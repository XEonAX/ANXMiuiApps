package com.miui.extraphoto.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public interface IExtraPhotoService extends IInterface {

    public static abstract class Stub extends Binder implements IExtraPhotoService {

        private static class Proxy implements IExtraPhotoService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public boolean isExtraCamera() throws RemoteException {
                boolean _result = true;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.miui.extraphoto.sdk.IExtraPhotoService");
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() == 0) {
                        _result = false;
                    }
                    _reply.recycle();
                    _data.recycle();
                    return _result;
                } catch (Throwable th) {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public boolean isExtraPhoto(String path) throws RemoteException {
                boolean _result = false;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.miui.extraphoto.sdk.IExtraPhotoService");
                    _data.writeString(path);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = true;
                    }
                    _reply.recycle();
                    _data.recycle();
                    return _result;
                } catch (Throwable th) {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public List<ExtraFunc> resolveExtraFuncs() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.miui.extraphoto.sdk.IExtraPhotoService");
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    List<ExtraFunc> _result = _reply.createTypedArrayList(ExtraFunc.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public boolean needEcho(String path) throws RemoteException {
                boolean _result = false;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.miui.extraphoto.sdk.IExtraPhotoService");
                    _data.writeString(path);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = true;
                    }
                    _reply.recycle();
                    _data.recycle();
                    return _result;
                } catch (Throwable th) {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public boolean echo(String path, IEchoListener listener, boolean atFirst) throws RemoteException {
                boolean _result = true;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    int i;
                    _data.writeInterfaceToken("com.miui.extraphoto.sdk.IExtraPhotoService");
                    _data.writeString(path);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (atFirst) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    _data.writeInt(i);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() == 0) {
                        _result = false;
                    }
                    _reply.recycle();
                    _data.recycle();
                    return _result;
                } catch (Throwable th) {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void unregisterEchoListener(IEchoListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.miui.extraphoto.sdk.IExtraPhotoService");
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void cancelEcho(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.miui.extraphoto.sdk.IExtraPhotoService");
                    _data.writeString(path);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void resumeEcho() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.miui.extraphoto.sdk.IExtraPhotoService");
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void pauseEcho() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.miui.extraphoto.sdk.IExtraPhotoService");
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void releaseEcho() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.miui.extraphoto.sdk.IExtraPhotoService");
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public static IExtraPhotoService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("com.miui.extraphoto.sdk.IExtraPhotoService");
            if (iin == null || !(iin instanceof IExtraPhotoService)) {
                return new Proxy(obj);
            }
            return (IExtraPhotoService) iin;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            int i = 0;
            boolean _result;
            switch (code) {
                case 1:
                    data.enforceInterface("com.miui.extraphoto.sdk.IExtraPhotoService");
                    _result = isExtraCamera();
                    reply.writeNoException();
                    if (_result) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 2:
                    data.enforceInterface("com.miui.extraphoto.sdk.IExtraPhotoService");
                    _result = isExtraPhoto(data.readString());
                    reply.writeNoException();
                    if (_result) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 3:
                    data.enforceInterface("com.miui.extraphoto.sdk.IExtraPhotoService");
                    List<ExtraFunc> _result2 = resolveExtraFuncs();
                    reply.writeNoException();
                    reply.writeTypedList(_result2);
                    return true;
                case 4:
                    data.enforceInterface("com.miui.extraphoto.sdk.IExtraPhotoService");
                    _result = needEcho(data.readString());
                    reply.writeNoException();
                    if (_result) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 5:
                    boolean _arg2;
                    data.enforceInterface("com.miui.extraphoto.sdk.IExtraPhotoService");
                    String _arg0 = data.readString();
                    IEchoListener _arg1 = com.miui.extraphoto.sdk.IEchoListener.Stub.asInterface(data.readStrongBinder());
                    if (data.readInt() != 0) {
                        _arg2 = true;
                    } else {
                        _arg2 = false;
                    }
                    _result = echo(_arg0, _arg1, _arg2);
                    reply.writeNoException();
                    if (_result) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 6:
                    data.enforceInterface("com.miui.extraphoto.sdk.IExtraPhotoService");
                    unregisterEchoListener(com.miui.extraphoto.sdk.IEchoListener.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 7:
                    data.enforceInterface("com.miui.extraphoto.sdk.IExtraPhotoService");
                    cancelEcho(data.readString());
                    reply.writeNoException();
                    return true;
                case 8:
                    data.enforceInterface("com.miui.extraphoto.sdk.IExtraPhotoService");
                    resumeEcho();
                    reply.writeNoException();
                    return true;
                case 9:
                    data.enforceInterface("com.miui.extraphoto.sdk.IExtraPhotoService");
                    pauseEcho();
                    reply.writeNoException();
                    return true;
                case 10:
                    data.enforceInterface("com.miui.extraphoto.sdk.IExtraPhotoService");
                    releaseEcho();
                    reply.writeNoException();
                    return true;
                case 1598968902:
                    reply.writeString("com.miui.extraphoto.sdk.IExtraPhotoService");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    void cancelEcho(String str) throws RemoteException;

    boolean echo(String str, IEchoListener iEchoListener, boolean z) throws RemoteException;

    boolean isExtraCamera() throws RemoteException;

    boolean isExtraPhoto(String str) throws RemoteException;

    boolean needEcho(String str) throws RemoteException;

    void pauseEcho() throws RemoteException;

    void releaseEcho() throws RemoteException;

    List<ExtraFunc> resolveExtraFuncs() throws RemoteException;

    void resumeEcho() throws RemoteException;

    void unregisterEchoListener(IEchoListener iEchoListener) throws RemoteException;
}
