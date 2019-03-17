package mtopsdk.xstate.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IXState */
public interface a extends IInterface {

    /* compiled from: IXState */
    public static abstract class a extends Binder implements a {
        public a() {
            attachInterface(this, "mtopsdk.xstate.aidl.IXState");
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            String b;
            switch (i) {
                case 1:
                    parcel.enforceInterface("mtopsdk.xstate.aidl.IXState");
                    b = b(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(b);
                    return true;
                case 2:
                    parcel.enforceInterface("mtopsdk.xstate.aidl.IXState");
                    b = a(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(b);
                    return true;
                case 3:
                    parcel.enforceInterface("mtopsdk.xstate.aidl.IXState");
                    a(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("mtopsdk.xstate.aidl.IXState");
                    a();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("mtopsdk.xstate.aidl.IXState");
                    b();
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("mtopsdk.xstate.aidl.IXState");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String a(String str) throws RemoteException;

    void a() throws RemoteException;

    void a(String str, String str2) throws RemoteException;

    String b(String str) throws RemoteException;

    void b() throws RemoteException;
}
