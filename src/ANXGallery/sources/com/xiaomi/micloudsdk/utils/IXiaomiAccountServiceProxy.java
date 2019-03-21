package com.xiaomi.micloudsdk.utils;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public class IXiaomiAccountServiceProxy {
    public static String getEncryptedUserId(IBinder remote, Account account) throws RemoteException {
        Parcel _data = Parcel.obtain();
        Parcel _reply = Parcel.obtain();
        try {
            _data.writeInterfaceToken("com.xiaomi.accountsdk.account.IXiaomiAccountService");
            if (account != null) {
                _data.writeInt(1);
                account.writeToParcel(_data, 0);
            } else {
                _data.writeInt(0);
            }
            remote.transact(4, _data, _reply, 0);
            _reply.readException();
            String _result = _reply.readString();
            return _result;
        } finally {
            _reply.recycle();
            _data.recycle();
        }
    }
}
