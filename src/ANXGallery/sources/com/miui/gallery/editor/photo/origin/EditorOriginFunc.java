package com.miui.gallery.editor.photo.origin;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface EditorOriginFunc extends IInterface {

    public static abstract class Stub extends Binder implements EditorOriginFunc {

        private static class Proxy implements EditorOriginFunc {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public boolean handlerOrigin(OriginRenderData renderDataList) throws RemoteException {
                boolean _result = true;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken("com.miui.gallery.editor.photo.origin.EditorOriginFunc");
                    if (renderDataList != null) {
                        _data.writeInt(1);
                        renderDataList.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
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
        }

        public Stub() {
            attachInterface(this, "com.miui.gallery.editor.photo.origin.EditorOriginFunc");
        }

        public static EditorOriginFunc asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("com.miui.gallery.editor.photo.origin.EditorOriginFunc");
            if (iin == null || !(iin instanceof EditorOriginFunc)) {
                return new Proxy(obj);
            }
            return (EditorOriginFunc) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    OriginRenderData _arg0;
                    data.enforceInterface("com.miui.gallery.editor.photo.origin.EditorOriginFunc");
                    if (data.readInt() != 0) {
                        _arg0 = (OriginRenderData) OriginRenderData.CREATOR.createFromParcel(data);
                    } else {
                        _arg0 = null;
                    }
                    boolean _result = handlerOrigin(_arg0);
                    reply.writeNoException();
                    reply.writeInt(_result ? 1 : 0);
                    return true;
                case 1598968902:
                    reply.writeString("com.miui.gallery.editor.photo.origin.EditorOriginFunc");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    boolean handlerOrigin(OriginRenderData originRenderData) throws RemoteException;
}
