package miui.bluetooth.ble;

import android.bluetooth.BluetoothDevice;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.RemoteException;
import java.util.List;

public interface IBluetoothMiBle extends IInterface {

    public static abstract class Stub extends Binder implements IBluetoothMiBle {
        private static final String DESCRIPTOR = "miui.bluetooth.ble.IBluetoothMiBle";
        static final int TRANSACTION_authenticate = 15;
        static final int TRANSACTION_authorize = 13;
        static final int TRANSACTION_connect = 4;
        static final int TRANSACTION_disconnect = 5;
        static final int TRANSACTION_encrypt = 17;
        static final int TRANSACTION_getConnectedDevices = 6;
        static final int TRANSACTION_getProperty = 12;
        static final int TRANSACTION_getRssi = 7;
        static final int TRANSACTION_getServiceVersion = 18;
        static final int TRANSACTION_isConnected = 3;
        static final int TRANSACTION_registerClient = 1;
        static final int TRANSACTION_registerPropertyCallback = 9;
        static final int TRANSACTION_setEncryptionKey = 16;
        static final int TRANSACTION_setProperty = 11;
        static final int TRANSACTION_setRssiThreshold = 14;
        static final int TRANSACTION_supportProperty = 8;
        static final int TRANSACTION_unregisterClient = 2;
        static final int TRANSACTION_unregisterPropertyCallback = 10;

        private static class Proxy implements IBluetoothMiBle {
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

