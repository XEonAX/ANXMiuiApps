package com.miui.extraphoto.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IEchoListener extends IInterface {

    public static abstract class Stub extends Binder implements IEchoListener {

        private static class Proxy implements IEchoListener {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public void onEchoStart() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.miui.extraphoto.sdk.IEchoListener");
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void onEchoEnd(String originPath, String echoPath, boolean success) throws RemoteException {
                int i = 1;
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.miui.extraphoto.sdk.IEchoListener");
                    _data.writeString(originPath);
                    _data.writeString(echoPath);
                    if (!success) {
                        i = 0;
                    }
                    _data.writeInt(i);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.miui.extraphoto.sdk.IEchoListener");
        }

        public static IEchoListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("com.miui.extraphoto.sdk.IEchoListener");
            if (iin == null || !(iin instanceof IEchoListener)) {
                return new Proxy(obj);
            }
            return (IEchoListener) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("com.miui.extraphoto.sdk.IEchoListener");
                    onEchoStart();
                    return true;
                case 2:
                    data.enforceInterface("com.miui.extraphoto.sdk.IEchoListener");
                    onEchoEnd(data.readString(), data.readString(), data.readInt() != 0);
                    return true;
                case 1598968902:
                    reply.writeString("com.miui.extraphoto.sdk.IEchoListener");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    void onEchoEnd(String str, String str2, boolean z) throws RemoteException;

    void onEchoStart() throws RemoteException;
}
