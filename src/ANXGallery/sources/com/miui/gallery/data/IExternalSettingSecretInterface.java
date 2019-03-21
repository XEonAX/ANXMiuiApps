package com.miui.gallery.data;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IExternalSettingSecretInterface extends IInterface {

    public static abstract class Stub extends Binder implements IExternalSettingSecretInterface {
        public Stub() {
            attachInterface(this, "com.miui.gallery.data.IExternalSettingSecretInterface");
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("com.miui.gallery.data.IExternalSettingSecretInterface");
                    preSettingSecret(data.createStringArray());
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface("com.miui.gallery.data.IExternalSettingSecretInterface");
                    onFinishSettingSecret(data.createStringArray(), data.createStringArray());
                    reply.writeNoException();
                    return true;
                case 1598968902:
                    reply.writeString("com.miui.gallery.data.IExternalSettingSecretInterface");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    void onFinishSettingSecret(String[] strArr, String[] strArr2) throws RemoteException;

    void preSettingSecret(String[] strArr) throws RemoteException;
}