            public void registerClient(IBinder token, String device, ParcelUuid clientId, IBluetoothMiBleCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    _data.writeString(device);
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void unregisterClient(IBinder token, String device, ParcelUuid clientId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    _data.writeString(device);
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
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

            public boolean isConnected(String device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    boolean z = false;
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        z = true;
                    }
                    boolean _result = z;
                    _reply.recycle();
                    _data.recycle();
                    return _result;
                } catch (Throwable th) {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void connect(String device, ParcelUuid clientId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void disconnect(String device, ParcelUuid clientId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public List<BluetoothDevice> getConnectedDevices() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                    List<BluetoothDevice> _result = _reply.createTypedArrayList(BluetoothDevice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int getRssi(String device, ParcelUuid clientId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public boolean supportProperty(String device, int property) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    _data.writeInt(property);
                    boolean z = false;
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        z = true;
                    }
                    boolean _result = z;
                    _reply.recycle();
                    _data.recycle();
                    return _result;
                } catch (Throwable th) {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public boolean registerPropertyCallback(String device, ParcelUuid clientId, int property, IBluetoothMiBlePropertyCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    boolean _result = true;
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeInt(property);
                    _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    this.mRemote.transact(9, _data, _reply, 0);
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

            public boolean unregisterPropertyCallback(String device, ParcelUuid clientId, int property, IBluetoothMiBlePropertyCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    boolean _result = true;
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeInt(property);
                    _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    this.mRemote.transact(10, _data, _reply, 0);
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

            public boolean setProperty(String device, ParcelUuid clientId, int property, byte[] data) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    boolean _result = true;
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeInt(property);
                    _data.writeByteArray(data);
                    this.mRemote.transact(11, _data, _reply, 0);
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

            public byte[] getProperty(String device, ParcelUuid clientId, int property) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeInt(property);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                    byte[] _result = _reply.createByteArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public boolean authorize(String device, ParcelUuid clientId, String key) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    boolean _result = true;
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeString(key);
                    this.mRemote.transact(13, _data, _reply, 0);
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

            public boolean setRssiThreshold(String device, ParcelUuid clientId, int rssi) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    boolean _result = true;
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeInt(rssi);
                    this.mRemote.transact(14, _data, _reply, 0);
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

            public boolean authenticate(String device, ParcelUuid clientId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    boolean _result = true;
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(15, _data, _reply, 0);
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

            public boolean setEncryptionKey(String device, ParcelUuid clientId, byte[] key) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    boolean _result = true;
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeByteArray(key);
                    this.mRemote.transact(16, _data, _reply, 0);
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

            public byte[] encrypt(String device, ParcelUuid clientId, byte[] text) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    if (clientId != null) {
                        _data.writeInt(1);
                        clientId.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeByteArray(text);
                    this.mRemote.transact(17, _data, _reply, 0);
                    _reply.readException();
                    byte[] _result = _reply.createByteArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int getServiceVersion() throws RemoteException {
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
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothMiBle asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IBluetoothMiBle)) {
                return new Proxy(obj);
            }
            return (IBluetoothMiBle) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            String descriptor = DESCRIPTOR;
            if (code != 1598968902) {
                ParcelUuid _arg2 = null;
                IBinder _arg0;
                String _arg1;
                String _arg02;
                boolean _result;
                boolean _result2;
                byte[] _result3;
                boolean _result4;
                switch (code) {
                    case 1:
                        data.enforceInterface(descriptor);
                        _arg0 = data.readStrongBinder();
                        _arg1 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        registerClient(_arg0, _arg1, _arg2, miui.bluetooth.ble.IBluetoothMiBleCallback.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        return true;
                    case 2:
                        data.enforceInterface(descriptor);
                        _arg0 = data.readStrongBinder();
                        _arg1 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        unregisterClient(_arg0, _arg1, _arg2);
                        reply.writeNoException();
                        return true;
                    case 3:
                        data.enforceInterface(descriptor);
                        boolean _result5 = isConnected(data.readString());
                        reply.writeNoException();
                        reply.writeInt(_result5);
                        return true;
                    case 4:
                        data.enforceInterface(descriptor);
                        _arg02 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        connect(_arg02, _arg2);
                        reply.writeNoException();
                        return true;
                    case 5:
                        data.enforceInterface(descriptor);
                        _arg02 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        disconnect(_arg02, _arg2);
                        reply.writeNoException();
                        return true;
                    case 6:
                        data.enforceInterface(descriptor);
                        List<BluetoothDevice> _result6 = getConnectedDevices();
                        reply.writeNoException();
                        reply.writeTypedList(_result6);
                        return true;
                    case 7:
                        data.enforceInterface(descriptor);
                        _arg02 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        int _result7 = getRssi(_arg02, _arg2);
                        reply.writeNoException();
                        reply.writeInt(_result7);
                        return true;
                    case 8:
                        data.enforceInterface(descriptor);
                        _result = supportProperty(data.readString(), data.readInt());
                        reply.writeNoException();
                        reply.writeInt(_result);
                        return true;
                    case 9:
                        data.enforceInterface(descriptor);
                        _arg02 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        _result2 = registerPropertyCallback(_arg02, _arg2, data.readInt(), miui.bluetooth.ble.IBluetoothMiBlePropertyCallback.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        reply.writeInt(_result2);
                        return true;
                    case 10:
                        data.enforceInterface(descriptor);
                        _arg02 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        _result2 = unregisterPropertyCallback(_arg02, _arg2, data.readInt(), miui.bluetooth.ble.IBluetoothMiBlePropertyCallback.Stub.asInterface(data.readStrongBinder()));
                        reply.writeNoException();
                        reply.writeInt(_result2);
                        return true;
                    case 11:
                        data.enforceInterface(descriptor);
                        _arg02 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        _result2 = setProperty(_arg02, _arg2, data.readInt(), data.createByteArray());
                        reply.writeNoException();
                        reply.writeInt(_result2);
                        return true;
                    case 12:
                        data.enforceInterface(descriptor);
                        _arg02 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        _result3 = getProperty(_arg02, _arg2, data.readInt());
                        reply.writeNoException();
                        reply.writeByteArray(_result3);
                        return true;
                    case 13:
                        data.enforceInterface(descriptor);
                        _arg02 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        _result4 = authorize(_arg02, _arg2, data.readString());
                        reply.writeNoException();
                        reply.writeInt(_result4);
                        return true;
                    case 14:
                        data.enforceInterface(descriptor);
                        _arg02 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        _result4 = setRssiThreshold(_arg02, _arg2, data.readInt());
                        reply.writeNoException();
                        reply.writeInt(_result4);
                        return true;
                    case 15:
                        data.enforceInterface(descriptor);
                        _arg02 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        _result = authenticate(_arg02, _arg2);
                        reply.writeNoException();
                        reply.writeInt(_result);
                        return true;
                    case 16:
                        data.enforceInterface(descriptor);
                        _arg02 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        _result4 = setEncryptionKey(_arg02, _arg2, data.createByteArray());
                        reply.writeNoException();
                        reply.writeInt(_result4);
                        return true;
                    case 17:
                        data.enforceInterface(descriptor);
                        _arg02 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = (ParcelUuid) ParcelUuid.CREATOR.createFromParcel(data);
                        }
                        _result3 = encrypt(_arg02, _arg2, data.createByteArray());
                        reply.writeNoException();
                        reply.writeByteArray(_result3);
                        return true;
                    case 18:
                        data.enforceInterface(descriptor);
                        int _result8 = getServiceVersion();
                        reply.writeNoException();
                        reply.writeInt(_result8);
                        return true;
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            }
            reply.writeString(descriptor);
            return true;
        }
    }

    boolean authenticate(String str, ParcelUuid parcelUuid) throws RemoteException;

    boolean authorize(String str, ParcelUuid parcelUuid, String str2) throws RemoteException;

    void connect(String str, ParcelUuid parcelUuid) throws RemoteException;

    void disconnect(String str, ParcelUuid parcelUuid) throws RemoteException;

    byte[] encrypt(String str, ParcelUuid parcelUuid, byte[] bArr) throws RemoteException;

    List<BluetoothDevice> getConnectedDevices() throws RemoteException;

    byte[] getProperty(String str, ParcelUuid parcelUuid, int i) throws RemoteException;

    int getRssi(String str, ParcelUuid parcelUuid) throws RemoteException;

    int getServiceVersion() throws RemoteException;

    boolean isConnected(String str) throws RemoteException;

    void registerClient(IBinder iBinder, String str, ParcelUuid parcelUuid, IBluetoothMiBleCallback iBluetoothMiBleCallback) throws RemoteException;

    boolean registerPropertyCallback(String str, ParcelUuid parcelUuid, int i, IBluetoothMiBlePropertyCallback iBluetoothMiBlePropertyCallback) throws RemoteException;

    boolean setEncryptionKey(String str, ParcelUuid parcelUuid, byte[] bArr) throws RemoteException;

    boolean setProperty(String str, ParcelUuid parcelUuid, int i, byte[] bArr) throws RemoteException;

    boolean setRssiThreshold(String str, ParcelUuid parcelUuid, int i) throws RemoteException;

    boolean supportProperty(String str, int i) throws RemoteException;

    void unregisterClient(IBinder iBinder, String str, ParcelUuid parcelUuid) throws RemoteException;

    boolean unregisterPropertyCallback(String str, ParcelUuid parcelUuid, int i, IBluetoothMiBlePropertyCallback iBluetoothMiBlePropertyCallback) throws RemoteException;
}
