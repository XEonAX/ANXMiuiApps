package miui.payment;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IPaymentManagerService extends IInterface {

    public static abstract class Stub extends Binder implements IPaymentManagerService {
        private static final String DESCRIPTOR = "miui.payment.IPaymentManagerService";
        static final int TRANSACTION_getMiliBalance = 6;
        static final int TRANSACTION_payForOrder = 1;
        static final int TRANSACTION_recharge = 5;
        static final int TRANSACTION_showMiliCenter = 2;
        static final int TRANSACTION_showPayRecord = 4;
        static final int TRANSACTION_showRechargeRecord = 3;

        private static class Proxy implements IPaymentManagerService {
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

            public void payForOrder(IPaymentManagerResponse response, Account account, String order, Bundle extra) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        _data.writeInt(1);
                        account.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeString(order);
                    if (extra != null) {
                        _data.writeInt(1);
                        extra.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void showMiliCenter(IPaymentManagerResponse response, Account account) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        _data.writeInt(1);
                        account.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void showRechargeRecord(IPaymentManagerResponse response, Account account, String serviceId, String verify) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        _data.writeInt(1);
                        account.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeString(serviceId);
                    _data.writeString(verify);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void showPayRecord(IPaymentManagerResponse response, Account account, String serviceId, String verify) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        _data.writeInt(1);
                        account.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeString(serviceId);
                    _data.writeString(verify);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void recharge(IPaymentManagerResponse response, Account account, String serviceId, String verify) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        _data.writeInt(1);
                        account.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeString(serviceId);
                    _data.writeString(verify);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void getMiliBalance(IPaymentManagerResponse response, Account account, String serviceId, String verify) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(response != null ? response.asBinder() : null);
                    if (account != null) {
                        _data.writeInt(1);
                        account.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeString(serviceId);
                    _data.writeString(verify);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPaymentManagerService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IPaymentManagerService)) {
                return new Proxy(obj);
            }
            return (IPaymentManagerService) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            String descriptor = DESCRIPTOR;
            if (code != 1598968902) {
                Bundle _arg1 = null;
                IPaymentManagerResponse _arg0;
                Account _arg12;
                switch (code) {
                    case 1:
                        Account _arg13;
                        data.enforceInterface(descriptor);
                        _arg0 = miui.payment.IPaymentManagerResponse.Stub.asInterface(data.readStrongBinder());
                        if (data.readInt() != 0) {
                            _arg13 = (Account) Account.CREATOR.createFromParcel(data);
                        } else {
                            _arg13 = null;
                        }
                        String _arg2 = data.readString();
                        if (data.readInt() != 0) {
                            _arg1 = (Bundle) Bundle.CREATOR.createFromParcel(data);
                        }
                        payForOrder(_arg0, _arg13, _arg2, _arg1);
                        reply.writeNoException();
                        return true;
                    case 2:
                        data.enforceInterface(descriptor);
                        _arg0 = miui.payment.IPaymentManagerResponse.Stub.asInterface(data.readStrongBinder());
                        if (data.readInt() != 0) {
                            _arg12 = (Account) Account.CREATOR.createFromParcel(data);
                        }
                        showMiliCenter(_arg0, _arg12);
                        reply.writeNoException();
                        return true;
                    case 3:
                        data.enforceInterface(descriptor);
                        _arg0 = miui.payment.IPaymentManagerResponse.Stub.asInterface(data.readStrongBinder());
                        if (data.readInt() != 0) {
                            _arg12 = (Account) Account.CREATOR.createFromParcel(data);
                        }
                        showRechargeRecord(_arg0, _arg12, data.readString(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 4:
                        data.enforceInterface(descriptor);
                        _arg0 = miui.payment.IPaymentManagerResponse.Stub.asInterface(data.readStrongBinder());
                        if (data.readInt() != 0) {
                            _arg12 = (Account) Account.CREATOR.createFromParcel(data);
                        }
                        showPayRecord(_arg0, _arg12, data.readString(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 5:
                        data.enforceInterface(descriptor);
                        _arg0 = miui.payment.IPaymentManagerResponse.Stub.asInterface(data.readStrongBinder());
                        if (data.readInt() != 0) {
                            _arg12 = (Account) Account.CREATOR.createFromParcel(data);
                        }
                        recharge(_arg0, _arg12, data.readString(), data.readString());
                        reply.writeNoException();
                        return true;
                    case 6:
                        data.enforceInterface(descriptor);
                        _arg0 = miui.payment.IPaymentManagerResponse.Stub.asInterface(data.readStrongBinder());
                        if (data.readInt() != 0) {
                            _arg12 = (Account) Account.CREATOR.createFromParcel(data);
                        }
                        getMiliBalance(_arg0, _arg12, data.readString(), data.readString());
                        reply.writeNoException();
                        return true;
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            }
            reply.writeString(descriptor);
            return true;
        }
    }

    void getMiliBalance(IPaymentManagerResponse iPaymentManagerResponse, Account account, String str, String str2) throws RemoteException;

    void payForOrder(IPaymentManagerResponse iPaymentManagerResponse, Account account, String str, Bundle bundle) throws RemoteException;

    void recharge(IPaymentManagerResponse iPaymentManagerResponse, Account account, String str, String str2) throws RemoteException;

    void showMiliCenter(IPaymentManagerResponse iPaymentManagerResponse, Account account) throws RemoteException;

    void showPayRecord(IPaymentManagerResponse iPaymentManagerResponse, Account account, String str, String str2) throws RemoteException;

    void showRechargeRecord(IPaymentManagerResponse iPaymentManagerResponse, Account account, String str, String str2) throws RemoteException;
}
