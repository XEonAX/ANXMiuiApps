package com.miui.internal.analytics;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IAnalytics extends IInterface {

    public static abstract class Stub extends Binder implements IAnalytics {
        private static final String S = "com.miui.internal.analytics.IAnalytics";
        static final int T = 1;

        private static class Proxy implements IAnalytics {
            private IBinder U;

            Proxy(IBinder iBinder) {
                this.U = iBinder;
            }

            public IBinder asBinder() {
                return this.U;
            }

            public String getInterfaceDescriptor() {
                return Stub.S;
            }

            public void track(Event[] eventArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.S);
                    obtain.writeTypedArray(eventArr, 0);
                    this.U.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, S);
        }

        public static IAnalytics asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(S);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IAnalytics)) {
                return new Proxy(iBinder);
            }
            return (IAnalytics) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            String str = S;
            if (i == 1) {
                parcel.enforceInterface(str);
                track((Event[]) parcel.createTypedArray(Event.CREATOR));
                parcel2.writeNoException();
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString(str);
                return true;
            }
        }
    }

    void track(Event[] eventArr) throws RemoteException;
}
