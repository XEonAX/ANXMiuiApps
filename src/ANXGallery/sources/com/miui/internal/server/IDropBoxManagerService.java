package com.miui.internal.server;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import miui.os.DropBoxManager.Entry;

public interface IDropBoxManagerService extends IInterface {

    public static abstract class Stub extends Binder implements IDropBoxManagerService {
        private static final String S = "com.miui.internal.server.IDropBoxManagerService";
        static final int it = 1;
        static final int iu = 2;
        static final int iv = 3;

        private static class Proxy implements IDropBoxManagerService {
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

            public void add(Entry entry) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.S);
                    if (entry != null) {
                        obtain.writeInt(1);
                        entry.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.U.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean isTagEnabled(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.S);
                    obtain.writeString(str);
                    boolean z = false;
                    this.U.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Entry getNextEntry(String str, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    Entry entry;
                    obtain.writeInterfaceToken(Stub.S);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    this.U.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        entry = (Entry) Entry.CREATOR.createFromParcel(obtain2);
                    } else {
                        entry = null;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return entry;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, S);
        }

        public static IDropBoxManagerService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(S);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IDropBoxManagerService)) {
                return new Proxy(iBinder);
            }
            return (IDropBoxManagerService) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            String str = S;
            if (i != 1598968902) {
                Entry entry;
                switch (i) {
                    case 1:
                        parcel.enforceInterface(str);
                        if (parcel.readInt() != 0) {
                            entry = (Entry) Entry.CREATOR.createFromParcel(parcel);
                        } else {
                            entry = null;
                        }
                        add(entry);
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface(str);
                        boolean isTagEnabled = isTagEnabled(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(isTagEnabled);
                        return true;
                    case 3:
                        parcel.enforceInterface(str);
                        entry = getNextEntry(parcel.readString(), parcel.readLong());
                        parcel2.writeNoException();
                        if (entry != null) {
                            parcel2.writeInt(1);
                            entry.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString(str);
            return true;
        }
    }

    void add(Entry entry) throws RemoteException;

    Entry getNextEntry(String str, long j) throws RemoteException;

    boolean isTagEnabled(String str) throws RemoteException;
}
